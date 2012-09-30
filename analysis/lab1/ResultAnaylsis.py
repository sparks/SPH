from pylab import *
import csv

freq = []
input_p_p = []
input_rms = []
output_p_p = []
output_rms = []

with open('FIRTransferFunction.csv', 'rb') as file:
    reader = csv.reader(file)
    for row in reader:
        if row[0] != "#":
            freq.append(float(row[0]))
            input_p_p.append(float(row[1]))
            input_rms.append(float(row[2]))
            output_p_p.append(float(row[3]))
            output_rms.append(float(row[4]))



plot(freq, input_p_p)
#plot(freq, input_rms)
plot(freq, output_p_p)
fill_between(freq, 0, output_p_p, facecolor='green')
#plot(freq, output_rms)
#xlim([10, 200])

show()
