#Important this assignment was done in PYLAB
#NOT MATLAB

from pylab import *
from scipy.signal import *

#Compute dBs
def db(val):
	return 20*log10(val)

#Draw the specifications for a low pass
def draw_lp_specs(freqs, wp, ws, gpass_max, gpass_min, gstop):
	plot(freqs, [gpass_max for i in range(size(freqs))])
	plot(freqs, [gpass_min for i in range(size(freqs))])
	plot(freqs, [gstop for i in range(size(freqs))])
	plot([wp for i in range(size(freqs))], [2*gpass_max/size(freqs)*i for i in range(size(freqs))])
	plot([ws for i in range(size(freqs))], [2*gpass_max/size(freqs)*i for i in range(size(freqs))])

#Draw the specifications for a band pass
def draw_bp_specs(freqs, ws1, wp1, wp2, ws2, gpass_max, gpass_min, gstop):
	plot(freqs, [gpass_max for i in range(size(freqs))])
	plot(freqs, [gpass_min for i in range(size(freqs))])
	plot(freqs, [gstop for i in range(size(freqs))])
	plot([ws1 for i in range(size(freqs))], [2*gpass_max/size(freqs)*i for i in range(size(freqs))])
	plot([wp1 for i in range(size(freqs))], [2*gpass_max/size(freqs)*i for i in range(size(freqs))])
	plot([wp2 for i in range(size(freqs))], [2*gpass_max/size(freqs)*i for i in range(size(freqs))])
	plot([ws2 for i in range(size(freqs))], [2*gpass_max/size(freqs)*i for i in range(size(freqs))])

def Q3():
	kaiser_param = kaiserord(db(0.05), 0.05)
	print "The M and beta values for the window are"
	print kaiser_param
	print "Thus the minimum length is", kaiser_param[0]+1
	print "And the delay of the filter is", kaiser_param[0]

	taps = firwin(kaiser_param[0]+1, [0.0625, 0.8375], window=('kaiser', kaiser_param[1]), pass_zero=False)
	print taps

	resp = fft(taps, 1000)

	title("Kaiser Window, FIR Bandpass filter")
	xlabel("z")
	ylabel("|Hda(z)|")
	plot([8000.0/size(resp)*i for i in range(size(resp))], abs(array(resp)))
	draw_bp_specs([8000.0/size(resp)*i for i in range(size(resp))], 200, 300, 3200, 3400, 1.05, 0.95, 0.05)
	grid()
	show()

def Q4():
	M = 64 #can go -6
	print "Inital Parks-McClellan M estimate", M

	taps = remez(int(M), [0, 0.050000000000000003, 0.074999999999999997, 0.82499999999999996, 0.84999999999999998, 1], [0, 1, 1], [1/0.01, 1/0.05, 1/0.01], 2, 'hilbert')

	resp = fft(taps, 1000)

	print taps, len(taps)

	title("Parks-McClellan/Remez Exchange, FIR Bandpass filter, Initial Order Estimate")
	xlabel("z")
	ylabel("|Hda(z)|")
	plot([8000.0/size(resp)*i for i in range(size(resp))], db(abs(array(resp))))
	draw_bp_specs([8000.0/size(resp)*i for i in range(size(resp))], 200, 300, 3200, 3400, 1.05, 0.95, 0.05)
	grid()
	show()

	# print "Trial and error minimum value", M-6

	# taps = remez(int(M)-6, [0, 0.35, 0.4, 0.6, 0.65, 1], [0, 1, 0], [1.0/0.02, 1.0/0.05, 1.0/0.02], 2, 'bandpass')

	# resp = fft(taps, 1000)

	# title("Parks-McClellan/Remez Exchange, FIR Bandpass filter, Trial and Error Minimum Order")
	# xlabel("z")
	# ylabel("|Hda(z)|")
	# plot([2.0/size(resp)*i for i in range(size(resp))], abs(array(resp)))
	# draw_bp_specs([2.0/size(resp)*i for i in range(size(resp))], 0.3, 0.4, 0.6, 0.65, 1.05, 0.95, 0.02)
	# grid()
	# show()

	# print "Thus the inital estimate was quite close to the correct value"


# Q2()
# Q3()
Q4()