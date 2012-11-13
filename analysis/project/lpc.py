from pylab import *
from receiver import Receiver
from levinsondurbin import *

# Questions
# Autocorrelation of standard length
# Boundary concerns for discontinuties
# Boundary concern for reconstruction via a via stepan's implementations
# Questions about L-D recursion equations and sign of output
# Gain computation
# Voiced/Unvoiced detection
# Transition voiced/Unvoiced
# Gain estimation
# Fundamental frequency detection and reproduction

def idealError(x, a, pbuf):
	pbuf = pbuf.copy()
	error = zeros(len(x))
	for i in range(len(x)):
		pbuf[:-1] = pbuf[1:]
		pbuf[-1] = x[i]
		approx = 0
		for j in range(1, len(a)):
			approx += a[j]*pbuf[-1-j]
		error[i] = x[i]-approx

	return error

def AMDF(x, min, max):
	if min <= 0:
		min = 1
	if max > len(x):
		max = len(x)

	amdf = zeros(max-min)

	for p in range(min, max):
		amdf[p-min] = 0.0
		for i in range(p, len(x)):
			amdf[p-min] += abs(x[i]-x[i-p])
		amdf[p-min] = amdf[p-min]/(len(x)-p)

	return amdf

def classify(x):
	amdf = AMDF(x, 20, 160)
	found = []
	
	lowest = min(amdf)
	highest = max(amdf)

	if highest-lowest > 0.3:
		for i, v in enumerate(amdf):
			if v < lowest+0.05:
				found.append(i)

		tonalcenter = 0
		tonalcount = 0
		for i, f in enumerate(found):
			tonalcenter += f+20
			tonalcount += 1
			if i < len(found)-1:
				if found[i+1]-found[i] > 2:
					break

		tonalcenter = tonalcenter/float(tonalcount)

		return (True, tonalcenter)
	else:
		return (False, -1)

def rmsgain(x):
	gain = 0
	for v in abs(x):
		gain += v
	gain = gain/len(x)
	return gain

def AMDFTest():
	t = array([i for i in range(800)])
	signal = sin(2*pi/51*t)+sin(2*pi/54*t)+sin(2*pi/100*t)+sin(2*pi/25*t)+randn(len(t))

	classification = classify(signal)
	print classification

	amdf = AMDF(signal, 20, 160)
	found = []
	
	lowest = min(amdf)
	highest = max(amdf)

	if highest-lowest > 0.3:
		for i, v in enumerate(amdf):
			if v < lowest+0.05:
				found.append(i)

		tonalcenter = 0
		tonalcount = 0
		for i, f in enumerate(found):
			tonalcenter += f+20
			tonalcount += 1
			if i < len(found)-1:
				if found[i+1]-found[i] > 2:
					break

		tonalcenter = tonalcenter/float(tonalcount)

	subplot(2, 1, 1)
	plot(abs(fft(signal)))
	subplot(2, 1 ,2)
	plot([i+20 for i in range(len(amdf))], amdf)
	if classification[0]:
		plot(tonalcenter, amdf[int(tonalcenter)-20], 'o', color="pink", markersize=20, label="Tonal Center")
	for f in found:
		plot([f+20], [amdf[f]], 'yo')
	plot(amdf.tolist().index(highest)+20, highest, 'go', label="Max Val")
	plot(amdf.tolist().index(lowest)+20, lowest, 'ro', label="Min Val")
	legend(loc = 4)
	show()

def testblockLPC():
	#build signal
	blocksize = 180
	numcoef = 10
	t = array([i for i in range(blocksize*3)])
	signal = sin(2*pi/35*t+20)+0.1*randn(len(t))
	signal = sin(2*pi/35*t+20)/3+sin(2*pi/27*t-8)/3+sin(2*pi/45*t)/3+0.1*randn(len(t))
	signal = append(signal, 0.1*randn(len(t)))
	t = append(t, array([i for i in range(blocksize*3)]))

	# t = array([i for i in range(1800)])
	# signal = sin(t * 0.01) + 0.75 * sin(t * 0.03) + 0.5 * sin(t * 0.05) + 0.25 * sin(t * 0.11);

	#Set up receiver
	recv = Receiver(lookback = True)
	e_complete = zeros(0)

	#Process blocks
	for i in range(len(t)/blocksize):
		#find LPC coefficients
		a = levinson(signal[i*blocksize:(i+1)*blocksize], numcoef, False)
		
		#build error
		if i == 0 or recv.lookback == False:
			e_ideal = idealError(signal[i*blocksize:(i+1)*blocksize], a, zeros(len(a)))		
		else:
			e_ideal = idealError(signal[i*blocksize:(i+1)*blocksize], a, signal[i*blocksize-len(a):i*blocksize])
		e = e_ideal

		classification = classify(signal[i*blocksize:(i+1)*blocksize])
		gain = rmsgain(signal[i*blocksize:(i+1)*blocksize])
		print classification
		print gain

		e_white = randn(len(e_ideal))
		e_white = e_white*gain
		
		e_imp = zeros(len(e_ideal))
		if classification[0]:
			for i in range(len(e_imp)):
				if i%classification[1] == 0:
					e_imp[i] = 1
		e_imp = e_imp*gain

		if classification[0]:
			e = e_imp
		else:
			e = e_white

		e_complete = append(e_complete, e)

		#Xmit and rebuild
		recv.receiveIdeal(e, a)

	#complete the transmission
	recv.hangUp()

	#Plot results
	subplot(2, 1, 1)
	plot(signal, label="original")
	legend()
	# plot(e_complete, label="error")
	subplot(2, 1, 2)
	plot(recv.output/max(abs(array(recv.output)))*max(abs(array(signal))), label="output") #Scale to the same range
	# ylim([-5, 5])
	legend()
	show()

testblockLPC()