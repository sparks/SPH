// ECSE 436 - Signal Processing Hardware
// Lab 1
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#include <errno.h>
#include <stdio.h>
#include "fileio.h"

/*
* To process audio data in 1s chunks, the block should
* contain fs number of samples. However, you can
* make this number as large as memory allows.
*/
#define BLOCKSIZE 8000
/* This is the filename of the input and output files */
#define INPUT_FILENAME "speech_in.raw"
#define OUTPUT_FILENAME "speech_out.raw"

/*
* Declare two global arrays in the far section to
* process the data.
*/
far short DATA_IN[BLOCKSIZE]; //was far short
far short DATA_OUT[BLOCKSIZE]; //was far short

int in_buf_index;
short in_buf[FIRLEN];

/* declare the block processing function */
void process_block(short *in, short *out, int size);
short process_sample(short x);

int main() {
	int i;

	FILE *infile, *outfile;
	int datacount;
	
	in_buf_index = 0;
	for(i = 0;i < FIRLEN;i++) in_buf[i] = 0;

    /* Open the input file and quit if fail */
	infile = fopen(INPUT_FILENAME,"rb");
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

    /* Main loop: read a block of data, process it, then
    * write the result to disk. The loop will terminate
    * if less than BLOCKSIZE samples have been read from
    * the input file, indicating that the end of file has
    * been reached. */
    do {
    	datacount = fread(DATA_IN, sizeof(short), BLOCKSIZE, infile);
    	process_block(DATA_IN, DATA_OUT, datacount);
    	fwrite(DATA_OUT, sizeof(short), datacount, outfile);
    } while (datacount == BLOCKSIZE);

    /* Close the input and output files, this also flushes all
    * pending I/O, so that other programs can access the data. */
    fclose(infile);
    fclose(outfile);

	// exit to stop program when finished (otherwise keeps going forever)
	exit();	// comment out if not compiling in Code Composer
}

/* Here is the definition of the block processing function */
void process_block(short *in, short *out, int size) {
	int i;
	for(i = 0;i < size;i++) {
		*out = process_sample(*in);
		out++; in++;
	}
}

/* Process sampling function, outputs one filtered sample at a time */
short process_sample(short x) {
	int i;
	float result = 0;

	// fir buffer stores the previous FIRLEN (number of fir coefficients)
        // samples
	in_buf_index = (in_buf_index+1)%FIRLEN;

	in_buf[in_buf_index] = x;

	for(i = 0;i < FIRLEN;i++) {
		// applys the filter coeficients to the in samples
		result += kaiserBP53[i]*in_buf[(in_buf_index+i)%FIRLEN];
	}

	return (short)result;
}
