// ECSE 436 - Signal Processing Hardware
// Lab 3
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#ifndef MAIN_H
#define MAIN_H

//required libs
#include <dsk6713.h>
#include <dsk6713_aic23.h>
#include <stdio.h>
#include <errno.h>
#include <time.h>

#endif

/* interrupts */

/**
 * gets the left and right channel input then sets the data ready flag
 */
void receive_interrupt(void);
/**
 * outputs the left and right channel then sets the output ready flag
 */
void transmit_interrupt(void);

/**
 * C convolution implementation
 * input:
 *	circular input buffer,
 *	filter coefficient array,
 *	index of newsest input buffer value,
 * 	length of filter
 * output: convolution result
 */
int convolve_c(int x[], int w[], int x_idx, int w_length);

/**
 * 32-bit fixed point multiply function
 * casts the input to 64-bit ints in case the ouput is greater than can be stored in a 32 bit int
 */
int multiply(int, int);

/**
 * reset function to zero the input buffer
 */
void reset(void);

/**
 * Processes one input sample and returns one output sample
 * The first argument is the clean input channel
 * the second is the echo (noise) input channel
 */
Int16 process_sample(Int16, Int16);

/**
 * Recalculates the filter coefficients based on the new error
 * and the adaptive filter variables
 */
void grad_desc(void);
