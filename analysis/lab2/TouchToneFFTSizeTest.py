from pylab import *
import scipy.io.wavfile as wave
import time

factor = 2
n = 1024/factor

tt_audio = wave.read("touchtones.wav")

blocks = []
for i in range(size(tt_audio[1])/n-1):
	block = tt_audio[1][i*n:(i+1)*n]
	blocks.append(block)

valid_freq = [697, 770, 852, 941, 1209, 1336, 1477]

# thresholds
THR_SIGNAL = 50000.0 # sum of the magnitudes must be above this
THR_REVERSE_TWIST = 2.0 # max ratio of lower to higher freq
THR_STD_TWIST = 2.0 # 4dB, max ratio of higher to lower freq
THR_LOW_RELATIVE = 4.0 # min ratio of highest mag low freq to others
THR_HIGH_RELATIVE = 4.0 # min ratio of highest mag high freq to others
THR_LOW_2H = 10.0 # min ratio of low freq to its 2nd harmonic
THR_HIGH_2H = 10.0 # min ratio of high freq to its 2nd harmonic


# for 128
#freq_bins = [11, 12, 14, 15, 19, 21, 23]
##note: taking 2nd bin for 3rd freqs
freq_bin_factors = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]
##freq_bin_factors = [0.848, 0.68, 0.368, 0.944, 0.656, 0.624, 0.368]
freq_harmonic_bins = [22, 24, 26, 30, 38, 42, 47]
freq_harmonic_bin_factors = [0.696, 0.36, 0.736, 0.888, 0.312, 0.248, 0.736]

# for 512
freq_bins = [44, 49, 54, 60, 77, 85, 93]
##note: taking 2nd bin for 3rd freqs
##freq_bin_factors = [0.848, 0.68, 0.368, 0.944, 0.656, 0.624, 0.368]
#freq_harmonic_bins = [22, 24, 26, 30, 38, 42, 47]
#freq_harmonic_bin_factors = [0.696, 0.36, 0.736, 0.888, 0.312, 0.248, 0.736]


def snap(val):
	thres = 40
	snapped = val
	diff = 8000
	for f in valid_freq:
		if abs(f-val) < diff:
			diff = abs(f-val)
			snapped = f

	if diff < thres:
		return snapped
	else:
		return val

tones = {
	(697, 1209) : "1",
	(697, 1336) : "2",
	(697, 1477) : "3",
	(770, 1209) : "4",
	(770, 1336) : "5",
	(770, 1477) : "6",
	(852, 1209) : "7",
	(852, 1336) : "8",
	(852, 1477) : "9",
	(941, 1209) : "*",
	(941, 1336) : "0",
	(941, 1477) : "#",
}

def animateFFT():
	ion()
	ax = gca()

	line, = plot(abs(fft(blocks[0])))

	for i in range(size(tt_audio[1])/n-1):
		line.set_ydata(abs(fft(blocks[i])))
		ax.relim()
		ax.autoscale_view()
	        draw()

