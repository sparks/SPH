// ECSE 436 - Signal Processing Hardware
// Lab 2
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#include <errno.h>
#include <stdio.h>

#include "fft.h"
#include "touchtone.h"

#define FFTSIZE 128  //File chunk read len
#define INPUT_FILENAME "touchtones.raw"
#define OUTPUT_FILENAME "pulses.raw"
#define TEXT_FILENAME "pulserecord.txt" 

#define FREQS_LOW 4     //number of valid low freqs to check
#define FREQS_HIGH 3    // number of valid high freqs to check

// threshold
#define THR_SIGNAL 50000.0      // sum of the magnitudes must be above this
#define THR_REVERSE_TWIST 2.0   // max ratio of lower to higher freq
#define THR_STD_TWIST  0.5      // max ratio of higher to lower freq
                                // to avoid division, this is actually the
                                // inverse ratio (1/2.0)
#define THR_LOW_RELATIVE 6.0    // min ratio of highest mag low freq to others
#define THR_HIGH_RELATIVE 6.0   // min ratio of highest mag high freq to others
#define THR_LOW_2H 2.0         // min ratio of low freq to its 2nd harmonic
#define THR_HIGH_2H 10.0        // min ratio of high freq to its 2nd harmonic

// Prototypes
void process_block(short*, short*, int);
void process_sample(short);
int snapfreq(int);
int abs(int);
int detect_tone(float*);
int detect_tone_new(float*);
short generate_pulse_sample(void);
void record_tones_to_file(void);

int tones[12][3] = {
	{697, 1209, 1},
	{697, 1336, 2},
	{697, 1477, 3},
	{770, 1209, 4},
	{770, 1336, 5},
	{770, 1477, 6},
	{852, 1209, 7},
	{852, 1336, 8},
	{852, 1477, 9},
	{941, 1209, 10},
	{941, 1336, 0},
	{941, 1477, 11}
};

int freq_low[] = {697, 770, 852, 941};
int freq_high[] = {1209, 1336, 1477};

// valid bins for 128 length fft

int freq_low_bin[] = {11, 12, 14, 15};
int freq_high_bin[] = {19, 21, 23};
int freq_low_harmonic_bin[] = {22, 24, 26, 30};
int freq_high_harmonic_bin[] = { 38, 43, 47};

// valid bins for 512
/*
int freq_low_bin[] = {44, 49, 54, 60};
int freq_high_bin[] = {77, 85, 93};
int freq_low_harmonic_bin[] = {89, 98, 109, 120};
int freq_high_harmonic_bin[] = {154, 171, 189};
*/

char tonemap[12] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '*', '#'};

//Variables for File IO
short DATA_IN[FFTSIZE]; //16 bit values
short DATA_OUT[FFTSIZE];

//Program variables
short buffer[FFTSIZE];
int buffer_index;

#define TONE_BUF_LEN 30
int detected_tones[TONE_BUF_LEN];
int write_tone_index, prev_tone_index, tone_index, gap_flag = 1;

int pulse_up = 8;
int pulse_len = 800;

int pulse_state = -1, pulse_tone_index;
int pulse_sample_index, pulse_tone_count, pulse_tone_count_max;

int sample_count = 0;
int tone_len_count = 0;

//Controllable detection params
int dump = 0;
#define fftmode 0

int fft_interval = FFTSIZE/2;
int min_tone_len = 10;
int freq_snap_thres = 40;

float fft_array[FFTSIZE*2+fftmode];
FILE *textfile;

int main() {
	if(!dump) printf("*, 0, 1, 5, 1, 4, 3, 9, 8, 2, 7, 2, 6, 2, 5, 1, 0, 6, 3, #\n");

	FILE *infile, *outfile;
	int datacount;

    /* Open the input file and quit if fail */
	infile = fopen(INPUT_FILENAME, "rb");
	if (!infile) {
		printf("fopen for reading failed with %d!\n", errno);
		return 0;
	}

    /* Open the output file and quit if fail */
	outfile = fopen(OUTPUT_FILENAME,"wb");
	if (!outfile) {
		printf("fopen for writing failed with %d!\n", errno);
		return 0;
	}

    /* Open the output file and quit if fail */
	textfile = fopen(TEXT_FILENAME,"wb");
	if (!textfile) {
		printf("fopen for writing failed with %d!\n", errno);
		return 0;
	}

	//Read in NN chunks
	do {
		datacount = fread(DATA_IN, sizeof(short), FFTSIZE, infile);
		process_block(DATA_IN, DATA_OUT, datacount);
    	fwrite(DATA_OUT, sizeof(short), datacount, outfile);
	} while (datacount == FFTSIZE);

	while(pulse_tone_index != tone_index && pulse_state != 0) {
		int i;
		for(i = 0;i < FFTSIZE;i++) {
			DATA_OUT[i] = generate_pulse_sample();
		}
		fwrite(DATA_OUT, sizeof(short), FFTSIZE, outfile);
	}

	if(!dump) printf("\n");

    /* Close the input and output files, this also flushes all
    * pending I/O, so that other programs can access the data. */
	fclose(infile);
	fclose(outfile);
	fclose(textfile);
}

