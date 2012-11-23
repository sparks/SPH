// ECSE 436 - Signal Processing Hardware
// Lab 2
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#ifndef LPC_H
#define LPC_H

#include <stdio.h>
#include <errno.h>
#include <stdlib.h>

#include "classify.h"
#include "levinsondurbin.h"

#endif

void process_block(short* in, short* out, int len);

void process_sample(short in);
short generate_sample(void);

void reset(void);

void ideal_error(float *error, float *x, int len, float *coef, int numcoef);
void compress_fixed_point(short *comp, float *x, int len, int bit_depth);

void synthesize_block_ideal(float *x, int len, float *coef, int numcoef, float *error);
void synthesize_block_fixed_point(float *x, int len, float *coef, int numcoef, short *error, int bit_depth);

void synthesize_block_classify(float *x, int len, float *coef, int numcoef, classification cl);
void synthesize_block_white(float *x, int len, float *coef, int numcoef);
void synthesize_block_tonal(float *x, int len, float *coef, int numcoef, int period);

float randomFloat(void);
short toShort(float v);
float toFloat(short v);
