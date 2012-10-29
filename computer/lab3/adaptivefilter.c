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
float process_sample(float, float);
void grad_desc(void);
float convolve(float*, float*, int, int);
float variance(float*, int);
short toShort(float);
float toFloat(short);

//Variables for File IO
short CLEAN_IN[BLOCKSIZE]; //16 bit values
short ECHO_IN[BLOCKSIZE];
short DATA_OUT[BLOCKSIZE];

//Adaptive Filter Variables
#define mu 0.03
#define L 76

float error = 0;

float w[L];

int buffer_index = 0;
float buffer[L];

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
		out[i] = toShort(process_sample(toFloat(clean[i]), toFloat(echo[i])));
	}
}

short toShort(float v) {
	return (short)(v*32768);
}

float toFloat(short v) {
	return ((float)v)/32768.0;
}

float process_sample(float clean, float echo) {
	float yw;

	buffer[buffer_index] = clean;

	buffer_index++;
	if(buffer_index >= L) buffer_index = 0;

	yw = convolve(w, buffer, buffer_index, L);

	error = echo-yw;

	grad_desc();

	return error;
}

float convolve(float* a, float* b, int b_offset, int len) {
	int i;
	float result;
	
	result = 0;

	for(i = 0;i < len;i++) {
		if(b_offset >= len) b_offset = 0;
		result += a[len-1-i] * b[b_offset];
		b_offset++;
	}

	return result;
}

void grad_desc(void) {
	float var;
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

float variance(float* signal, int len) {
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

	return var;
}