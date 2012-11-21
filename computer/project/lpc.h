// ECSE 436 - Signal Processing Hardware
// Lab 2
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#ifndef LPC_H
#define LPC_H

void ideal_error(short *in, float *coef, int numcoef, short *in_old, float *error, int blocksize);
void reset(void);
void encode_block(short *in, short *in_old, float coef[], int numcoef, float error[], int blocksize);
void synthesize_block(float coef[], int numcoef, float error[], int blocksize, short *out, short *out_old);

#endif
