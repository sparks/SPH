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

int convolve(int x[], int w[], int x_idx, int w_length);
int convolve_opt(short w[], short x[], int n);
void receive_interrupt(void);
void transmit_interrupt(void);
void process_sample(Int16 x);

