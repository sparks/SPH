from pylab import *
import scipy.io.wavfile as wave
import csv

filters = []

with open('filters.csv', 'rb') as file:
	reader = csv.reader(file)
	for row in reader:
		if row[0][0] != "#":
			tmpfilt = []
			for v in row:
				tmpfilt.append(float(v))
			filters.append(tmpfilt)

def test_filter(n):
	audio = wave.read("signal-echo.wav")

	audio[1][:,0] = convolve(audio[1][:,0], filters[n], 'same')
	audio[1][:,1] = convolve(audio[1][:,0], filters[n], 'same')

	wave.write("signal-echo-out.wav", audio[0], audio[1])

class AdaptiveFilter:
	def __init__(self, mu, L, h):
		self.mu = float(mu);
		self.L = L

		self.w = array([0.0 for i in range(L)])
		self.h = array(h)

		self.buff = array([0.0 for i in range(max(len(self.w), len(self.h)))])

		self.yh = 0
		self.yw = 0
		self.e = 0

	def __repr__(self):
		return "mu: %d L:%d %s" % (self.mu, self.L, self.w)

	def input(self, x):
		self.buff = append(self.buff, x)[1:]

		self.yh = convolve(self.buff, self.h)[-1]
		self.yw = convolve(self.buff, self.w)[-1]

		self.e = self.yh-self.yw

	def grad_desc(self):
		for l in range(len(self.w)):
			self.w[l] += self.mu*self.e*self.buff[len(self.buff)-l-1] #last value is n

	def error(self):
		return self.e


def test_adaptive_filter(mu, L, h):
	f = AdaptiveFilter(mu, L, h)
	max_iter = 1000
	# gauss_noise = [1 for i in range(max_iter)]
	gauss_noise = randn(max_iter)
	stable_count = 0
	for i, g in enumerate(gauss_noise):
		f.input(g)	
		f.grad_desc()

		if(f.error() == 0):
			stable_count += 1
			if(stable_count > 100):
				max_iter = i-100
				break

		else:
			stable_count = 0
	return (max_iter, f.w)

def test_mu(L, h):
	r = []
	for i in range(20):
		res = 0
		print "tick"
		for j in range(20):
			res += test_adaptive_filter(0.1*i, L, h)[0]

		r = append(r, res/20.0)

	plot(r)
	show()

def test_L(mu, h):
	filt_num = 0
	r = []
	for i in range(100):
		res = 0
		print "tick"
		for j in range(20):
			res += test_adaptive_filter(mu, (i+1), h)[0]

		r = append(r, res/20.0)

	plot(r)
	show()

filt_num = 0
test_mu(len(filters[filt_num])/2, filters[filt_num])
# test_L(0.65, filters[filt_num])
print len(filters[filt_num])