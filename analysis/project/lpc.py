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
	print len(x)/p
	if len(x)/p <= 1:
		print "invalid p value in AMDF"
		return

	amdf = 0.0
	for i in range(1, len(x)/p):
		amdf += abs(x[i*p]-x[(i-1)*p])

	amdf = amdf/(len(x)/p-1)
	return amdf

def AMDFTest():
	amdf = zeros(60)
	t = array([i for i in range(800)])
	signal = sin(2*pi/24.5*t)
	for p in range(1, len(amdf)):
		amdf[p] = AMDF(signal, p)
	plot(amdf)
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