from pylab import *
import scipy.io.wavfile as wave

def plotforn(n, a, b, c):
	audio2 = wave.read("2.wav")

	blocks2 = []

	for i in range(size(audio2[1])/n-1):
		block = audio2[1][i*n:(i+1)*n]
		blocks2.append(block)

	ax = subplot(a, b, c)
	title("DFT-%i Frequency Spectra" % n)
	xlabel("Frequency")
	ylabel("Magnitude")
	ax.set_yticklabels([])
	grid()
	plot(abs(fft(blocks2[len(blocks2)/2])))

plotforn(64, 3, 1, 1)
plotforn(128, 3, 1, 2)
plotforn(256, 3, 1, 3)

show()