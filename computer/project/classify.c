#include "classify.h"

#define MIN_AMDF 20
#define MAX_AMDF 160

float rmsgain(float* x, int len) {
	int i;
	float gain;

	gain = 0;

	for(i = 0;i < len;i++) {
		gain += x[i];
	}

	gain = gain/len;

	return gain;
}

void AMDF(float* x, int len, float gain, float* amdf, int min, int max) {
	int p, i;

	if(min < 0) min = 0;
	if(max > len) max = len;

	for(p = min;p < max;p++) { //This is n^2 can we improve?
		amdf[p-min] = 0;
		for(i = p;p < len;p++) {
			amdf[p-min] += abs(x[i]-x[i-p]);
		}
		amdf[p-min] = amdf[p-min]/(len-p)/gain;
	}
}

classification classify(float* x, int len) {
	classification c;
	int i, period_count, period_sum;
	float amdfgain, lowest, highest;
	float amdf[MAX_AMDF-MIN_AMDF];

	c.type = WHITE;
	c.period = -1;
	c.gain = rmsgain(x, len);

	AMDF(x, len, c.gain, amdf, MIN_AMDF, MAX_AMDF);

	lowest = amdf[0];
	highest = amdf[0];

	for(i = 0;i < MAX_AMDF-MIN_AMDF;i++) {
		if(amdf[i] < lowest) lowest = amdf[i];
		if(amdf[i] > highest) highest = amdf[i];
	}
	
	// found = []

	if(highest-lowest > 0.85) {
		amdfgain = rmsgain(amdf, MAX_AMDF-MIN_AMDF);

		for(i = 0;i < MAX_AMDF-MIN_AMDF;i++) {
			if(amdf[i] > lowest+abs(amdfgain-lowest)*0.3) {
				if(c.period == -1 || i < c.period+2) {
					c.period = i+20;
					period_sum += i+20;
					period_count++;
				} else {
					break;
				}
			}
		}

		c.type = TONAL;
		c.period = period_sum/period_count;
	}

	return c;
}
