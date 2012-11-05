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

#define DYN_MU_ENABLE

// Prototypes
void reset(void);
void process_block(short*, short*, short*, int);
short process_sample(short, short);
void grad_desc(void);
int convolve(int*, int*, int, int);
long variance(int*, int);
int multiply(int, int);

//Variables for File IO
short CLEAN_IN[BLOCKSIZE]; //16 bit values
short ECHO_IN[BLOCKSIZE];
short DATA_OUT[BLOCKSIZE];

//Adaptive Filter Variables
#define mu 5e7
#define dyn_mu 5e7
#define L 64

int error = 0;

int w[L];

int buffer_index = 0;
int buffer[L];

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

	reset();

	//Read in NN chunks
	do {
		datacount = fread(CLEAN_IN, sizeof(short), BLOCKSIZE, cleanfile);
		fread(ECHO_IN, sizeof(short), BLOCKSIZE, echofile); //Assume data count is always the same for both since they are stereo channels

		process_block(CLEAN_IN, ECHO_IN, DATA_OUT, datacount);

		fwrite(DATA_OUT, sizeof(short), datacount, outfile);
	} while (datacount == BLOCKSIZE);

	int i;
	for(i = 0;i < L;i++) {
		printf("%hi,", w[i]);
	}
	printf("\n");

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
	}
}

short process_sample(short clean, short echo) {
	int yw;

	buffer[buffer_index] = clean << 16; //Zero error introduced

	buffer_index++;
	if(buffer_index >= L) buffer_index = 0;

	yw = convolve(w, buffer, buffer_index, L); //Error indroduced and compounded with grad_desc

	error = (echo << 16) - yw; //No compounding error

	grad_desc(); //Error indroduced and compounded with grad_desc

	return error >> 16;
}

int convolve(int* a, int* b, int b_offset, int len) {
	int i;
	int result;
	
	result = 0;
 
	for(i = 0;i < len;i++) {
		if(b_offset >= len) b_offset = 0;
		result += multiply(a[len-1-i], b[b_offset]);
		b_offset++;
	}

	// if(result > 32767) {
	// 	printf("Overflow in conv: %i\n", result);
	// 	result = 32767;
	// } else if(result < -32768) {
	// 	printf("Overflow in conv: %i\n", result);
	// 	result = -32768;
	// }

	return result;
}

int multiply(int a, int b) {
	long t1, t2;
	t1 = a;
	t2 = b;

	return (t1 * t2) >> 31;
}

void grad_desc(void) {
	#ifdef DYN_MU_ENABLE
	long var;
	long tmp;
	#endif
	#ifndef DYN_MU_ENABLE
	int tmp;
	#endif
	int i, tmp_b_index;

	#ifdef DYN_MU_ENABLE
	var = variance(buffer, L);
	if(!var) return; //Void zero variance
	#endif

	tmp_b_index = buffer_index-1;

	for(i = 0;i < L;i++) {
		if(tmp_b_index < 0) tmp_b_index = L-1;
		#ifdef DYN_MU_ENABLE
		tmp = ((long)dyn_mu << 32) / (L*var);
		tmp = multiply(tmp, error);
		tmp = multiply(tmp, buffer[tmp_b_index]);
		tmp += w[i];

		w[i] = tmp;
		#else
		tmp = multiply(mu, error);
		tmp = multiply(tmp, buffer[tmp_b_index]);
		tmp += tmp + w[i];

		// if(tmp > 32767) {
		// 	printf("Overflow in grad %i\n", tmp);
		// 	tmp = 32767;
		// } else if(tmp < -32768) {
		// 	printf("Overflow in grad %i\n", tmp);
		// 	tmp = -32768;
		// }

		w[i] = tmp;
		#endif
		tmp_b_index--;
	}
}

long variance(int* signal, int len) {
	int i;
	long avg, var;

	avg = 0;
	for(i = 0;i < len;i++) {
		avg += signal[i];
	}

	avg = avg/len;

	var = 0;
	for(i = 0;i < len;i++) {
		var += multiply((signal[i]-avg), (signal[i]-avg));
	}

	var = var/(len-1);

	return var;
}

// (1)(0)
//   11
//   11
// ----
// 0011
// 0110
// ----
// 1001
// (3)(2)(1)(0)

// (0)(-1)
//   11
//   11
// ----
// 0011
// 0110
// ----
// 1001
// (1)(0)(-1)(-2)

// (-1)(-2)
//   11
//   11
// ----
// 0011
// 0110
// ----
// 1001
// (-1)(-2)(-3)(-4)