// ECSE 436 - Signal Processing Hardware
// Lab 2
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#ifndef LEVINSONDURBIN_H
#define LEVINSONDURBIN_H


void levinson(short *in, int blocksize, float *coef, int numcoef);

float autocorrelate(short *in, int blocksize, int i);

float correlate(short x[], int length, int offset);

#endif
