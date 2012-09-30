from pylab import *
from scipy.signal import *

#Compute dBs
def db(val):
	return 20*log10(val)

def printArray(val):
	string = "{"
	for v in val:
		string = string+str(v)+", "
	string = string[0:-2]
	string = string+"}"
	print string

def kaiserplot():
	kaiser_param = kaiserord(db(0.05), 0.05)

	taps = firwin(kaiser_param[0]+1, [0.0625, 0.8375], window=('kaiser', kaiser_param[1]), pass_zero=False)
	# printArray(taps)

	resp = fft(taps, 1000)

	title("Kaiser Window, FIR Bandpass filter")
	xlabel("Frequency (Hz)")
	ylabel("Gain (dB)")
	ylim([-60, 5])
	plot([8000.0/size(resp)*i for i in range(size(resp))], db(abs(array(resp))), linewidth=2.5)
	grid()

def remezplot(M, bhp):

	taps = remez(int(M), [0, 0.050000000000000003, 0.074999999999999997, 0.82499999999999996, 0.84999999999999998, 1], [0, 1, bhp], [1, 1, 1], 2, 'hilbert')
	# printArray(taps)	

	resp = fft(taps, 1000)

	title("Parks-McClellan, FIR Bandpass filter")
	xlabel("Frequency (Hz)")
	ylabel("Gain (dB)")
	ylim([-60, 5])
	plot([8000.0/size(resp)*i for i in range(size(resp))], db(abs(array(resp))), linewidth=2.5)
	grid()

subplot(2, 2, 1)
kaiserplot()
subplot(2, 2, 2)
remezplot(128, 0)
subplot(2, 2, 3)
remezplot(64, 0)
subplot(2, 2, 4)
remezplot(64, 1)

show()
