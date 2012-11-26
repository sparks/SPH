// ECSE 436 - Signal Processing Hardware
// Lab 3
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#include "main.h"

DSK6713_AIC23_Config config = {
    0x0017, /* 0 DSK6713_AIC23_LEFTINVOL Left line input channel volume */
    0x0017, /* 1 DSK6713_AIC23_RIGHTINVOL Right line input channel volume */
    0x01f9, /* 2 DSK6713_AIC23_LEFTHPVOL Left channel headphone volume */
    0x01f9, /* 3 DSK6713_AIC23_RIGHTHPVOL Right channel headphone volume */
    0x0011, /* 4 DSK6713_AIC23_ANAPATH Analog audio path control */
    0x0000, /* 5 DSK6713_AIC23_DIGPATH Digital audio path control */
    0x0000, /* 6 DSK6713_AIC23_POWERDOWN Power down control */
    0x0043, /* 7 DSK6713_AIC23_DIGIF Digital audio interface format */
    0x0081, /* 8 DSK6713_AIC23_SAMPLERATE Sample rate control */
    0x0001 /* 9 DSK6713_AIC23_DIGACT Digital interface activation */
};

DSK6713_AIC23_CodecHandle hCodec;

Uint32 in_tmp = 0, out_tmp = 0;

// input and output sample flags
// used to communicate between the main run loop and the interrupts
// to know when input/output samples are ready to be processes/output
// channel flag is used to switch between buffering left and right channels
volatile Uint16 in_channel_flag = 0, out_channel_flag = 0, encode_flag = 0, decode_flag = 0;

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

/**
 * main method
 * contains main run loop
 */
int main() {
	DSK6713_init();
	hCodec = DSK6713_AIC23_openCodec(0,&config);
	DSK6713_AIC23_setFreq(hCodec, DSK6713_AIC23_FREQ_8KHZ);

	// enable interrupts
	IRQ_globalEnable();
	IRQ_enable(IRQ_EVT_RINT1);
	IRQ_enable(IRQ_EVT_XINT1);
	
	reset(); // init the input buffer to zeros

	// the first write is needed to trigger the transmit interrupt
	while(!DSK6713_AIC23_write(hCodec, 0));
	in_channel_flag = 1;
	out_channel_flag = 1; //Set L/R initial

	while(1) {
		if(encode_flag) {
			encode_flag = 2;
			levinson(encodeptr, BLOCKSIZE, a, NUMCOEF);
			encode_flag = 3;
			ideal_error(e, encodeptr, BLOCKSIZE, a, NUMCOEF);
			encode_flag = 0;
			//encodeptr only cares that this point is reached before the next buffer swap

			//Should we ping pong the a/e array aswell?
			decode_flag = 1;
			synthesize_block_ideal(decodeptr, BLOCKSIZE, a, NUMCOEF, e);
			decode_flag = 0;
			//There is some serious timing issues with the decode buffre we need a diagram ....


			// ideal_error(e, encodeptr, BLOCKSIZE, a, NUMCOEF);
			// compress_fixed_point(e_fixed_point, e, BLOCKSIZE, 8);
			// synthesize_block_fixed_point(decodeptr, BLOCKSIZE, a, NUMCOEF, e_fixed_point, 8);

			// cl = classify(encodeptr, BLOCKSIZE);
			// synthesize_block_classify(decodeptr, BLOCKSIZE, a, NUMCOEF, cl);

			// synthesize_block_white(decodeptr, BLOCKSIZE, a, NUMCOEF);
			// synthesize_block_tonal(decodeptr, BLOCKSIZE, a, NUMCOEF, 70);
		}
	};
	

	/* The program will never exit this loop */
	/* However, if you _do_ exit the loop (say, using a break
	 * statement) close the D/A converter properly */
	DSK6713_AIC23_closeCodec(hCodec);
	exit(0);
}

/**
 * reset function to zero the input buffer
 */
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

 //Stand in for the receive interrupt
 void process_sample(short in) {
 	inputptr[in_index] = toFloat(in);
 	in_index++;

 	if(in_index == BLOCKSIZE) {
 		in_index = 0;

 		tmp = encodeptr;
 		encodeptr = inputptr;
 		inputptr = tmp;

 		if(encode_flag > 0) {
 			//bad we didn't process before the next full buf
 		}
 		encode_flag = 1;
 	}
 }

 short generate_sample(void) {
 	short output;

 	output = toShort(outputptr[out_index]);
 	out_index++;

 	if(out_index == BLOCKSIZE) { //MOVE DOWN FOR REALTIME
 		if(decode_flag > 1) {
 			//Inside a synthesis block, do not swap 
 			out_index--;
 		} else {
	 		out_index = 0;

	 		tmp = decodeptr;
	 		decodeptr = outputptr;
	 		outputptr = tmp;
	 	}
 	}

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

 void synthesize_block_fixed_point(float *x, int len, float *coef, int numcoef, short *error, int bit_depth) {
 	int i, j;
 	float approx;

 	for(i = 0; i < len; i++){
 		approx = 0;
 		for(j = 0; j < numcoef; j++){
 			// use the old data in for the first numcoef values
 			approx += a[j]*synthbuf[(synthbuf_index+numcoef-j-1)%numcoef];
 		}

 		x[i] = toFloat((error[i] << (16-bit_depth))) + approx;
 		
 		synthbuf[synthbuf_index] = x[i];
 		synthbuf_index = (synthbuf_index+1)%numcoef;
 	}
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

/** interrupts **/

/**
 * gets the left and right channel input
 */
void receive_interrupt(void) {
	if(in_channel_flag){
		DSK6713_AIC23_read(hCodec, &in_tmp);

		process_sample((Int16)in_tmp);

		in_channel_flag = 0;
	} else {
		DSK6713_AIC23_read(hCodec, &in_tmp);

		//Ignore right channel

		in_channel_flag = 1;
	}
}

/**
 * outputs the left and right channel
 */
void transmit_interrupt(void) {
	if(out_channel_flag){
		out_tmp = generate_sample() & 0xFFFF;
		DSK6713_AIC23_write(hCodec, out_tmp);

		out_channel_flag = 0;
	} else {
		DSK6713_AIC23_write(hCodec, out_tmp);

		out_channel_flag = 1;
	}
}