/* Here is the definition of the block processing function */
void process_block(short *in, short *out, int size) {
	int i;
	for(i = 0;i < size;i++) {
		//Equivalent to main loop
		process_sample(in[i]);
		out[i] = generate_pulse_sample();
	}
}

void record_tones_to_file(void) {
	for(;write_tone_index != (pulse_tone_index+1)%TONE_BUF_LEN;write_tone_index = (write_tone_index+1)%TONE_BUF_LEN) {
		fwrite(&tonemap[detected_tones[write_tone_index]], sizeof(char), 1, textfile);
	}
}

short generate_pulse_sample(void) {
	if(pulse_state != 1) {
		if(pulse_tone_index == tone_index) {
			return 0;
		} if(pulse_state == 3) {
			pulse_sample_index++;
			if(pulse_sample_index > 4000) {
				pulse_state = 0;
				pulse_sample_index = 0;
			}
		} else {
			//We will read a tone
			if(pulse_state == -1) { //Look for the first * character
				if(detected_tones[pulse_tone_index] == 10) {
					pulse_state = 0;
				}
			} else if(detected_tones[pulse_tone_index] == 11) { //Look for the termination character
				//Write to file
				record_tones_to_file();
				pulse_state = -1;
			} else if(pulse_state == 0) { //Waiting for another tone
				if(detected_tones[pulse_tone_index] == 10) { //Change rate on next command
					pulse_state = 2;
					// printf("Got a * at index %i\n", pulse_tone_index);
				} else if(detected_tones[pulse_tone_index] < 10) { //Start a tone
					pulse_state = 1;

					pulse_tone_count_max = detected_tones[pulse_tone_index];
					if(pulse_tone_count_max == 0) pulse_tone_count_max = 10; //Handle 0 -> 10 mapping

					pulse_tone_count = 0;
					pulse_sample_index = 0;
				}
			} else if(pulse_state == 2) { //We are waiting for a rate change
				if(detected_tones[pulse_tone_index] < 10) { //If it's not a number dump it
					if(detected_tones[pulse_tone_index] == 0) pulse_len = 800; //Handle 0 -> 10 mapping, also the default speed
					else pulse_len = 8000/detected_tones[pulse_tone_index];
					// printf("\nTone was %i at index %i New pulse_len: %i\n", detected_tones[pulse_tone_index], pulse_tone_index, pulse_len);
				}
				pulse_state = 0; //Regardless move to next default state
			}
			//Increment tone
			pulse_tone_index++;
			// printf("index is %i %i\n", tone_index, pulse_tone_index);
			if(pulse_tone_index >= TONE_BUF_LEN) pulse_tone_index -= TONE_BUF_LEN;
		}
	} 

	if(pulse_state == 1) {
		if(pulse_sample_index < 8) {
			pulse_sample_index++;
			return 32767;
		} else if(pulse_sample_index < pulse_len) {
			pulse_sample_index++;
			return 0;
		} else {
			pulse_tone_count++;
			pulse_sample_index = 0;
			if(pulse_tone_count >= pulse_tone_count_max) {
				pulse_tone_count = 0;
				pulse_state = 3;
				return 0;
			}
		}
	}

	return 0;
}

void process_sample(short in) {
	int i, tmp;

	buffer[buffer_index] = in;

	buffer_index++;
	if(buffer_index >= FFTSIZE) buffer_index = 0;

	sample_count++;
	if(sample_count < fft_interval) return;
	sample_count = 0;

	for(i = 0;i < FFTSIZE;i++) {
		tmp = buffer_index+i;
		if(tmp >= FFTSIZE) tmp -= FFTSIZE;
		fft_array[2*i+fftmode] = buffer[tmp];
		fft_array[2*i+1+fftmode] = 0;
	}

	if(fftmode == 1) fft2(fft_array, FFTSIZE);
	else fft(fft_array, FFTSIZE);

	for(i = 0;i < FFTSIZE/2;i++) {
		fft_array[i] = (fft_array[2*i+fftmode]*fft_array[2*i+fftmode]+fft_array[2*i+1+fftmode]*fft_array[2*i+1+fftmode]);

		if(dump) {
			if(i != 0) printf(", ");
			printf("%f", fft_array[i]);
		}
	}

	if(dump) {
		printf("\n");
		return;
	}

	//Touch tone detection
	tmp = detect_tone_new(fft_array);
	if(tmp < 0) gap_flag = 1;

	prev_tone_index = tone_index-1;
	if(prev_tone_index < 0) prev_tone_index += TONE_BUF_LEN;

	//Rough stack process thing
	if(gap_flag) {
		if(tmp >= 0) {
			if(tone_len_count >= min_tone_len) {
				detected_tones[tone_index] = tmp;
				tone_index++;
				if(!dump) printf("%c, ", tonemap[tmp]);
				tone_len_count = 0;
				gap_flag = 0;
			} else {
				tone_len_count++;
			}
		}
	}

}

