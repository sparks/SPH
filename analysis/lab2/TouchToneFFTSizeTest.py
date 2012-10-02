from pylab import *
import scipy.io.wavfile as wave
import time

factor = 1

n = 1024/factor

tt_audio = wave.read("touchtones.wav")

blocks = []
for i in range(size(tt_audio[1])/n-1):
	block = tt_audio[1][i*n:(i+1)*n]
	blocks.append(block)

delay = 18.0/3.555/len(blocks)

ion()
ax = gca()

line, = plot(abs(fft(blocks[0])))

for i in range(size(tt_audio[1])/n-1):
	line.set_ydata(abs(fft(blocks[i])))
	ax.relim()
	ax.autoscale_view()
	draw()

	# time.sleep(delay)
