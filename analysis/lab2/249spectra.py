from pylab import *
import scipy.io.wavfile as wave

n = 128

audio2 = wave.read("2.wav")
audio4 = wave.read("4.wav")
audio9 = wave.read("9.wav")

blocks2 = []
blocks4 = []
blocks9 = []

for i in range(size(audio2[1])/n-1):
	block = audio2[1][i*n:(i+1)*n]
	blocks2.append(block)

for i in range(size(audio4[1])/n-1):
	block = audio4[1][i*n:(i+1)*n]
	blocks4.append(block)

for i in range(size(audio9[1])/n-1):
	block = audio9[1][i*n:(i+1)*n]
	blocks9.append(block)

# print len(blocks2)
# print len(blocks4)
# print len(blocks9)

ax = subplot(3, 1, 1)
title("DTMF \"2\" Token, DFT-128 Frequency Spectra")
xlabel("Frequency")
ylabel("Magnitude")
ax.set_yticklabels([])
grid()
plot(abs(fft(blocks2[len(blocks2)/2])))

ax = subplot(3, 1, 2)
title("DTMF \"4\" Token, DFT-128 Frequency Spectra")
xlabel("Frequency")
ylabel("Magnitude")
grid()
ax.set_yticklabels([])
plot(abs(fft(blocks4[len(blocks4)/2])))

ax = subplot(3, 1, 3)
title("DTMF \"9\" Token, DFT-128 Frequency Spectra")
xlabel("Frequency")
ylabel("Magnitude")
grid()
ax.set_yticklabels([])
plot(abs(fft(blocks9[len(blocks9)/2])))

show()