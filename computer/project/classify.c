#include "classify.h"

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
	classification c = {0, 0, 0};
	return c;
}
