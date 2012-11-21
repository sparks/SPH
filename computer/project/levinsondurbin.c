#include "levinsondurbin.h"

void levinson(short *in, int blocksize, float *coef, int numcoef){
	int i, j, k;
	float r[numcoef + 1];
	float a_2[numcoef + 1];
	float *coef_new = a_2;
	float e;

	//autocorrelate
	for(i = 0; i <= numcoef; i++){
		r[i] = autocorrelate(in, blocksize, i);
	}

	e = r[0];
	for(i = 1; i <= numcoef; i++){
		k = r[i];
		for(j = 1; j < i; j++){
			k -= coef[j]*r[i-j];
		}

		k = k/e;
		coef_new[i] = k;

		for(j = 1; j < i; j++){
			coef_new[j] = coef[j] - k*coef[i-j];
		}
		e = (1 - k*k)*e;

		coef = coef_new;
	}
	coef[0] = 1;
}

float autocorrelate(short *in, int blocksize, int i){
		return correlate(in, blocksize, i);
}

float correlate(short x[], int length, int offset){
	int i;
	float result = 0;
	for(i = offset; i < length; i++){
		result += (float)x[i]*(float)x[i - offset];
	}
	return result;
}
