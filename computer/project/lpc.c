#include <stdio.h>
#include <errno.h>

#include "lpc.h"
#include "classify.h"
#include "levinsondurbin.h"

//I/O files
#define IN_FILENAME "signal-echo.raw"
#define OUTPUT_FILENAME "output.raw"

//File I/O buffers
#define BLOCKSIZE 180

short DATA_IN[BLOCKSIZE];
short DATA_OUT[BLOCKSIZE];

//program vars
#define NUMCOEF 30

int in_index;
float *inputptr;
float *encodeptr;

int out_index;
float *decodeptr;
float *outputptr;

float *tmp;

//Ping pong buffers
float DATA_IN_1[BLOCKSIZE];
float DATA_IN_2[BLOCKSIZE];
float DATA_OUT_1[BLOCKSIZE];
float DATA_OUT_2[BLOCKSIZE];

//Other buffers
float a[NUMCOEF]; // coefs

int synthbuf_index;
float synthbuf[NUMCOEF]; //lookback buffer

float e[BLOCKSIZE]; // ideal error values
int ebuf_index;
float ebuf[NUMCOEF]; //lookback buffer

int main() {
	// float test[] = {1,2,3,4,5,6};
	// float ta[4];
	// levinson(test, 6, ta, 4);
	// printf("%f %f %f %f\n", ta[0], ta[1], ta[2], ta[3]);

	FILE *infile, *outfile;
	int datacount;

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
	
	//Read in NN chunk
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

void reset(void) {
	int i;

	for(i = 0;i < BLOCKSIZE;i++) {
		DATA_OUT_1[i] = DATA_OUT_2[i] = DATA_IN_1[i] = DATA_IN_2[i] = 0;
		e[i] = 0;
	}

	synthbuf_index = 0;
	ebuf_index = 0;

	for(i = 0;i < NUMCOEF;i++) {
		a[i] = 0;
		synthbuf[i] = 0;
		ebuf[i] = 0;
	}

	in_index = 0;
	inputptr = DATA_IN_1;
	encodeptr = DATA_IN_2;

	out_index = BLOCKSIZE; //TEMPORARY TO BE CHANGED FOR REALTIME
	decodeptr = DATA_IN_1;
	outputptr = DATA_IN_2;
}

void process_block(short* in, short* out, int len) {
	int i;

	for(i = 0;i < len;i++) {
		process_sample(in[i]);
	}

	//When input block has been filled and encode flag is raised by interrupt
	levinson(encodeptr, len, a, NUMCOEF);
	ideal_error(e, encodeptr, BLOCKSIZE, a, NUMCOEF);
	synthesize_block(decodeptr, BLOCKSIZE, a, NUMCOEF, e);
	//Raise decoded flag for reference

	for(i = 0;i < len;i++) {
		out[i] = generate_sample();
	}
}

//Stand in for the receive interrupt
void process_sample(short in) {
	inputptr[in_index] = ((float)in)/32768;
	in_index++;

	if(in_index == BLOCKSIZE) {
		in_index = 0;

		tmp = encodeptr;
		encodeptr = inputptr;
		inputptr = tmp;

		//Raise encode flag here
	}
}

short generate_sample(void) {
	short output;

	if(out_index == BLOCKSIZE) { //MOVE DOWN FOR REALTIME
		//Check decoded flag and see if we're moving fast enough ....
		out_index = 0;

		tmp = decodeptr;
		decodeptr = outputptr;
		outputptr = tmp;
	}

	output = (short)(outputptr[out_index]*32768);
	out_index++;

	return output;
}

void ideal_error(float *error, float *x, int len, float *coef, int numcoef) {
	int i, j;
	float approx;

	for(i = 0; i < len; i++){
		approx = 0;
		for(j = 0; j < numcoef; j++){
			// use the old data in for the first numcoef values
			approx += a[j]*ebuf[(ebuf_index+numcoef-j)%numcoef];
		}
		
		ebuf[ebuf_index] = x[i];
		ebuf_index = (ebuf_index+1)%numcoef;

		error[i] = x[i] - approx;
	}
}

void synthesize_block(float *x, int len, float *coef, int numcoef, float *error) {
	int i, j;
	float approx;

	for(i = 0; i < len; i++){
		approx = 0;
		for(j = 0; j < numcoef; j++){
			// use the old data in for the first numcoef values
			approx += a[j]*synthbuf[(synthbuf_index+numcoef-j)%numcoef];
		}
		
		synthbuf[synthbuf_index] = x[i];
		synthbuf_index = (synthbuf_index+1)%numcoef;

		x[i] = error[i] + approx;
	}
	//NB there's a synthesis error with the "last" block, but this will never happen in realtime since there is never a "last" block
}