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

// Prototypes
void process_block(short*, int);
void process_sample(short);
int snapfreq(int);
int abs(int);
int detect_tone(float*);

//Variables
short DATA_IN[BLOCKSIZE]; //16 bit value
short buffer[BLOCKSIZE];

int samplecount = 0;

int last_tone = -1;
int tone_len_count = 0;

//Controllable params
int dump = 0;
int fftmode = 0;
int fft_interval = BLOCKSIZE/2;
int min_tone_len = 10;
int freq_snap_thres = 40;

int main() {
	FILE *infile;
	int datacount;
	
    /* Open the input file and quit if fail */
	infile = fopen(INPUT_FILENAME, "rb");
	if (!infile) {
		printf("fopen for reading failed with %d!\n", errno);
		return 0;
	}

	if(!dump) printf("10, 0, 1, 5, 1, 4, 3, 9, 8, 2, 7, 2, 6, 2, 5, 1, 0, 6, 3, 11\n");

	//Read in NN chunks
    do {
    	datacount = fread(DATA_IN, sizeof(short), BLOCKSIZE, infile);
    	process_block(DATA_IN, datacount);
    } while (datacount == BLOCKSIZE);

    if(!dump) printf("\n");

    /* Close the input and output files, this also flushes all
    * pending I/O, so that other programs can access the data. */
    fclose(infile);
}

/* Here is the definition of the block processing function */
void process_block(short *in, int size) {
	int i;
	for(i = 0;i < size;i++) {
		process_sample(in[i]);
	}
}

void process_sample(short in) {
	int i;

	for(i = 0;i < BLOCKSIZE-1;i++) {
		buffer[i] = buffer[i+1];
	}

	buffer[BLOCKSIZE-1] = in;

	samplecount++;

	if(samplecount == fft_interval) {
		samplecount = 0;
	} else {
		return;
	}

	float fftdata[BLOCKSIZE*2+fftmode];

	for(i = 0;i < BLOCKSIZE;i++) {
		fftdata[2*i+fftmode] = buffer[i];
		fftdata[2*i+1+fftmode] = 0;
	}

	if(fftmode == 1) fft2(fftdata, BLOCKSIZE);
	else fft(fftdata, BLOCKSIZE);

	float absfft[BLOCKSIZE];

	for(i = 0;i < BLOCKSIZE;i++) {
		absfft[i] = (fftdata[2*i+fftmode]*fftdata[2*i+fftmode]+fftdata[2*i+1+fftmode]*fftdata[2*i+1+fftmode]);

		if(dump) {
			if(i != 0) printf(", ");
			printf("%f", absfft[i]);
		}
	}

	if(dump) {
		printf("\n");
		return;
	}

	//Touch tone detection
	int new_tone = detect_tone(absfft);

	//Rough stack process thing
	if(new_tone == -1) {
		tone_len_count = 0;
	} else if(last_tone != new_tone) {
		if(tone_len_count >= min_tone_len) {
			if(!dump) printf("%i, ", new_tone);
			last_tone = new_tone;
			tone_len_count = 0;
		}
		tone_len_count++;
	}

}

int detect_tone(float absfft[]) {
	int i;

	float maxval[2] = {0, 0};
	int maxfreq[2] = {0, 0};

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