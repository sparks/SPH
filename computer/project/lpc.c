#include <stdio.h>
#include "lpc.h"
#include "classify.h"
#include "levinsondurbin.h"


//program defines
#define BLOCKSIZE 360
#define NUMCOEF 30

//program buffers
float a[NUMCOEF + 1];	// coefs; +1 because we index from 1
float e[BLOCKSIZE];		// error values

//I/O buffers
short DATA_IN[BLOCKSIZE];
short DATA_OUT_1[BLOCKSIZE];
short DATA_OUT_2[BLOCKSIZE];
short *data_out;
short *data_out_old;

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
	
	//init out pointers
	data_out = DATA_OUT_1;
	data_out_old = DATA_OUT_2;

	//Read in NN chunk
	do {
		datacount = fread(DATA_IN, sizeof(short), BLOCKSIZE, infile);
		
		// encode the block for the receiver
		encode_block(DATA_IN, a, NUMCOEF, e, BLOCKSIZE);

		synthesize_block(a, NUMCOEF, e, BLOCKSIZE, data_out, data_out_old);

		// wrtie out to file
		fwrite(data_out, sizeof(short), datacount, outfile);
		
		//switch data out and data out old
		*swap = out;
		out = out_old;
		out_old = swap;
	} while (datacount == BLOCKSIZE);

    /* Close the input and output files, this also flushes all
    * pending I/O, so that other programs can access the data. */
	fclose(infile);
	fclose(outfile);
}

void reset(void) {
	int i;

	for(i = 0;i < BLOCKSIZE;i++) {
		DATA_OUT_OLD[i] = 0;
	}
}

void encode_block(short in[], float a[], int numcoef, float e[], int blocksize){

}

void synthesize_block(float a[], int numcoef, float e[], int blocksize, short out[], short out_old[]){
	int i, j;
	float approx;

	for(i = 0; i <= blocksize; i++){
		approx = 0;
		for(j = 0; j <= numcoef; j++){ 
			approx += a[j + 1]*out_old[blocksize - (numcoef - j)];
		}
		out[i] = approx + e[i];
	}
}


