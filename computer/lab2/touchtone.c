// ECSE 436 - Signal Processing Hardware
// Lab 2
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#include <errno.h>
#include <stdio.h>

#include "fft.h"
#include "touchtone.h"

#define BLOCKSIZE 128  //File chunk read len
#define INPUT_FILENAME "touchtones.raw"
#define OUTPUT_FILENAME "pulses.raw"

// Prototypes
void process_block(short*, int);
void process_sample(short);
int snapfreq(int);
int abs(int);
int detect_tone(float*);

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

char tonemap[12] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '*', '#'};

//Variables for File IO
short DATA_IN[BLOCKSIZE]; //16 bit values
short DATA_OUT[BLOCKSIZE];

//Program variables
short buffer[BLOCKSIZE];
int buffer_index;

int detected_tones[22] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
int tone_index = -1;
int last_tone;

int samplecount = 0;
int tone_len_count = 0;

//Controllable detection params
int dump = 0;
#define fftmode 0

int fft_interval = BLOCKSIZE/2;
int min_tone_len = 10;
int freq_snap_thres = 40;

float fft_array[BLOCKSIZE*2+fftmode];

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

	//Read in NN chunks
    do {
    	datacount = fread(DATA_IN, sizeof(short), BLOCKSIZE, infile);
    	process_block(DATA_IN, datacount);
    	// fwrite(DATA_OUT, sizeof(short), datacount, outfile);
    } while (datacount == BLOCKSIZE);

    if(!dump) printf("\n");

    /* Close the input and output files, this also flushes all
    * pending I/O, so that other programs can access the data. */
    fclose(infile);
    fclose(outfile);
}

/* Here is the definition of the block processing function */
void process_block(short *in, int size) {
	int i;
	for(i = 0;i < size;i++) {
		//Equivalent to main loop
		process_sample(in[i]);
	}
}

void process_sample(short in) {
	int i, tmp;

	buffer[buffer_index] = in;

	buffer_index++;
	if(buffer_index >= BLOCKSIZE) buffer_index = 0;

	samplecount++;
	if(samplecount < fft_interval) return;
	samplecount = 0;

	for(i = 0;i < BLOCKSIZE;i++) {
		tmp = buffer_index+i;
		if(tmp >= BLOCKSIZE) tmp -= BLOCKSIZE;
		fft_array[2*i+fftmode] = buffer[tmp];
		fft_array[2*i+1+fftmode] = 0;
	}

	if(fftmode == 1) fft2(fft_array, BLOCKSIZE);
	else fft(fft_array, BLOCKSIZE);

	for(i = 0;i < BLOCKSIZE/2;i++) {
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
	tmp = detect_tone(fft_array);

	//Rough stack process thing
	if(tmp == -1) {
		tone_len_count = 0;
		if(detectiondetected_tones[tone_index] = tmp;
		tone_index++;
	} else if(last_tone != tmp) {
		if(tone_len_count >= min_tone_len) {
			if(!dump) printf("%c, ", tonemap[tmp]);
			last_tone = tmp;
			tone_len_count = 0;
		}
		tone_len_count++;
	}

}

/** Detection junk below here */

int detect_tone(float absfft[]) {
	int i;

	float maxval[2] = {0, 0};
	int maxfreq[2] = {0, 0};

	//Important only touch BLOCKSIZE/2, bogus data after that
	for(i = 0;i < BLOCKSIZE/2;i++) {
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

	int val = bin*8000/BLOCKSIZE;
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