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

def AMDF(x, p):
	if p >= len(x):
		print "invalid p value in AMDF"
		return

	amdf = 0.0

	for i in range(p, len(x)):
		amdf += abs(x[i]-x[i-p])

	amdf = amdf/(len(x)-p)
	return amdf

def AMDFTest():
	amdf = zeros(160-20)
	t = array([i for i in range(800)])
	signal = sin(2*pi/51*t)+sin(2*pi/54*t)+sin(2*pi/100*t)+sin(2*pi/25*t)+randn(len(t))
	for p in range(20, 160):
		amdf[p-20] = AMDF(signal, p)

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

		print "tonal with period:", tonalcenter
	else:
		print "white nosie"

	subplot(2, 1, 1)
	plot(abs(fft(signal)))
	subplot(2, 1 ,2)
	plot([i+20 for i in range(len(amdf))], amdf)
	plot(tonalcenter, amdf[int(tonalcenter)-20], 'o', color="pink", markersize=20, label="Tonal Center")
	for f in found:
		plot([f+20], [amdf[f]], 'yo')
	plot(amdf.tolist().index(highest)+20, highest, 'go', label="Max Val")
	plot(amdf.tolist().index(lowest)+20, lowest, 'ro', label="Min Val")
	legend(loc = 4)
	show()

AMDFTest()

def testblockLPC():
	#build signal
	blocksize = 180
	numcoef = 4
	t = array([i for i in range(blocksize*3)])
	signal = sin(2*pi/20*t)+0.1*randn(len(t))

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
		e_white = randn(len(e_ideal))
		e_imp = zeros(len(e_ideal))

		for i in range(len(e_imp)):
			if i%20 == 0:
				e_imp[i] = 1

		e = e_ideal
		e_complete = append(e_complete, e)

		#Xmit and rebuild
		recv.receiveIdeal(e, a)

	#complete the transmission
	recv.hangUp()

	#Plot results
	plot(signal, label="original")
	# plot(e_complete, label="error")
	plot(recv.output/max(abs(array(recv.output)))*max(abs(array(signal))), label="output") #Scale to the same range
	# ylim([-5, 5])
	legend()
	show()