// ECSE 436 - Signal Processing Hardware
// Lab 2
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#include <errno.h>
#include <stdio.h>

#include "adaptivefilter.h"

#define BLOCKSIZE 8000  //File chunk read len
#define CLEAN_FILENAME "signal-echoL.raw"
#define ECHO_FILENAME "signal-echoR.raw"
#define OUTPUT_FILENAME "signal-echo-out.raw"

// Prototypes
void process_block(short*, short*, short*, int);

//Variables for File IO
short CLEAN_IN[BLOCKSIZE]; //16 bit values
short ECHO_IN[BLOCKSIZE];
short DATA_OUT[BLOCKSIZE];

//Program variables
short buffer[BLOCKSIZE];
int buffer_index;

int main() {
	FILE *cleanfile, *echofile, *outfile;
	int datacount;

    /* Open the input file and quit if fail */
	cleanfile = fopen(CLEAN_FILENAME, "rb");
	if (!cleanfile) {
		printf("fopen for reading failed with %d!\n", errno);
		return 0;
	}

    /* Open the input file and quit if fail */
	echofile = fopen(ECHO_FILENAME, "rb");
	if (!echofile) {
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
		datacount = fread(CLEAN_IN, sizeof(short), BLOCKSIZE, cleanfile);
		datacount = fread(ECHO_IN, sizeof(short), BLOCKSIZE, cleanfile);

		process_block(CLEAN_IN, ECHO_IN, DATA_OUT, datacount);

		fwrite(DATA_OUT, sizeof(short), datacount, outfile);
	} while (datacount == BLOCKSIZE);


    /* Close the input and output files, this also flushes all
    * pending I/O, so that other programs can access the data. */
	fclose(cleanfile);
	fclose(echofile);
	fclose(outfile);
}

/* Here is the definition of the block processing function */
void process_block(short *clean, short *echo, short *out, int size) {

}
