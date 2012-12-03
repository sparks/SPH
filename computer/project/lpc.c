#include "lpc.h"

//I/O files
#define IN_FILENAME "signal-echo.raw"
#define OUTPUT_FILENAME "output.raw"

//File I/O buffers
#define BLOCKSIZE 180

short DATA_IN[BLOCKSIZE];
short DATA_OUT[BLOCKSIZE];

//program vars
#define NUMCOEF 10
#define GAINCOMP 2.0

//compresion
#define BITDEPTH 1

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

classification cl;

float e[BLOCKSIZE]; // ideal error values
int ebuf_index;
float ebuf[NUMCOEF]; //lookback buffer

short e_fixed_point[BLOCKSIZE];

int main() {
	// reset();
	// printf("%f\n", randomFloat());
	// printf("%f\n", randomFloat());
	// printf("%f\n", randomFloat());
	// printf("%f\n", randomFloat());
	// return 0;
	// float test[] = {1,2,3,4,5,6};
	// float ta[4];
	// levinson(test, 6, ta, 4);
	// printf("%f %f %f %f\n", ta[0], ta[1], ta[2], ta[3]);

	// printf("%f\n",rmsgain(test, 6));
	// float amdf[] = {0, 0, 0};
	// AMDF(test, 6, 3, amdf, 3, 10);
	// printf("%f %f %f\n", amdf[0], amdf[1], amdf[2]);

	// return 0;

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

	srand(time(NULL));
}

void process_block(short* in, short* out, int len) {
	int i;
	float scale = 1.0;

	for(i = 0;i < len;i++) {
		process_sample(in[i]);
	}

	//When input block has been filled and encode flag is raised by interrupt
	levinson(encodeptr, len, a, NUMCOEF);
	cl = classify(encodeptr, len);
	ideal_error(e, encodeptr, BLOCKSIZE, a, NUMCOEF);
	// synthesize_block_ideal(decodeptr, BLOCKSIZE, a, NUMCOEF, e);
	compress_fixed_point(e_fixed_point, e, BLOCKSIZE, BITDEPTH);
	scale = get_rms_scale_fixed_point_error(e, e_fixed_point, BLOCKSIZE, BITDEPTH);
	synthesize_block_fixed_point(decodeptr, BLOCKSIZE, a, NUMCOEF, e_fixed_point, BITDEPTH, scale);
	// synthesize_block_classify(decodeptr, BLOCKSIZE, a, NUMCOEF, cl);
	// synthesize_block_white(decodeptr, BLOCKSIZE, a, NUMCOEF);
	// synthesize_block_tonal(decodeptr, BLOCKSIZE, a, NUMCOEF, 70);

	//Raise decoded flag for reference

	for(i = 0;i < len;i++) {
		out[i] = generate_sample();
	}
}

//Stand in for the receive interrupt
void process_sample(short in) {
	inputptr[in_index] = toFloat(in);
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

	output = toShort(outputptr[out_index]);
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
			approx += a[j]*ebuf[(ebuf_index+numcoef-j-1)%numcoef];
		}
		
		ebuf[ebuf_index] = x[i];
		ebuf_index = (ebuf_index+1)%numcoef;

		error[i] = x[i] - approx;
	}
}

void compress_fixed_point(short *comp, float *x, int len, int bit_depth) {
	int i;

	for(i = 0; i < len; i++) {
		comp[i] = (toShort(x[i]) >> (16-bit_depth));
	}
}

void synthesize_block_ideal(float *x, int len, float *coef, int numcoef, float *error) {
	int i, j;
	float approx;

	for(i = 0; i < len; i++){
		approx = 0;
		for(j = 0; j < numcoef; j++){
			// use the old data in for the first numcoef values
			approx += a[j]*synthbuf[(synthbuf_index+numcoef-j-1)%numcoef];
		}

		x[i] = error[i] + approx;
		
		synthbuf[synthbuf_index] = x[i];
		synthbuf_index = (synthbuf_index+1)%numcoef;
	}
	//NB there's a synthesis error with the "last" block, but this will never happen in realtime since there is never a "last" block
}

void synthesize_block_fixed_point(float *x, int len, float *coef, int numcoef, short *error, int bit_depth, float scale) {
	int i, j;
	float approx;

	for(i = 0; i < len; i++){
		approx = 0;
		for(j = 0; j < numcoef; j++){
			// use the old data in for the first numcoef values
			approx += a[j]*synthbuf[(synthbuf_index+numcoef-j-1)%numcoef];
		}

		x[i] = toFloat((error[i] << (16-bit_depth)))/scale + approx;
		
		synthbuf[synthbuf_index] = x[i];
		synthbuf_index = (synthbuf_index+1)%numcoef;
	}
}

float get_rms_scale_fixed_point_error(float *error, short *error_fixp, int len, int bit_depth) {
	double rms_original = 0;
	double rms_fixp = 0;
	float scale = 1;
	int i = 0;

	for(i = 0; i < len; i++) {
		rms_original += pow(error[i], 2);
		rms_fixp += pow( toFloat((error_fixp[i] << (16 - bit_depth))), 2);
	}

	rms_original = rms_original/(double)len;
	rms_original = sqrt(fabs(rms_original));
	rms_fixp = rms_fixp/(double)len;
	rms_fixp = sqrt(fabs(rms_fixp));

	if(rms_original > 0.0)
		scale = (float)(rms_fixp/rms_original);

	return scale;
}


void synthesize_block_white(float *x, int len, float *coef, int numcoef) {
	classification cl;
	cl.type = WHITE;
	cl.gain = 0.05;
	cl.period = -1;
	synthesize_block_classify(x, len, coef, numcoef, cl);
}

void synthesize_block_tonal(float *x, int len, float *coef, int numcoef, int period) {
	classification cl;
	cl.type = TONAL;
	cl.gain = 0.1;
	cl.period = period;
	synthesize_block_classify(x, len, coef, numcoef, cl);
}

void synthesize_block_classify(float *x, int len, float *coef, int numcoef, classification cl) {
	int i, j;
	float approx, error;

	for(i = 0; i < len; i++){
		approx = 0;
		for(j = 0; j < numcoef; j++){
			// use the old data in for the first numcoef values
			approx += a[j]*synthbuf[(synthbuf_index+numcoef-j-1)%numcoef];
		}

		if(cl.type == WHITE) {
			error = randomFloat()*cl.gain*GAINCOMP;
		} else if(cl.type == TONAL) {
			if(i%cl.period == 0) {
				error = cl.gain*GAINCOMP;
			} else {
				error = 0;
			}
		} else {
			error = 0;
		}

		x[i] = error + approx;
		
		synthbuf[synthbuf_index] = x[i];
		synthbuf_index = (synthbuf_index+1)%numcoef;
	}
}

float randomFloat(void) {
      return (float)rand()/(float)RAND_MAX;
}

short toShort(float v) {
	return (short)(v*32768);
}

float toFloat(short v) {
	return ((float)v)/32768.0;
}