#include <stdio.h>
#include <errno.h>
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
short DATA_IN[BLOCKSIZE];
short DATA_OUT[BLOCKSIZE];

/* declare the block processing function */
void process_block(short *in, short *out, int size);
float process_sample(float x);

int main() {

	FILE *infile, *outfile;
	int datacount;
	
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

}

/* Here is the definition of the block processing function */
void process_block(short *in, short *out, int size) {
	for(int i = 0;i < size;i++) {
		*out = *in;
		out++;
		in++;
	}
}

/* You could also have a function working on a sample by sample basis */
float process_sample(float x) {
	return 0.0;
}