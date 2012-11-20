#include <stdio.h>
#include <errno.h>
#include "lpc.h"
#include "classify.h"
#include "levinsondurbin.h"

//I/O files
#define IN_FILENAME "signal-echo.raw"
#define OUTPUT_FILENAME "output.raw"

//program defines
#define BLOCKSIZE 360
#define NUMCOEF 30

//program buffers
float a[NUMCOEF + 1];	// coefs; +1 because we index from 1
float e[BLOCKSIZE];		// error values

//I/O buffers
short DATA_IN_1[BLOCKSIZE];
short DATA_IN_2[BLOCKSIZE];
short *data_in;
short *data_in_old;
short DATA_OUT_1[BLOCKSIZE];
short DATA_OUT_2[BLOCKSIZE];
short *data_out;
short *data_out_old;

// temp function prototypes, to be moved to header file
void ideal_error(short *in, float *coef, int numcoef, short *in_old, float *error, int blocksize);
void reset(void);
void encode_block(short *in, short *in_old, float coef[], int numcoef, float error[], int blocksize);
void synthesize_block(float coef[], int numcoef, float error[], int blocksize, short *out, short *out_old);


int main() {
	FILE *infile, *outfile;
	int datacount;
	short *swap;

    /* Open the input file and quit if fail */
	infile = fopen(IN_FILENAME, "rb");
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

	reset();
	
	//init in pointers
	data_in = DATA_IN_1;
	data_in_old = DATA_IN_2;
	//init out pointers
	data_out = DATA_OUT_1;
	data_out_old = DATA_OUT_2;

	//Read in NN chunk
	do {
		datacount = fread(data_in, sizeof(short), BLOCKSIZE, infile);
		
		// encode the block for the receiver
		encode_block(data_in, data_in_old, a, NUMCOEF, e, BLOCKSIZE);

		synthesize_block(a, NUMCOEF, e, BLOCKSIZE, data_out, data_out_old);

		// wrtie out to file
		fwrite(data_out, sizeof(short), datacount, outfile);
		
		//switch old and new data buffers
		swap = data_out;
		data_out = data_out_old;
		data_out_old = swap;
		swap = data_in;
		data_in = data_in_old;
		data_in_old = swap;
	} while (datacount == BLOCKSIZE);

    /* Close the input and output files, this also flushes all
    * pending I/O, so that other programs can access the data. */
	fclose(infile);
	fclose(outfile);
}

void reset(void) {
	int i;

	for(i = 0;i < BLOCKSIZE;i++) {
		DATA_OUT_1[i] = DATA_OUT_2[i] = DATA_IN_1[i] = DATA_IN_2[i] = 0;
	}
}

void encode_block(short *in, short *in_old, float coef[], int numcoef, float error[], int blocksize){
	int i;

	// get a coeficients
	//levinson(in, blocksize, coef, numcoef);

	// get error
	// ideal error calc
	ideal_error(in, coef, numcoef, in_old, error, blocksize);
}

void synthesize_block(float coef[], int numcoef, float error[], int blocksize, short *out, short *out_old){
	int i, j;
	float approx;

	for(i = 0; i < blocksize; i++){
		approx = 0;
		for(j = 0; j < numcoef; j++){ //coefs indexed from 1
			if(i < numcoef){
				// use the old data in for the first numcoef values
				approx += a[j+1]*out_old[blocksize - (numcoef - j)];
			} else {
				// use the new data in for the consecutive ones
				approx += a[j+1]*out[i - numcoef + j];
			}
		}
		out[i] = error[i] + approx;
	}
}

void ideal_error(short *in, float *coef, int numcoef, short *in_old, float *error, int blocksize){
	int i, j;
	float approx;

	for(i = 0; i < blocksize; i++){
		approx = 0;
		for(j = 0; j < numcoef; j++){ //coefs indexed from 1
			if(i < numcoef){
				// use the old data in for the first numcoef values
				approx += a[j+1]*in_old[blocksize - (numcoef - j)];
			} else {
				// use the new data in for the consecutive ones
				approx += a[j+1]*in[i - numcoef + j];
			}
		}
		error[i] = in[i] - approx;
	}
}

