from pylab import *
from receiver import Receiver
from levinsondurbin import *
import scipy.io.wavfile as wave

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

def classify(x, showplot=False):
	amdfrange = (20, 160)
	amdf = AMDF(x, amdfrange[0], amdfrange[1])
	gain = rmsgain(x)
	amdf = array(amdf)/gain
	amdfgain = rmsgain(amdf)
	found = []
	
	lowest = min(amdf)
	highest = max(amdf)

	classification = (False, [], gain)

	if highest-lowest > 0.85:
		for i, v in enumerate(amdf):
			if v < lowest+abs(amdfgain-lowest)*0.3:
				found.append(i)

		tonalcenters = [0]
		tonalcount = 0
		for i, f in enumerate(found):
			tonalcenters[-1] += f+amdfrange[0]
			tonalcount += 1
			if i < len(found)-1:
				if found[i+1]-found[i] > 2:
					tonalcenters[-1] = tonalcenters[-1]/float(tonalcount)
					tonalcount = 0
					tonalcenters.append(0)
		if tonalcount == 0:
			tonalcenters = tonalcenters[:-1]
		else:
			tonalcenters[-1] = tonalcenters[-1]/float(tonalcount)

		classification = (True, tonalcenters, gain)

	if showplot == True:
		print classification
		print max(amdf)-min(amdf)

		subplot(2, 1, 1)
		title("AMDF")
		plot([amdfrange[0]+i for i in range(len(amdf))], amdf)
		if classification[0]:
			for t in classification[1]:
				plot(t, amdf[int(t)-amdfrange[0]], 'o', color="pink", markersize=20)
			for f in found:
				plot([f+amdfrange[0]], [amdf[f]], 'yo')
			plot(amdf.tolist().index(highest)+amdfrange[0], highest, 'go')
			plot(amdf.tolist().index(lowest)+amdfrange[0], lowest, 'ro')

		subplot(2, 1, 2)
		title("Signal")
		plot(x)

		show()

	return classification

def rmsgain(x):
	gain = 0
	for v in abs(x):
		gain += v
	gain = gain/len(x)
	return gain

def testblockLPC(signal, blocksize, numcoef, ideal=False, lookback = True, showplot=True):
	#Set up receiver
	recv = Receiver(lookback = lookback)
	e_complete = zeros(0)

	#Process blocks
	for i in range(len(signal)/blocksize):
		#find LPC coefficients
		a = levinson(signal[i*blocksize:(i+1)*blocksize], numcoef, False)
		
		#build error
		e = zeros(blocksize)

		if ideal == True:
			if i == 0 or recv.lookback == False:
				e = idealError(signal[i*blocksize:(i+1)*blocksize], a, zeros(len(a)))		
			else:
				e = idealError(signal[i*blocksize:(i+1)*blocksize], a, signal[i*blocksize-len(a):i*blocksize])
		else:
			classification = classify(signal[i*blocksize:(i+1)*blocksize])
			classification[1].sort()

			if classification[0]:
				for i in range(len(e)):
					for p in classification[1]:
						if i%p == 0:
							e[i] = 1
					# if i%classification[1][0] == 0:
					# 	e[i] = 1

			else:
				e = randn(len(e))

			e = e*classification[2]

		e_complete = append(e_complete, e)

		#Xmit and rebuild
		recv.receiveIdeal(e, a)

	#complete the transmission
	recv.hangUp()

	if showplot == True:
		#Plot results
		subplot(2, 1, 1)
		plot(signal, label="original")
		legend()
		plot(e_complete, label="error")
		subplot(2, 1, 2)
		plot(recv.output, label="output")
		# ylim([-5, 5])
		legend()
		show()

	return recv.output

# blocksize = 180
# t = array([i for i in range(blocksize*3)])
# # signal = sin(2*pi/35*t+20)+0.1*randn(len(t))
# signal = sin(2*pi/35*t+20)/3+sin(2*pi/27*t-8)/3+sin(2*pi/45*t)/3+0.1*randn(len(t))
# signal = append(signal, 0.1*randn(len(t)))
# t = append(t, array([i for i in range(blocksize*3)]))

# # t = array([i for i in range(1800)])
# # signal = sin(t * 0.01) + 0.75 * sin(t * 0.03) + 0.5 * sin(t * 0.05) + 0.25 * sin(t * 0.11);

# testblockLPC(signal, blocksize, 10)

blocksize = 360
chunk = 8000*4/blocksize*blocksize
numcoef = 30
audio = wave.read("signal-echo.wav")
signal = audio[1][465000:465000+chunk,0]/32767.0

rebuilt = testblockLPC(signal, blocksize, numcoef, ideal=False, showplot=False)

audio_out = (8000, array([[0, 0] for i in rebuilt], dtype=int16))
audio_out[1][:,0] = array([int(r*32767.0) for r in rebuilt])
audio_out[1][:,1] = array([int(r*32767.0) for r in rebuilt])

# audio_out[1][:,1] = array([int(s*32767.0) for s in signal])

wave.write("rebuilt.wav", audio_out[0], audio_out[1])
