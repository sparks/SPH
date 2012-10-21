from pylab import *
import csv

frames1 = []
frames2 = []

with open('dspfftdata1.csv', 'rb') as file:
	reader = csv.reader(file)
	for row in reader:
		frame = []
		for v in row:
			frame.append(float(v))
		frames1.append(frame)
with open('dspfftdata2.csv', 'rb') as file:
	reader = csv.reader(file)
	for row in reader:
		frame = []
		for v in row:
			frame.append(float(v))
		frames2.append(frame)

def animateFFT():
	ion()

	subplot(2,1,1)
	line1, = plot(frames1[0])
	ax1 = gca()

	subplot(2,1,2)
	line2, = plot(frames2[0])
	ax2 = gca()


	for i in range(len(frames1)):
		line1.set_ydata(frames1[i])
		line2.set_ydata(frames2[i])
		subplot(2,1,1)
		ax1.relim()
		ax1.autoscale_view()
		ax2.relim()
		ax2.autoscale_view()
		draw()

def staticFFT():
	f = figure()
	f.text(.25, .95, "DSP: Onboard Real-Time 128 Point FFT Computation")  # coordinates are window coordinates from 0 to 1 
	
	ax = subplot(2, 2, 1)
	xlabel("Frequency")
	ylabel("Magnitude")
	ax.set_yticklabels([])
	grid()
	plot(frames2[80])

	ax = subplot(2, 2, 2)
	xlabel("Frequency")
	ylabel("Magnitude")
	ax.set_yticklabels([])
	grid()
	plot(frames1[50])

	ax = subplot(2, 2, 3)
	xlabel("Frequency")
	ylabel("Magnitude")
	ax.set_yticklabels([])
	grid()
	plot(frames2[70])

	ax = subplot(2, 2, 4)
	xlabel("Frequency")
	ylabel("Magnitude")
	ax.set_yticklabels([])
	grid()
	plot(frames1[80])

	show()

staticFFT()