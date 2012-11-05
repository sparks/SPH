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

//Adaptive Filter Variables
#define mu 8.14748e8
#define L 51

//buffer length; must be a power of 2 for hardwar ciruclar addressing mode to function correctly
#define BUFFER_LEN 64

int error = 0;
Int16 sig_error = 0;

//array to store the filter coefficients
int w[L];

//input buffer variables
int buffer_index = 0;
int buffer[BUFFER_LEN];
#pragma DATA_ALIGN(buffer, 256)	//256 = 64 * 4 bytes; data must be byte aligned for circular addressing mode

//input and output variables
Uint32 in_tmp_left = 0, in_tmp_right = 0;
Int16 in_left = 0, in_right = 0, out_left = 0, out_right = 0;

//clock variables used for profiling
clock_t start, end, diff;

// input and output sample flags
// used to communicate between the main run loop and the interrupts
// to know when input/output samples are ready to be processes/output
// channel flag is used to switch between buffering left and right channels
volatile Uint8 input_ready = 0, output_ready = 0, in_channel_flag = 0, out_channel_flag = 0;

/**
 * main method
 * contains main run loop
 */
int main() {
	//prototype for linear assembly convolution function
	extern int convolve_as_func(int x[], int w[], int x_idx, int w_length);
	
	DSK6713_init();
	hCodec = DSK6713_AIC23_openCodec(0,&config);
	DSK6713_AIC23_setFreq(hCodec, DSK6713_AIC23_FREQ_8KHZ);

	// enable interrupts
	IRQ_globalEnable();
	IRQ_enable(IRQ_EVT_RINT1);
	IRQ_enable(IRQ_EVT_XINT1);
	
	reset();	// init the input buffer to zeros

	// get the time to make a clock() funciton call; used only for profiling
	/*
	start = clock();
	end = clock();
	diff = end - start;
	*/

	// the first write is needed to trigger the transmit interrupt
	while(!DSK6713_AIC23_write(hCodec, 0));
	in_channel_flag = 1;
	out_channel_flag = 1;

	while(1) {
		if(input_ready) {
			//process sample when input is ready
			sig_error = process_sample(in_left, in_right);
			input_ready = 0;
		}

		// set output when ready
		if(output_ready) {
			out_left = in_left;
			out_right = sig_error;
			output_ready = 0;
		}
	};
	

	/* The program will never exit this loop */
	/* However, if you _do_ exit the loop (say, using a break
	 * statement) close the D/A converter properly */
	DSK6713_AIC23_closeCodec(hCodec);
	exit();
}

/**
 * reset function to zero the input buffer
 */
void reset(void) {
	int i;

	for(i = 0;i < BUFFER_LEN;i++) {
		if(i < L) w[i] = 0;
		buffer[i] = 0;
	}
}

/**
 * Processes one input sample and returns one output sample
 * The first argument is the clean input channel
 * the second is the echo (noise) input channel
 */
Int16 process_sample(Int16 clean, Int16 echo) {
	int yw;

	buffer[buffer_index] = clean << 16; //Zero error introduced

	//start = clock();	//saves the clock count before the function call; used for performance profiling
	yw =  convolve_as_func(buffer, w, buffer_index, L); //Error indroduced and compounded with grad_desc
	//end = clock();	//saves the clock count after the function call; used for performance profiling
	//printf("%d\n", end - start - diff);	//prints the difference in clock count (including the time it takes to make the clock function call)
											//used for performance profiling

	buffer_index++;
	if(buffer_index >= 64) buffer_index = 0;

	error = (echo << 16) - yw; //No compounding error

	grad_desc(); //Error indroduced and compounded with grad_desc

	return error >> 16;
}

/**
 * Recalculates the filter coefficients based on the new error
 * and the adaptive filter variables
 */
void grad_desc(void) {
	int tmp;
	int i, tmp_b_index;

	//grad_desc is called after the buffer index is incremented
	//decrement the index to get the latest value
	tmp_b_index = buffer_index-1;

	for(i = 0;i < L;i++) {
		//circular input buffer, so wrap arround after the 0th index
		if(tmp_b_index < 0) tmp_b_index = BUFFER_LEN - 1;
		
		//update the filter coefficients
		//w[w_idx] = mu*error*x[x_idx]+w[w_idx]
		tmp = multiply(mu, error);
		tmp = multiply(tmp, buffer[tmp_b_index]);
		tmp += tmp + w[i];
		w[i] = tmp;

		tmp_b_index--;
	}
}

/**
 * 32-bit fixed point multiply function
 * casts the input to 64-bit ints in case the ouput is greater than can be stored in a 32 bit int
 */
int multiply(int a, int b) {
	long long t1, t2;
	t1 = a;
	t2 = b;

	return (t1 * t2) >> 31;
}

/** interrupts **/

/**
 * gets the left and right channel input then sets the data ready flag
 */
void receive_interrupt(void) {
	if(in_channel_flag){
		DSK6713_AIC23_read(hCodec, &in_tmp_left);

		in_left = (Int16)in_tmp_left;

		in_channel_flag = 0;
		input_ready = 1;
	} else {
		DSK6713_AIC23_read(hCodec, &in_tmp_right);

		in_right = (Int16)in_tmp_right;

		in_channel_flag = 1;
		input_ready = 1;
	}
}

/**
 * outputs the left and right channel then sets the output ready flag
 */
void transmit_interrupt(void) {
	if(out_channel_flag){
		DSK6713_AIC23_write(hCodec, out_left & 0xFFFF);

		out_channel_flag = 0;
		output_ready = 1;
	} else {
		DSK6713_AIC23_write(hCodec, out_right & 0xFFFF);

		out_channel_flag = 1;
		output_ready = 1;
	}
}

/**
 * C convolution implementation
 * input:
 *	circular input buffer,
 *	filter coefficient array,
 *	index of newsest input buffer value,
 * 	length of filter
 * output: convolution result
 *
 * note: the restrict keyword is a compiler directive to help with optimization
 */
int convolve_c(int x[restrict], int w[restrict], int x_idx, int w_length) {
	int i;
	int result = 0;
 
	// compiler directive, indicates the minimum loop iteration count
 	#pragma MUST_ITERATE(51)
	for(i = 0;i < w_length;i++) {
		//circular input buffer, so wrap arround after the 0th index
		if(x_idx < 0) x_idx = BUFFER_LEN - 1;
		result += multiply(w[i], x[x_idx]);
		x_idx --;
	}

	return result;
}

