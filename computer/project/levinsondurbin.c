#include "levinsondurbin.h"
#include <stdio.h>

void levinson(float *x, int len, float *coef, int numcoef){
	int i, j;
	float k, e;
	float r[numcoef+1];

	float coef_new[numcoef+1];

	//autocorrelate
	for(i = 0; i < numcoef+1; i++){
		r[i] = autocorrelate(x, len, i);
	}

	e = r[0];

	for(i = 1; i < numcoef+1; i++){
		k = r[i];
		for(j = 1; j < i; j++){
			k += coef[j]*r[i-j];
		}

		k = -k/e;
		coef_new[i] = k;

		for(j = 1; j < i; j++){
			coef_new[j] = coef[j] + k*coef[i-j];
		}

		e = (1 - k*k)*e;

		for(j = 1; j < i+1;j++) {
			coef[j] = coef_new[j];
		}
	}

	coef[0] = 1;
}

float autocorrelate(float *x, int len, int k){
	int i;
	float result = 0;
	if(k < 0) k = 0;
	for(i = k; i < len; i++){
		result += x[i] * x[i - k];
	}
	return result;
}
