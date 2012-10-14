from pylab import *
import csv

frames1 = []
frames2 = []

with open('output1', 'rb') as file:
	reader = csv.reader(file)
	for row in reader:
		frame = []
		for v in row:
			frame.append(float(v))
		frames1.append(frame)
with open('output2', 'rb') as file:
	reader = csv.reader(file)
	for row in reader:
		frame = []
		for v in row:
			frame.append(float(v))
		frames2.append(frame)

ion()
ax = gca()

subplot(2,1,1)
line1, = plot(frames1[0])
subplot(2,1,2)
line2, = plot(frames2[0])

for i in range(len(frames1)):
	line1.set_ydata(frames1[i])
	line2.set_ydata(frames2[i])
	ax.relim()
	ax.autoscale_view()
	draw()
