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

int out1, out2, out3, out4;

//test values
int w[10] = {-7726, -5544, -3805, -919, -5055, 3105, -8432, 7087, 6867, 4660};
int x[16] = {-2568, 3993, 0, 0, 0, 0, 0, 0, 1439, 9921, -1472, -9800, -3391, 5708, 6408, 1202};
#pragma DATA_ALIGN(x, 64)

int n = 10;

//Adaptive Filter Variables
#define mu 5.14748e7
#define L 64

int error = 0;
Int16 sig_error = 0;

int w[L];

int buffer_index = 0;
int buffer[L];

Uint32 int_tmp_left = 0, in_tmp_right = 0;
Int16 in_left = 0, in_right = 0, out_left = 0; out_right = 0;

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
	extern int convolve_as_func(int x[], int w[], int x_idx, int w_length);
	/*
	DSK6713_init();
	hCodec = DSK6713_AIC23_openCodec(0,&config);
	DSK6713_AIC23_setFreq(hCodec, DSK6713_AIC23_FREQ_8KHZ);
	*/
	long long a = 1000<<16;
	long long b = 1000<<16;
	int c = 0;

	clock_t start, stop, overhead;

	int n = 10;
	
	c = (a*b)>>31;
	printf("%d\n", c);

	start = clock();
	stop = clock();
	overhead = stop - start;
	
	
	start = clock();
	out1 = convolve(x, w, 1, n);
	stop = clock();
	printf("convovle no opt cycles: %d\n", stop - start - overhead);

	/*
	start = clock();
	out2 = convolve_opt(w, x, n);
	stop = clock();
	printf("convovle opt cycles: %d\n", stop - start - overhead);
	*/
	start = clock();
	out3 = convolve_as_func(x, w, 1, n);
	stop = clock();
	printf("convovle as cycles: %d\n", stop - start - overhead);

	x[2] = -5458;
	out4 = convolve_as_func(x, w, 2, n);
	
	// enable interrupts
	IRQ_globalEnable();
	IRQ_enable(IRQ_EVT_RINT1);
	IRQ_enable(IRQ_EVT_XINT1);
	
	reset();

	// the first write is needed to trigger the transmit interrupt
	while(!DSK6713_AIC23_write(hCodec, 0));
	in_channel_flag = 1;
	out_channel_flag = 1;

	while(1) {
		if(input_ready) {
			sig_error = process_sample(in_left, in_right);
			input_ready = 0;
		}

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

void reset(void) {
	int i;

	for(i = 0;i < L;i++) {
		w[i] = 0;
		buffer[i] = 0;
	}
}

Int16 process_sample(Int16 clean, Int16 echo) {
	int yw;

	buffer[buffer_index] = clean << 16; //Zero error introduced

	buffer_index++;
	if(buffer_index >= L) buffer_index = 0;

	yw = convolve_c(w, buffer, buffer_index, L); //Error indroduced and compounded with grad_desc

	error = (echo << 16) - yw; //No compounding error

	grad_desc(); //Error indroduced and compounded with grad_desc

	return error >> 16;
}

void grad_desc(void) {
	int tmp;
	int i, tmp_b_index;

	tmp_b_index = buffer_index-1;

	for(i = 0;i < L;i++) {
		if(tmp_b_index < 0) tmp_b_index = 0;
		
		tmp = multiply(mu, error);
		tmp = multiply(tmp, buffer[tmp_b_index]);
		tmp += tmp + w[i];
		w[i] = tmp;

		tmp_b_index--;
	}
}

int multiply(int a, int b) {
	long long t1, t2;
	t1 = a;
	t2 = b;

	return (t1 * t2) >> 31;
}

/** interrupts **/

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

void transmit_interrupt(void) {
	if(out_channel_flag){
		DSK6713_AIC23_write(hCodec, out_left & 0xFFFF);

		in_channel_flag = 0;
		output_ready = 1;
	} else {
		DSK6713_AIC23_write(hCodec, out_right & 0xFFFF);

		out_channel_flag = 1;
		output_ready = 1;
	}
}

/** Convolutions **/

int convolve(int x[], int w[], int x_idx, int w_length) {
	int i = 0;
	int result = 0;

	for(; i < w_length; i++) {
		result += (long long)w[i]*(long long)x[x_idx];
		x_idx--;
		if(x_idx < 0)x_idx = 15;
	}

	return result;
}

int convolve_opt(Int16 w[restrict], Int16 x[restrict], int n) {
	int i = 0;
	int result = 0;

	#pragma MUST_ITERATE(10);
	for(; i < n; i++) {
		result += w[i]*x[n-1-i];
	}

	return result;
}

int convolve_c(int* a, int* b, int b_offset, int len) {
	int i;
	int result;
	
	result = 0;
 
	for(i = 0;i < len;i++) {
		if(b_offset >= len) b_offset = 0;
		result += multiply(a[len-1-i], b[b_offset]);
		b_offset++;
	}

	return result;
}
