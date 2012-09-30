from pylab import *
from scipy.signal import *
import csv

#Compute dBs
def db(val):
	return 20*log10(val)

freq = []
input_p_p = []
input_rms = []
output_p_p = []
output_rms = []

def kaiserplot():
	kaiser_param = kaiserord(db(0.01), 0.05)

	taps = firwin(kaiser_param[0]+1, [0.0625, 0.8375], window=('kaiser', kaiser_param[1]), pass_zero=False)
	# printArray(taps)

	resp = fft(taps, 1000)

	plot([8000.0/size(resp)*i for i in range(size(resp)/2)], db(abs(array(resp[0:size(resp)/2]))), label="Ideal", linewidth=2.5)

with open('FIRTransferFunction.csv', 'rb') as file:
	reader = csv.reader(file)
	for row in reader:
		if row[0][0] != "#":
			freq.append(float(row[0]))
			input_p_p.append(float(row[1]))
			input_rms.append(float(row[2]))
			output_p_p.append(float(row[3]))
			output_rms.append(float(row[4]))

freq = array(freq)
input_p_p = array(input_p_p)
input_rms = array(input_rms)
output_p_p = array(output_p_p)
output_rms = array(output_rms)

plot(freq, db(output_rms/input_rms), label="Experiment", linewidth=2.5)
# fill_between(freq, 0, output_p_p, facecolor='green')

kaiserplot()

title("Kaiser Window, FIR Band-Pass Filter")
legend()
xlabel("Frequency (Hz)")
ylabel("Gain (dB)")
ylim([-30, 5])
grid()

show()
