// ECSE 436 - Signal Processing Hardware
// Lab 2
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#ifndef LPC_H
#define LPC_H

void process_block(short* in, short* out, int len);

void process_sample(short in);
short generate_sample(void);

void reset(void);
void ideal_error(float *error, float *x, int len, float *coef, int numcoef);
void synthesize_block(float *x, int len, float *coef, int numcoef, float *error);

#endif