/** Detection junk below here */
int detect_tone_new(float absfft[]) {
    // loop iteration vars
	int i,j;

	float maxval[2] = {0.0,0.0};
	int maxfreq[2] = {0,0};
	int maxfreqbin[2] = {0,0};

	float twist_ratio;

    //get highest mag low and high freq
	for(i = 0; i < FREQS_LOW; i++){
		if(maxval[0] < absfft[freq_low_bin[i]]){
			maxfreqbin[0] = i;
			maxfreq[0] = freq_low[i];
			maxval[0] = absfft[freq_low_bin[i]];
		}
	}
	for(i = 0; i < FREQS_HIGH; i++){
		if(maxval[1] < absfft[freq_high_bin[i]]){
			maxfreqbin[1] = i;
			maxfreq[1] = freq_high[i];
			maxval[1] = absfft[freq_high_bin[i]];
		}
	}

    // check if its a valid tone combo
	for(i = 0;i < 12;i++) {
		if(tones[i][0] == maxfreq[0] && tones[i][1] == maxfreq[1]) {
	    // check sum threshold
			if(maxval[0] + maxval[1] > THR_SIGNAL){
                // check twist ratios
				twist_ratio = maxval[0]/maxval[1];
				if(twist_ratio < THR_REVERSE_TWIST && twist_ratio > THR_STD_TWIST){
					// check ratio relative to the other valid frequencies
					for(j = 0; j < FREQS_LOW; j++){
						if(j!=maxfreqbin[0] && maxval[0]/absfft[freq_low_bin[j]] < THR_LOW_RELATIVE){
							//failed low freq relative ratio threshold
							//printf("failed low freq relative ratio\n");
							return -4;
						}
					}
					for(j=0; j<FREQS_HIGH; j++){
						if(j!=maxfreqbin[1] && maxval[1]/absfft[freq_high_bin[j]] < THR_HIGH_RELATIVE){
							//failed high freq relative ratio threshold
							//printf("failed high freq relative ratio\n");
							return -4;
						}
					}
					// did not return above so go to next check
					// now check 2nd harmonic ratio
					if(maxval[0]/absfft[freq_low_harmonic_bin[maxfreqbin[0]]] < THR_LOW_2H){
						//failed low freq2nd harmonic ratio threshold
						//printf("failed low freq 2nd harmonic ratio\n");
						return -5;
					}
					if(maxval[1]/absfft[freq_high_harmonic_bin[maxfreqbin[1]]] < THR_HIGH_2H){
						//failed high freq 2nd harmonic ratio threshold
						//printf("failed high freq 2nd harmonic ratio\n");
						return -5;
					}
					// did not return above, so success, return tone
					return tones[i][2];
				}else{
                    //failed twist ratio
                    //printf("failed twist ratio\n");
					return -3;
				}
			}else{
                // failed sum threshold
                //printf("failed sum threshold - %d, %d\n", maxfreq[0], maxfreq[1]);
				return -2;
			}
		}
	}
    //failed to find valid tone combo
    //printf("no valid tones - %d, %d\n", maxfreq[0], maxfreq[1]);
    return -1; //Random error value
}


int detect_tone(float absfft[]) {
	int i;

	float maxval[2] = {0, 0};
	int maxfreq[2] = {0, 0};

	//Important only touch FFTSIZE/2, bogus data after that
	for(i = 0;i < FFTSIZE/2;i++) {
		if(absfft[i] > maxval[1]) {
			maxval[0] = maxval[1];
			maxfreq[0] = maxfreq[1];

			maxval[1] = absfft[i];
			maxfreq[1] = i;
		} else if(absfft[i] > maxval[0]) {
			maxval[0] = absfft[i];
			maxfreq[0] = i;
		}
	}

	maxfreq[0] = snapfreq(maxfreq[0]);
	maxfreq[1] = snapfreq(maxfreq[1]);

	if(maxfreq[0] == -1 || maxfreq[1] == -1) return -1; //Error value

	if(maxfreq[0] > maxfreq[1]) {
		int tmp = maxfreq[0];
		maxfreq[0] = maxfreq[1];
		maxfreq[1] = tmp;
	}

	for(i = 0;i < 12;i++) {
		if(tones[i][0] == maxfreq[0] && tones[i][1] == maxfreq[1]) {
			return tones[i][2];
		}
	}
	return -1; //Random error value
}

int snapfreq(int bin) {
	int valid_freq[7] = {697, 770, 852, 941, 1209, 1336, 1477};

	int val = bin*8000/FFTSIZE;
	int diff = 8000;
	int i, snapped;

	for(i = 0;i < 7;i++) {
		if(abs(valid_freq[i]-val) < diff) {
			diff = abs(valid_freq[i]-val);
			snapped = valid_freq[i];
		}
	}

	if(diff <= freq_snap_thres) {
		return snapped;
	} else {
		return -1;
	}

}

int abs(int val) {
	if(val < 0) return -val;
	else return val;
}
