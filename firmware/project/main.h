// ECSE 436 - Signal Processing Hardware
// Lab 2
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#ifndef MAIN_H
#define MAIN_H

#include <dsk6713.h>
#include <dsk6713_aic23.h>

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

#include "classify.h"
#include "levinsondurbin.h"

#include "parameters.h"

#endif

void process_block(short* in, short* out, int len);

void process_sample(short in);
short generate_sample(void);

/**
 * reset function to zero the input buffer
 */
void reset(void);

void ideal_error(float *error, float *x, int len, float *coef, int numcoef);
void compress_fixed_point(short *comp, float *x, int len, int bit_depth);

void synthesize_block_ideal(float *x, int len, float *coef, int numcoef, float *error);
void synthesize_block_fixed_point(float *x, int len, float *coef, int numcoef, short *error, int bit_depth, float scale);
float get_rms_scale_fixed_point_error(float *error, short *error_fixp, int len, int bit_depth);

void synthesize_block_classify(float *x, int len, float *coef, int numcoef, classification cl);
void synthesize_block_white(float *x, int len, float *coef, int numcoef);
void synthesize_block_tonal(float *x, int len, float *coef, int numcoef, int period);

/* interrupts */

/**
 * gets the left and right channel input then sets the data ready flag
 */
void receive_interrupt(void);
/**
 * outputs the left and right channel then sets the output ready flag
 */
void transmit_interrupt(void);

float randomFloat(void);
short toShort(float v);
float toFloat(short v);

