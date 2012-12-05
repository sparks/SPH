#include "levinsondurbin.h"

float r[NUMCOEF];
float coef_new[NUMCOEF];

/**
 * Levison-Durbin matrix inversion. This method will return the optimized LPC IIR filter coefficients.
 * Modified indexing from zero.
 *
*/
void levinson(float *x, int len, float *coef, int numcoef){
	int i, j;
	float k, e;

	//build autocorrelation
	for(i = 0; i < numcoef; i++){
		r[i] = autocorrelate(x, len, i+1);
	}

	e = autocorrelate(x, len, 0);

	for(i = 0; i < numcoef; i++){
		k = r[i];
		for(j = 0; j < i; j++){
			k -= coef[j]*r[i-j-1];
		}

		k = k/e;
		coef_new[i] = k;

		for(j = 0; j < i; j++){
			coef_new[j] = coef[j] - k*coef[i-j-1];
		}

		e = (1 - k*k)*e;

		for(j = 0; j < i+1;j++) {
			coef[j] = coef_new[j];
		}
	}
}

/**
 * Simple autocorrelation function as normally defined for use with LPC/levinson-durbin
 *
 */
float autocorrelate(float *x, int len, int k){
	int i;
	float result = 0;
	if(k < 0) k = 0;
	for(i = k; i < len; i++){
		result += x[i] * x[i - k];
	}
	return result;
}
