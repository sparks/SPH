#include "classify.h"

#define MIN_AMDF 20
#define MAX_AMDF 160

/**
 * Method name is a LIE. was originally RMS, however it was too costly so we are approximation with absolute average.
 *
*/
float rmsgain(float* x, int len) {
	int i;
	float gain;

	gain = 0;

	//sum of abs values
	for(i = 0;i < len;i++) {
		gain += absf(x[i]); //Not actually RMS, sqrt is too cost. Using a abs/avg instead
	}

	gain = gain/len; //avg

	return gain;
}

//Compute AMDF function over a range
void AMDF(float* x, int len, float gain, float* amdf, int min, int max) {
	int p, i;

	//Check bounds and snap (this is probably not the best way to handle this. Could lead to memory/pointer errors.
	if(min < 0) min = 0;
	if(max > len) max = len;

	for(p = min;p < max;p++) { //Over the range of interest
		amdf[p-min] = 0;
		for(i = p; i < len; i++) { //Over the signal
			amdf[p-min] += absf(x[i]-x[i-p]); //sum of abs differences
		}
		amdf[p-min] = amdf[p-min]/(len-p)/gain; //averaged
	}
}

//Classify a block
classification classify(float* x, int len) {
	classification c;
	int i, period_count, period_sum;
	float amdfgain, lowest, highest;
	float amdf[MAX_AMDF-MIN_AMDF];

	//Default value for classfication, white noise, e.g. voiceless
	c.type = WHITE;
	c.period = -1;
	c.gain = rmsgain(x, len);

	AMDF(x, len, c.gain, amdf, MIN_AMDF, MAX_AMDF); //Compute AMDF

	lowest = amdf[0];
	highest = amdf[0];

	//Find lowest and high AMDF value
	for(i = 0;i < MAX_AMDF-MIN_AMDF;i++) {
		if(amdf[i] < lowest) lowest = amdf[i];
		if(amdf[i] > highest) highest = amdf[i];
	}
	
	if(highest-lowest > 0.85) { //Threshold to determine if voiced (impulse train)
		amdfgain = rmsgain(amdf, MAX_AMDF-MIN_AMDF); //Compute amdf dyn range

		period_sum = 0;
		period_count = 0;

		//Search for first trough, add a small correction to try and find the "center" ofthe trough
		for(i = 0;i < MAX_AMDF-MIN_AMDF;i++) {
			if(amdf[i] < lowest+absf(amdfgain-lowest)*0.3) { //Accept anything with 0.3*dynrange of the lowest value
				if(c.period == -1 || i < (c.period-20+2)) { //Once we find the first trough, find all valid points within the trough and determine the center of these points
					c.period = i+20;
					period_sum += i+20;
					period_count++;
				} else {
					break;
				}
			}
		}

		c.type = TONAL; //change to TONAL, e.g. impulse train
		c.period = period_sum/period_count; //average of points give period
	}

	return c;
}

//Abs value for float
float absf(float v) {
	if(v < 0) return -v;
	else return v;
}
