// ECSE 436 - Signal Processing Hardware
// Lab 2
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#ifndef TOUCHTONE_H
#define TOUCHTONE_H

//required libs
#include <dsk6713.h>
#include <dsk6713_aic23.h>
#include <stdio.h>
#include <errno.h>

#endif

/* function prototypes */

/**
 * processes a new input sample:
 * adds the new sample to the buffer;
 * if there are enough new samples, performs fft on the samples;
 * then perfoms tone detection on the result of the fft,
 * validates the results and stacks any valid digits detected.
 */
void process_sample(Int16);

/**
 * generates pulse to be output:
 */
Int16 generate_pulse_sample(void);

/**
 * records the detected digits to an output file.
 *
 * note: will write to the end of file
 */
void record_tones_to_file(void);

/**
 * computes the absolute value of input int
 */
int absolute(int);

/**
 * tries to snap the input frequency to one of the valid tone frequencies
 * returns snapped freq on success; -1 on failure
 */
int snapfreq(int);

/**
 * detects tones from input absolute value fft array,
 * returns a valid digit, or else an error:
 * works by first finding the two max value bins in the fft array,
 * then tries to snap them to valid tone frequencies;
 * if valid tones are found, they are checked to be a valid tone combo.
 * finally a signal threshold test and then a twist ration test are preformed.
 * (twist ratio checks the relative magnitude of the two tones).
 */
int detect_tone(float*);

/**
 *detects tones from input absolute value fft array,
 * returns a valid digit, or else an error:
 * works by simply detecting the two highest value frequency bins,
 * tries to snap the those frequencies to the possible valid tone frequencies,
 * checks if this results in a valid tone combo,
 * and outputs a valid digit if it finds a valid tone combo.
 */
int detect_tone_maxbins(float*);

/**
 * NOTE: currently is not calibrated
 *
 * detects tones from input absolute   value fft,
 * returns a valid digit, or else an error:
 * works by performing several threshold checks;
 * currently does not work.
 */
int detect_tone_TI_thresholds(float*);

/** interrupts **/
void receive_interrupt(void);
void transmit_interrupt(void);