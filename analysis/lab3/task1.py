from pylab import *
import scipy.io.wavfile as wave
import csv
import time

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
	audio[1][:,1] = audio[1][:,0]

	wave.write("signal-echo-out.wav", audio[0], audio[1])

def variance(signal):
	avg = 0
	for val in signal:
		avg += val
	avg = float(avg)/len(signal)

	var = 0
	for val in signal:
		var += (val-avg)**2

	var = float(var)/(len(signal)-1)

	return var

class AdaptiveFilter:
	def __init__(self, mu, L, h):
		self.mu = float(mu)
		self.L = L

		self.w = array([0.0 for i in range(L)])
		# self.w = randn(L)
		self.h = array(h)

		self.buff = array([0.0 for i in range(max(len(self.w), len(self.h)))])

		self.yh = 0
		self.yw = 0
		self.e = 0
		self.tot = 0
		self.count = 0

	def __repr__(self):
		return "mu: %d L:%d %s" % (self.mu, self.L, self.w)

	def input(self, x):
		self.buff = append(self.buff, x)[1:]

		self.yh1 = 0
		self.yw1 = 0

		# for i in range(len(self.buff)):
		# 	if i < len(self.h):
		# 		self.yh1 += self.buff[len(self.buff)-1-i]*self.h[i]

		# 	if i < len(self.w):
		# 		self.yw1 += self.buff[len(self.buff)-1-i]*self.w[i]

		self.yh2 = convolve(self.buff, self.h, 'valid')[-1]
		self.yw2 = convolve(self.buff, self.w, 'valid')[-1]

		# if (self.yh2 != self.yh1) or (self.yw1 != self.yw2):
		# 	print self.yh1, self.yh2
		# 	print self.yw1, self.yw2
		# 	print "--"

		self.yh = self.yh2
		self.yw = self.yw2

		self.e = self.yh-self.yw
		
	def inputgiven(self, x, y):
		self.buff = append(self.buff, x)[1:]

		self.yw = convolve(self.buff, self.w, 'valid')[-1]

		self.e = y-self.yw

	def grad_desc(self):
		var = variance(self.buff)

		# self.tot += self.mu/var/self.L
		# self.count += 1

		for l in range(len(self.w)):
			# if l == 0:
				# print self.w[l], self.e, self.buff[len(self.buff)-1-l]
			# self.w[l] += self.mu*self.e*self.buff[len(self.buff)-l-1] #lastvalue is n
			self.w[l] += (self.mu/(self.L*var))*self.e*self.buff[len(self.buff)-l-1] #last value is n
			# if l == 0:
				# print self.w[l]

	def error(self):
		return self.e

def audio_adaptive(n):
	audio = wave.read("signal-echo.wav")

	cleansignal = audio[1][:,0]
	cleansignal = cleansignal

	cleansignal = cleansignal[21*8000: 24*8000-1000]/32768.0
	# cleansignal = randn(1000)/1000

	start_t = time.clock()
	e = []

	f = AdaptiveFilter(0.1, int(len(filters[n])*2), filters[n])
	print int(len(filters[n])*1.5)

	for i, v in enumerate(cleansignal):
		f.input(v)
		e.append([f.error(), f.error()])
		f.grad_desc()

	e = array(e)

	stop_t = time.clock()

	print e[-10:,0]
	# subplot(2, 1, 1)
	plot(e[:,0], label="e")
	# subplot(2, 1, 2)
	plot(cleansignal, label="clean")
	legend()
	show()

	# print float(f.tot)/f.count
	print f.w

	wave.write("signal-echo-out.wav", audio[0], e)

	print "---"
	print stop_t-start_t

audio_adaptive(1)

def audio_adaptive_given(n):
	audio = wave.read("signal-echo.wav")

	cleansignal = audio[1][:,0]
	echosignal = audio[1][:,1]

	cleansignal = cleansignal[21*8000: 24*8000]/32768.0
	echosignal = echosignal[21*8000: 24*8000]/32768.0

	start_t = time.clock()
	e = []

	f = AdaptiveFilter(0.08, int(len(filters[n])*1.5), filters[n])

	for i, v in enumerate(cleansignal):
		f.inputgiven(v, echosignal[i])
		e.append([f.error(), f.error()])
		f.grad_desc()

	e = array(e)

	stop_t = time.clock()

	print e[-10:,0]
	# subplot(2, 1, 1)
	plot(e[:,0], label="e")
	# subplot(2, 1, 2)
	plot(cleansignal, label="clean")
	legend()
	show()

	# print float(f.tot)/f.count

	wave.write("signal-echo-out.wav", audio[0], e)

	print "---"
	print stop_t-start_t


def test_adaptive_filter(mu, L, h):
	f = AdaptiveFilter(mu, L, h)
	max_iter = 2000
	# gauss_noise = [1 for i in range(max_iter)]
	gauss_noise = randn(max_iter)
	stable_count = 0
	e = []
	for i, g in enumerate(gauss_noise):
		f.input(g)
		e.append(f.error())
		f.grad_desc()

		if(f.error() < 0.001):
			stable_count += 1
			if(stable_count > 20):
				max_iter = i-20
				break

		else:
			stable_count = 0
	return (max_iter, f.w, e)

def test_mu(mu, L, h, numsamples = 20, numavg = 10):
	r = []	
	mus = [mu[0]+(mu[1]-mu[0])*i/numsamples for i in range(numsamples)]

	for i in range(numsamples):
		res = 0
		print "Computing mu=%s %s of %s" % (mus[i], i, numsamples)
		for j in range(numavg):
			res += test_adaptive_filter(mus[i], L, h)[0]

		r = append(r, res/numavg)

	title("Test mu from %s to %s L=%s" % (mu[0], mu[1], L))
	xlabel("mu value")
	ylabel("iterations till convergence")
	plot(mus, r)
	show()

def test_L(mu, L, h, numsamples = 20, numavg = 10):
	r = []
	Ls = [int(L[0]+(L[1]-L[0])*i/numsamples) for i in range(numsamples)]

	for i in range(numsamples):
		res = 0
		print "Computing L=%s %s of %s" % (Ls[i], i, numsamples)
		for j in range(numavg):
			res += test_adaptive_filter(mu, Ls[i], h)[0]

		r = append(r, res/numavg)

	title("Test L from %s to %s mu=%s" % (L[0], L[1], mu))
	xlabel("L value")
	ylabel("iterations till convergence")
	plot(Ls, r)
	show()

# filt_num = 0
# res = test_adaptive_filter(0.1, 50, filters[filt_num])
# print res[0]

# filt_num = 0
# test_mu([0.01, 0.14],len(filters[filt_num]), filters[filt_num])
# test_L(0.07, [5, 50], filters[filt_num])
# mu range [0.03, 0.14]
# L range [11, 29]

# filt_num = 1
# test_mu([0.01, 0.03],len(filters[filt_num]), filters[filt_num], 10, 4)
# test_L(0.07, [5, 50], filters[filt_num])
# mu range [0.01, 0.03]

# filt_num = 2
# test_mu([0.01, 0.2],len(filters[filt_num]), filters[filt_num])
# test_L(0.07, [5, 50], filters[filt_num])
# mu range [0.03, 0.14]
# L range [11, 29]

# filt_num = 3
# test_mu([0.01, 0.2],len(filters[filt_num]), filters[filt_num])
# test_L(0.07, [5, 50], filters[filt_num])
# mu range [0.03, 0.14]
# L range [11, 29]

