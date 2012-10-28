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
void reset(void);
void process_block(short*, short*, short*, int);
short process_sample(short, short);
void grad_desc(void);
short convolve(float*, short*, int, int);
short variance(short* signal, int len);

//Variables for File IO
short CLEAN_IN[BLOCKSIZE]; //16 bit values
short ECHO_IN[BLOCKSIZE];
short DATA_OUT[BLOCKSIZE];

//Adaptive Filter Variables
#define mu 0.08
#define L 50

short error;

float w[L];

int buffer_index;
short buffer[L];

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
		fread(ECHO_IN, sizeof(short), BLOCKSIZE, echofile); //Assume data count is always the same for both since they are stereo channels

		process_block(CLEAN_IN, ECHO_IN, DATA_OUT, datacount);

		fwrite(DATA_OUT, sizeof(short), datacount, outfile);
	} while (datacount == BLOCKSIZE);


    /* Close the input and output files, this also flushes all
    * pending I/O, so that other programs can access the data. */
	fclose(cleanfile);
	fclose(echofile);
	fclose(outfile);
}

void reset(void) {
	int i;

	for(i = 0;i < L;i++) {
		w[i] = 0;
		buffer[i] = 0;
	}
}

/* Here is the definition of the block processing function */
void process_block(short *clean, short *echo, short *out, int size) {
	int i;

	for(i = 0;i < size;i++) {
		out[i] = process_sample(clean[i], echo[i]);
		grad_desc();
	}
}

short process_sample(short clean, short echo) {
	short yw;

	buffer[buffer_index] = clean;

	buffer_index++;
	if(buffer_index > L) buffer_index = 0;

	yw = convolve(w, buffer, buffer_index, L);

	error = echo-yw;

	return error;
}

short convolve(float* a, short* b, int b_offset, int len) {
	int i;
	float result;

	for(i = 0;i < len;i++) {
		if(b_offset >= len) b_offset = 0;
		result += a[len-1-i] * b[b_offset];
		b_offset++;
	}

	return (short)result;
}

void grad_desc(void) {
	short var;
	int i, tmp_b_index;

	var = variance(buffer, L);
	if(!var) return; //Void zero variance

	tmp_b_index = buffer_index-1;

	for(i = 0;i < L;i++) {
		if(tmp_b_index < 0) tmp_b_index = 0;
		w[i] += mu / (L*var) * error * buffer[tmp_b_index];
		tmp_b_index--;
	}
}

short variance(short* signal, int len) {
	int i;
	float avg, var;

	avg = 0;
	for(i = 0;i < len;i++) {
		avg += signal[i];
	}

	avg = avg/len;

	var = 0;
	for(i = 0;i < len;i++) {
		var += (signal[i]-avg)*(signal[i]-avg);
	}

	var = var/(len-1);

	return (short)var;
}