def animateWithThresholds():
	stack = [""]
	ion()
	ax = gca()

	ft = abs(fft(blocks[0]))

        valid_bin_mag = []
        valid_harmoics_mag  = []

        for i in range(len(freq_bins)):
            amp =\
            ft[freq_bins[i]]*freq_bin_factors[i]\
            +ft[freq_bins[i]+1]*(1-freq_bin_factors[i])
            
            valid_bin_mag.append(amp)

        for i in range(len(freq_harmonic_bins)):
            amp =\
            ft[freq_harmonic_bins[i]]*freq_harmonic_bin_factors[i]\
            +ft[freq_harmonic_bins[i]+1]*(1-freq_harmonic_bin_factors[i])
            
            valid_harmoics_mag.append(amp)


	maxes = [[0,0],[0,0]]

        # get max freqs from balid bins
        for i,m in enumerate(valid_bin_mag):
		if m > maxes[1][0]:
			maxes[1][1] = maxes[1][0]
                        maxes[0][1] = maxes[0][0]
			maxes[0][0] = i
                        maxes[1][0] = m
		elif m > maxes[1][1]:
			maxes[0][1] = i
                        maxes[1][1] = m

	# sort
        if maxes[0][1] < maxes[0][0]:
            # swap
            temp_i = maxes[0][0]
            temp_m = maxes[1][0]
            maxes[0][0] = maxes[0][1]
            maxes[1][0] = maxes[1][1]
            maxes[0][1] = temp_i
            maxes[1][1] = temp_m

	line, = plot(ft)
	points, = plot((freq_bins[maxes[0][0]], freq_bins[maxes[0][1]])\
                , maxes[1], 'ro', markersize=10)

	tt = text(0.5, 0.5, "", fontsize=20, transform=ax.transAxes)
	# tt.set_text("(%1.1f, %1.1f)" % (maxes[0][0]*8000/n, maxes[0][1]*8000/n))

	tuple_key = (valid_freq[maxes[0][0]], valid_freq[maxes[0][1]])

        success = False

	if tuple_key in tones:
                # check sum threshold
                if  maxes[1][0] + maxes[1][1] > THR_SIGNAL:
                    # compute twist ratios
                    reverse_twist_ratio = float(maxes[1][0])/float(maxes[1][1])
                    std_twist_ratio = 1.0/reverse_twist_ratio
                    # check twist ratios
                    if reverse_twist_ratio < THR_REVERSE_TWIST or\
                            std_twist_ratio < THR_STD_TWIST :
                        # check relative freq ratios
                       # rel_peaks_low = False
                       # rel_peaks_high = False
                       # for low_idx in range(0:3):
                       #     if low_idx != maxes[0][0] and\

                        success = True
		        tt.set_text(tones[tuple_key])
		        if stack[-1] != tones[tuple_key]:
			    stack.append(tones[tuple_key])
                    else:
                        print "failed twist ratio"
                        # faile twist ratio
                else:
                    print "failed signal threshold"
                    # fail signal threshold
	else:
            print "failed to find valid freq combo"
            # fail to find tuple

        if success == False:
	    
            tt.set_text("(%1.1f, %1.1f)" % (valid_bin_mag[maxes[0][0]],
                valid_bin_mag[maxes[0][1]]))

	for i in range(size(tt_audio[1])/n-1):
            ft = abs(fft(blocks[i]))

            valid_bin_mag = []
            valid_harmoics_mag  = []

            for i in range(len(freq_bins)):
                amp =\
                ft[freq_bins[i]]*freq_bin_factors[i]
                +ft[freq_bins[i]+1]*(1-freq_bin_factors[i])
                
                valid_bin_mag.append(amp)

            for i in range(len(freq_harmonic_bins)):
                amp =\
                ft[freq_harmonic_bins[i]]*freq_harmonic_bin_factors[i]
                +ft[freq_harmonic_bins[i]+1]*(1-freq_harmonic_bin_factors[i])
                
                valid_harmoics_mag.append(amp)


	    maxes = [[0,0],[0,0]]

            # get max freqs from balid bins
            for i,m in enumerate(valid_bin_mag):
	    	if m > maxes[1][0]:
	    		maxes[1][1] = maxes[1][0]
                        maxes[0][1] = maxes[0][0]
	    		maxes[0][0] = i
                        maxes[1][0] = m
	    	elif m > maxes[1][1]:
	    		maxes[0][1] = i
                        maxes[1][1] = m

	    # sort
            if maxes[0][1] < maxes[0][0]:
                # swap
                temp_i = maxes[0][0]
                temp_m = maxes[1][0]
                maxes[0][0] = maxes[0][1]
                maxes[1][0] = maxes[1][1]
                maxes[0][1] = temp_i
                maxes[1][1] = temp_m

	    tuple_key = (valid_freq[maxes[0][0]], valid_freq[maxes[0][1]])

            success = False

	    if tuple_key in tones:
                    # check sum threshold
                    if maxes[1][0] + maxes[1][1] > THR_SIGNAL:
                        # compute twist ratios
                        reverse_twist_ratio =float(maxes[1][0])/float(maxes[1][1])
                        std_twist_ratio = 1.0/reverse_twist_ratio
                        # check twist ratios
                        if reverse_twist_ratio < THR_REVERSE_TWIST and\
                                std_twist_ratio < THR_STD_TWIST :
                            # check relative freq ratios
                           # rel_peaks_low = False
                           # rel_peaks_high = False
                           # for low_idx in range(0:3):
                           #     if low_idx != maxes[0][0] and\

                            success = True
	    	            tt.set_text(tones[tuple_key])
	    	            if stack[-1] != tones[tuple_key]:
	    		        stack.append(tones[tuple_key])
                        else:
                            print "failed twist ratio - %0.3f, %0.3f" %\
                            (reverse_twist_ratio, std_twist_ratio)
                            # faile twist ratio
                    else:
                        print "failed signal threshold"
                        # fail signal threshold
	    else:
                print "failed to find valid freq combo"
                # fail to find tuple

            if success == False:
	        tt.set_text("(%1.1f, %1.1f)" % (valid_freq[maxes[0][0]],
                    valid_freq[maxes[0][1]]))


	    points.set_xdata((freq_bins[maxes[0][0]], freq_bins[maxes[0][1]]))
	    points.set_ydata(maxes[1])
	    line.set_ydata(ft)

	    ax.relim()
	    ax.autoscale_view()
	    draw()

		# time.sleep(0.1)

	print stack #Expect ['', '*', '0', '1', '5', '1', '4', '3', '9', '8', '2', '7', '2', '6', '2', '5', '1', '0', '6', '3', '#']
	expected = ['', '*', '0', '1', '5', '1', '4', '3', '9', '8', '2', '7', '2', '6', '2', '5', '1', '0', '6', '3', '#']
	if expected == stack:
		print "Matches Expected Results"

