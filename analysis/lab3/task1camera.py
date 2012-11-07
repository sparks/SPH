from pylab import *
import csv
import time

filters = []

#Load filters from CSV file
with open('filters.csv', 'rb') as file:
	reader = csv.reader(file)
	for row in reader:
		if row[0][0] != "#":
			tmpfilt = []
			for v in row:
				tmpfilt.append(float(v))
			filters.append(tmpfilt)

#Simple variance/power calculation
def variance(signal):
	avg = 0 
	for val in signal:
		avg += val
	avg = float(avg)/len(signal) #Find average value

	var = 0
	for val in signal:
		var += (val-avg)**2 #Standard variance equation

	var = float(var)/(len(signal)-1)

	return var

class AdaptiveFilter:
	def __init__(self, mu, L, h, useDynVar = False):
		self.useDynVar = useDynVar #Flag for dynamic variance 

		self.mu = float(mu)
		self.L = L

		self.w = array([0.0 for i in range(L)]) #initalize to zeros
		self.h = array(h) #H will hold the filter which is modeling the hybrid echo

		self.buff = array([0.0 for i in range(max(len(self.w), len(self.h)))])
		# We need a buffer for pas input value at least as long as the longest of w and h

		self.yh = 0 #The hybrid echo signal
		self.yw = 0 #The adaptive filter signal
		self.e = 0 #The error signal, e.g. the difference between yh and yw

	def __repr__(self):
		return "mu: %d L:%d %s" % (self.mu, self.L, self.w)

	def input(self, x):
		self.buff = append(self.buff, x)[1:] #append input

		#compute outputs
		self.yh = convolve(self.buff, self.h, 'valid')[-1]
		self.yw = convolve(self.buff, self.w, 'valid')[-1]

		#compute error
		self.e = self.yh-self.yw
		
	def inputgiven(self, x, y):
		#This is for testing if we have yh given
		self.buff = append(self.buff, x)[1:]

		self.yw = convolve(self.buff, self.w, 'valid')[-1]

		self.e = y-self.yw

	def grad_desc(self):
		#the LMS adaptation step

		if self.useDynVar:
			var = variance(self.buff) #we will correct based on variance


		for l in range(len(self.w)): #for each coefficent correct with the appropriate formual
			if self.useDynVar:
				self.w[l] += (self.mu/(self.L*var))*self.e*self.buff[len(self.buff)-l-1] #last value is n
			else:
				self.w[l] += self.mu*self.e*self.buff[len(self.buff)-l-1] #lastvalue is n				

	def error(self):
		return self.e

#peform on run of the adaptive filter with given parameters and return convergence time
def test_adaptive_filter(mu, L, h, dyn = False, amp = 1.0, plot = False):
	f = AdaptiveFilter(mu, L, h, dyn) #build filter
	max_iter = 2000 #max runtime
	# gauss_noise = [1 for i in range(max_iter)]
	gauss_noise = randn(max_iter)*amp #white noise, variable power
	stable_count = 0  
	e = []
	for i, g in enumerate(gauss_noise):
		#iterate over the algorithm
		f.input(g)
		e.append(f.error())
		f.grad_desc()

		#if the error falls below 1e-3 for more than 50 samples break
		if(f.error() < 1e-3):
			stable_count += 1
			if(stable_count > 50):
				max_iter = i-50
				break

		else:
			stable_count = 0

	#visualize
	if plot:
		plot(abs(array(e)))
		show()

	#return the convergence time and error values
	return (max_iter, f.w, e)

#Run a bins of tests for a range of mu values
def test_mu(mu, L, h, numsamples = 20, numavg = 5, dyn = False, amp = 1.0):
	r = [] #results array
	mus = [mu[0]+(mu[1]-mu[0])*i/numsamples for i in range(numsamples)] #compute mu ranges
	for i in range(numsamples): #Run numavg tests over numsamples points in the range of mu
		res = 0
		print "Computing mu=%s %s of %s" % (mus[i], i, numsamples)
		for j in range(numavg):
			res += test_adaptive_filter(mus[i], L, h, dyn, amp)[0]

		r = append(r, res/numavg)

	#plot results
	title("Convergence \n mu [%s, %s] L=%s" % (mu[0], mu[1], L), size=20)
	xlabel("mu", size=20)
	ylabel("Steps until |e[n]| < 0.001", size=20)
	grid()
	plot(mus, r, linewidth=2, label="Simulated Convergence")
	vlines(2.0/(L*amp*amp), 0, 2000, color='r', linewidth=2, label="Theoretical Limit")
	legend(loc=2)
	show()

#Run a bins of tests for a range of L values
def test_L(mu, L, h, numsamples = 20, numavg = 5, dyn = False):
	r = [] #results array
	Ls = [int(L[0]+(L[1]-L[0])*i/numsamples) for i in range(numsamples)] #compute L ranges
	for i in range(numsamples): #Run numavg tests over numsamples points in the range of L
		res = 0
		print "Computing L=%s %s of %s" % (Ls[i], i, numsamples)
		for j in range(numavg):
			res += test_adaptive_filter(mu, Ls[i], h, dyn)[0]

		r = append(r, res/numavg)

	#plot results
	title("Test L from %s to %s mu=%s" % (L[0], L[1], mu))
	xlabel("L value")
	ylabel("iterations till convergence")
	plot(Ls, r)
	show()

#Examine mu and L values for filter 0
filt_num = 0
test_mu([0.01, 0.2], len(filters[filt_num]), filters[filt_num])
test_L(0.07, [5, 50], filters[filt_num])
# mu range [0.03, 0.14]
# L range [11, 29]

#Examine mu and L values for filter 1
filt_num = 1
test_mu([0.01, 0.03],len(filters[filt_num]), filters[filt_num])
test_L(0.01, [5, 50], filters[filt_num])
# mu range [0.01, 0.03]

#Examine mu and L values for filter 3
filt_num = 3
test_mu([0.01, 0.2],len(filters[filt_num]), filters[filt_num])
test_L(0.07, [5, 50], filters[filt_num])
# mu range [0.03, 0.14]
# L range [11, 29]

#Examine effects of signal power on mu range
filt_num = 0
test_mu([0.001, 0.05], len(filters[filt_num]), filters[filt_num], amp=2.0)

#Examine effects of underestimation of length
filt_num = 1
test_mu([0.01, 0.03],len(filters[filt_num])/2, filters[filt_num])

#Examine effect of overestimation of length
filt_num = 0
test_mu([0.01/2, 0.2/2], len(filters[filt_num])*2, filters[filt_num])
