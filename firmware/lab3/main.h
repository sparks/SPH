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

void receive_interrupt(void);
void transmit_interrupt(void);

int convolve(int x[], int w[], int x_idx, int w_length);
int convolve_opt(Int16 w[], Int16 x[], int n);
int convolve_c(int*, int*, int, int);

int multiply(int, int);
void reset(void);

Int16 process_sample(Int16, Int16);

void process_block(Int16*, Int16*, Int16*, int);
void grad_desc(void);
