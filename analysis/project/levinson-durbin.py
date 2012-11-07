#!/bin/python

from pylab import *

def autocorrelate(x, k):
	if k >= len(x): print "autocorrelate error k > len(x)"
	return correlate(x[:-k], x[k:], 'valid')[0]