def animateWithTonesMax():
    stack = [""]
    ion()
    ax = gca()

    ft = abs(fft(blocks[0]))

    maxes = [[0,0],[0,0]]

    for i, m in enumerate(ft):
        if i > n/2:
            break

        if m > maxes[0][1]:
            maxes[1] = maxes[0]
            maxes[0] = [i, m]
        elif m > maxes[1][1]:
            maxes[1] = [i, m]

    maxes.sort()
    maxes = array(maxes)
    maxes = [maxes[:,0], maxes[:,1]]

    line, = plot(ft)
    points, = plot(maxes[0], maxes[1], 'ro', markersize=10)

    tt = text(0.5, 0.5, "", fontsize=20, transform=ax.transAxes)
    # tt.set_text("(%1.1f, %1.1f)" % (maxes[0][0]*8000/n, maxes[0][1]*8000/n))

    tuple_key = (snap(maxes[0][0]*8000/n), snap(maxes[0][1]*8000/n))

    if tuple_key in tones:
        tt.set_text(tones[tuple_key])
        if stack[-1] != tones[tuple_key]:
            stack.append(tones[tuple_key])
    else:
        tt.set_text("(%1.1f, %1.1f)" % (maxes[0][0]*8000/n,maxes[0][1]*8000/n))

        for i in range(size(tt_audio[1])/n-1):
            ft = abs(fft(blocks[i]))

        maxes = [[0,0],[0,0]]

        for i, m in enumerate(ft):
            if i > n/2:
                break

            if m > maxes[0][1]:
                maxes[1] = maxes[0]
                maxes[0] = [i, m]
            elif m > maxes[1][1]:
                maxes[1] = [i, m]

        maxes.sort()
        maxes = array(maxes)
        maxes = [maxes[:,0], maxes[:,1]]

        tuple_key = (snap(maxes[0][0]*8000/n), snap(maxes[0][1]*8000/n))

        if tuple_key in tones:
            tt.set_text(tones[tuple_key])
            if stack[-1] != tones[tuple_key]:
                stack.append(tones[tuple_key])
        else:
            tt.set_text("(%1.1f, %1.1f)" % (maxes[0][0]*8000/n,maxes[0][1]*8000/n))

        points.set_xdata(maxes[0])
        points.set_ydata(maxes[1])
        line.set_ydata(ft)

        ax.relim()
        ax.autoscale_view()
        draw()

        # time.sleep(0.1)

    print stack #Expect ['', '*', '0', '1', '5', '1', '4', '3', '9', '8', '2','7', '2', '6', '2', '5', '1', '0', '6', '3', '#']
    expected = ['', '*', '0', '1', '5', '1', '4', '3', '9', '8', '2', '7', '2','6', '2', '5', '1', '0', '6', '3', '#']
    if expected == stack:
        print "Matches Expected Results"

def slice(block_num):
	ft = abs(fft(blocks[block_num]))
	plot([i*8000.0/n for i in range(n)], ft)
	show()

def animateWithTonesRMS():
	stack = [""]

	ion()
	ax = gca()

	ft = abs(fft(blocks[0]))

	rms_avg = 0

	for i, val in enumerate(ft):
		if i > n/2:
			break

		rms_avg += val

	rms_avg /= n/2
	rms_avg *= 8

	line, = plot(ft)
	rms_line, = plot([rms_avg for i in range(n)])

	for i in range(size(tt_audio[1])/n-1):
		ft = abs(fft(blocks[i]))

		rms_avg = 0

		for i, val in enumerate(ft):
			if i > n/2:
				break

			rms_avg += val

		rms_avg /= n/2
		rms_avg *= 8

		line.set_ydata(ft)
		rms_line.set_ydata([rms_avg for i in range(n)])

		ax.relim()
		ax.autoscale_view()
		draw()

		# time.sleep(0.1)

	print stack #Expect ['', '*', '0', '1', '5', '1', '4', '3', '9', '8', '2', '7', '2', '6', '2', '5', '1', '0', '6', '3', '#']
	expected = ['', '*', '0', '1', '5', '1', '4', '3', '9', '8', '2', '7', '2', '6', '2', '5', '1', '0', '6', '3', '#']
	if expected == stack:
		print "Matches Expected Results"

animateWithThresholds()
