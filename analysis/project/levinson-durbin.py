#!/bin/python

from pylab import *
import numpy as np
import scipy as sp
import scipy.signal as sig

from receiver import Receiver

def lpc_ref(signal, order):
	"""Compute the Linear Prediction Coefficients.
	Return the order + 1 LPC coefficients for the signal. c = lpc(x, k) will
	find the k+1 coefficients of a k order linear filter:
	  xp[n] = -c[1] * x[n-2] - ... - c[k-1] * x[n-k-1]
	Such as the sum of the squared-error e[i] = xp[i] - x[i] is minimized.
	Parameters
	----------
	signal: array_like
	    input signal
	order : int
	    LPC order (the output will have order + 1 items)
	Note
	----
	This is just for reference, as it is using the direct inversion of the
	toeplitz matrix, which is really slow"""
	if signal.ndim > 1:
		raise ValueError("Array of rank > 1 not supported yet")
	if order > signal.size:
		raise ValueError("Input signal must have a lenght >= lpc order")
	if order > 0:
		p = order + 1
		r = np.zeros(p, signal.dtype)
		# Number of non zero values in autocorrelation one needs for p LPC
		# coefficients
		nx = np.min([p, signal.size])
		x = np.correlate(signal, signal, 'full')
		r[:nx] = x[signal.size-1:signal.size+order]
		phi = np.dot(sp.linalg.inv(sp.linalg.toeplitz(r[:-1])), -r[1:])
		return np.concatenate(([1.], phi))
	else:
		return np.ones(1, dtype = signal.dtype)

def autocorrelate(x, k):
	if k >= len(x): print "autocorrelate error: k > len(x)"
	if k < 0: k = -k #Assume real X
	if k == 0:
		return correlate(x, x, 'valid')[0]
	else:
		return correlate(x[:-k], x[k:], 'valid')[0]

def levinson(x, p):
	k = 0
	a = zeros([2, p+1])
	r = zeros(p+1)

	for i in range(p+1):
		r[i] = autocorrelate(x, i)

	e = r[0]

	for i in range(1, p+1):
		k = r[i]
		for j in range(1, i):
			k -= a[0, j]*r[i-j]

		k = k/e
		a[1, i] = k

		for j in range(1, i):
			a[1, j] = a[0, j] - k*a[0][i-j]

		e = (1 - k*k)*e

		a[0] = a[1]
		a[1] = zeros(p+1)

	a[0][0] = 1
	return a[0]

def error(x, a):
	pbuf = zeros(len(a))
	error = zeros(len(x))
	for i in range(len(x)):
		pbuf[:-1] = pbuf[1:]
		pbuf[-1] = x[i]
		approx = 0
		for j in range(1, len(a)):
			approx += a[j]*pbuf[-1-j]
		error[i] = x[i]-approx

	return error


t = array([i for i in range(100)])
signal = sin(2*pi/20*t)
# signal = randn(100)
# signal = array([1.0,2.0,3.0,4.0,5.0,6.0])
aref = lpc_ref(signal, 8)
a = levinson(signal, 8)
print a
print aref
e = error(signal, a)

#test
recv = Receiver()
recv.receiveIdeal(e, a)
recv.hangUp()

#plot(signal, label="original")
plot(e, label="error")
plot(recv.output, label="output")
legend()
show()
