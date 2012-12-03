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

	gain = rmsgain(x)
	amdf = AMDF(x, amdfrange[0], amdfrange[1])/gain
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
			plot([amdfrange[0]+i for i in range(len(amdf))], [amdfgain for i in range(len(amdf))])

		subplot(2, 1, 2)
		title("Signal")
		plot(x)

		# subplot(2, 2, 3)
		# title("AC")
		# plot(acfun)
		
		# subplot(2, 2, 4)
		# title("AC AMDF")
		# plot([i+amdfrange[0] for i in range(len(acamdf))], acamdf)
	

		show()

	return classification

def rmsgain(x):
	gain = 0
	for v in abs(x):
		gain += v
	gain = gain/len(x)
	return gain

def testblockLPC(signal, blocksize, numcoef, ideal=False, compress=False, lookback = True, showplot=True):
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

			if compress == True:
				temp_e = compressError(e, 1)
				temp_e = shiftCompressedError(temp_e, 1)
				e = scaleRMS(e, temp_e)
		else:
			classification = classify(signal[i*blocksize:(i+1)*blocksize])
			classification[1].sort()

			if classification[0]:
				for i in range(len(e)):
					for p in classification[1]:
						if i%p == 0:
							e[i] = 1
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
		subplot(3, 1, 1)
		plot(signal, label="original")
		legend()
		subplot(3, 1, 2)
		plot(e_complete, label="error")
		legend()
		subplot(3, 1, 3)
		plot(recv.output, label="output")
		# ylim([-5, 5])
		legend()
		show()

	return recv.output

def compressError(idealError, bitdepth=8):
	if bitdepth > 16 or bitdepth < 1:
		print "compression bitdepth out of range"
		return idealError

	compressedError = []
	for e in idealError:
		compressedError.append( (int(e*32768) >> (16 - bitdepth)) & 0xff)

	return compressedError

def shiftCompressedError(compressedError, bitdepth=8):
	if bitdepth > 16 or bitdepth < 1:
		print "compression bitdepth out of range"
		return compressedError

	shiftedError = []
	for e in compressedError:
		shiftedError.append( float( (e << (16 - bitdepth))/32768.0)  )

	return shiftedError

def scaleRMS(rmsSource, rmsInput):
	rmsS = 0
	rmsI = 0
	output = []

	for i in rmsSource:
		rmsS += i**2
	rmsS = rmsS/len(rmsSource)
	rmsS = math.sqrt(rmsS)

	for i in rmsInput:
		rmsI += i**2
	rmsI = rmsI/len(rmsInput)
	rmsI = math.sqrt(rmsI)

	scale = rmsS/rmsI

	for i in rmsInput:
		output.append(i*scale)

	return output



# blocksize = 180
# numcoef = 10
# t = array([i for i in range(blocksize*3)])
# # signal = sin(2*pi/35*t+20)+0.1*randn(len(t))
# signal = sin(2*pi/35*t+20)/3+sin(2*pi/27*t-8)/3+sin(2*pi/45*t)/3+0.1*randn(len(t))
# signal = append(signal, 0.1*randn(len(t)))
# t = append(t, array([i for i in range(blocksize*3)]))

# # t = array([i for i in range(1800)])
# # signal = sin(t * 0.01) + 0.75 * sin(t * 0.03) + 0.5 * sin(t * 0.05) + 0.25 * sin(t * 0.11);

# testblockLPC(signal, blocksize, numcoef, ideal=True, compress=True)

# r1 = testblockLPC(signal, blocksize, 1, ideal=False, showplot=False)
# r3 = testblockLPC(signal, blocksize, 3, ideal=False, showplot=False)
# r6 = testblockLPC(signal, blocksize, 6, ideal=False, showplot=False)
# r10 = testblockLPC(signal, blocksize, 10, ideal=False, showplot=False)
# r20 = testblockLPC(signal, blocksize, 20, ideal=False, showplot=False)
# r30 = testblockLPC(signal, blocksize, 30, ideal=False, showplot=False)
# r40 = testblockLPC(signal, blocksize, 40, ideal=False, showplot=False)

# subplot(5, 1, 1)
# plot(r1, label="1 coefficient")
# legend()
# subplot(5, 1, 2)
# plot(r3, label="3 coefficients")
# legend()
# subplot(5, 1, 3)
# plot(r6, label="6 coefficients")
# legend()
# subplot(5, 1, 4)
# plot(r10, label="10 coefficients")
# legend()
# subplot(5, 1, 5)
# plot(signal, label="Input Signal")
# legend()
# show()


# subplot(5, 1, 1)
# plot(r10, label="10 coefficients")
# legend()
# subplot(5, 1, 2)
# plot(r20, label="20 coefficients")
# legend()
# subplot(5, 1, 3)
# plot(r30, label="30 coefficients")
# legend()
# subplot(5, 1, 4)
# plot(r40, label="40 coefficients")
# legend()
# subplot(5, 1, 5)
# plot(signal, label="Input Signal")
# legend()
# show()

blocksize = 180
offset = 465000
chunk = 8000*4/blocksize*blocksize
numcoef = 10
audio = wave.read("signal-echo.wav")
# signal = audio[1][:,0]/32767.0
signal = audio[1][offset:offset+chunk,0]/32767.0

rebuilt = testblockLPC(signal, blocksize, numcoef, ideal=True, compress=True ,showplot=False, lookback=True)

audio_out = (8000, array([[0, 0] for i in rebuilt], dtype=int16))
audio_out[1][:,0] = array([int(r*32767.0) for r in rebuilt])
audio_out[1][:,1] = array([int(r*32767.0) for r in rebuilt])

wave.write("rebuilt.wav", audio_out[0]*2, audio_out[1]*2)
