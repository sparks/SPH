#Important this assignment was done in PYLAB
#NOT MATLAB

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

def Q3():
	kaiser_param = kaiserord(db(0.05), 0.05)
	
	taps = firwin(kaiser_param[0]+1, [0.0625, 0.8375], window=('kaiser', kaiser_param[1]), pass_zero=False)
	# printArray(taps)

	resp = fft(taps, 1000)

	subplot(2, 1, 1)

	title("Kaiser Window, FIR Bandpass filter")
	xlabel("z")
	ylabel("|Hda(z)|")
	plot([8000.0/size(resp)*i for i in range(size(resp))], abs(array(resp)))
	grid()

def Q4():
	M = 64

	taps = remez(int(M), [0, 0.050000000000000003, 0.074999999999999997, 0.82499999999999996, 0.84999999999999998, 1], [0, 1, 0], [1, 1, 1], 2, 'hilbert')
	# printArray(taps)	

	resp = fft(taps, 1000)

	subplot(2, 1, 2)

	title("Parks-McClellan/Remez Exchange, FIR Bandpass filter, Initial Order Estimate")
	xlabel("z")
	ylabel("|Hda(z)|")
	plot([8000.0/size(resp)*i for i in range(size(resp))], abs(array(resp)))
	grid()

Q3()
Q4()
show()
