// ECSE 436 - Signal Processing Hardware
// Lab 3
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#include "main.h"

//#define TEXT_FILENAME "pulserecord.txt" //output file

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

FILE *textfile;

int out1, out2, out3;

Uint32 left = 0, right = 0;
Int16 mix = 0, audio_out = 0;

// input and output sample flags
// used to communicate between the main run loop and the interrupts
// to know when input/output samples are ready to be processes/output
// channel flag is used to switch between buffering left and right channels
volatile Uint8 input_ready = 0, output_ready = 0, channel_flag = 0;

//#define FFT_BUFF_LEN 100
//far float fft_buff[FFT_BUFF_LEN][FFTSIZE/2];
//int fft_buff_index = 0;

/**
 * main method
 * contains main run loop
 */
int main() {
	extern long long convolve_as_func(int w[], int x[], int n);
	/*
	DSK6713_init();
	hCodec = DSK6713_AIC23_openCodec(0,&config);
	DSK6713_AIC23_setFreq(hCodec, DSK6713_AIC23_FREQ_8KHZ);
	*/

	clock_t start, stop, overhead;

	int w[10] = {-7726, -5544, -3805, -919, -5055, 3105, -8432, 7087, 6867, 4660};
	int x[10] = {1439, 9921, -1472, -9800, -3391, 5708, 6408, 1202, -2568, 3993};
	short y[10] = {-7726, -5544, -3805, -919, -5055, 3105, -8432, 7087, 6867, 4660};
	short z[10] = {1439, 9921, -1472, -9800, -3391, 5708, 6408, 1202, -2568, 3993};
	int n = 10;

	start = clock();
	stop = clock();
	overhead = stop - start;

	start = clock();
	out1 = convolve(w, x, n);
	stop = clock();
	printf("convovle no opt cycles: %d\n", stop - start - overhead);

	start = clock();
	out2 = convolve_opt(w, x, n);
	stop = clock();
	printf("convovle opt cycles: %d\n", stop - start - overhead);

	start = clock();
	out3 = convolve_as_func(w, x, n);
	stop = clock();
	printf("convovle as cycles: %d\n", stop - start - overhead);

    /* Open the output file and quit if fail */
	/*
	textfile = fopen(TEXT_FILENAME,"wb");
	if (!textfile) {
		return 0;
	}
	*/
	
	// enable interrupts
	/*
	IRQ_globalEnable();
	IRQ_enable(IRQ_EVT_RINT1);
	IRQ_enable(IRQ_EVT_XINT1);
	*/

	// the first write is needed to trigger the transmit interrupt
	/*while(!DSK6713_AIC23_write(hCodec, 0));

	channel_flag = 1;

	while(1) {
		if(input_ready) {
			process_sample(mix);
			input_ready = 0;
		}
		if(output_ready > 1) {
			//audio_out = generate_pulse_sample();
			//audio_out = mix;
			output_ready = 0;
		}
	};
	*/

	/* The program will never exit this loop */
	/* However, if you _do_ exit the loop (say, using a break
	 * statement) close the D/A converter properly */
	 /*
	DSK6713_AIC23_closeCodec(hCodec);
	fclose(textfile); //And the textfile
	*/

	exit();
	
}


void process_sample(Int16 x) {

}


/** interrupts **/
void receive_interrupt(void) {
	if(channel_flag){
		DSK6713_AIC23_read(hCodec, &left);
		channel_flag = 0;
	} else {
		DSK6713_AIC23_read(hCodec, &right);
		mix = ((Int16)left + (Int16)right)/2.0;
		channel_flag = 1;
	}

	input_ready = 1;
}

void transmit_interrupt(void) {
	DSK6713_AIC23_write(hCodec, audio_out & 0xFFFF);
	if(output_ready <= 1) output_ready++;
}

long long convolve(int w[], int x[], int n) {
	int i = 0;
	int result = 0;

	for(; i < n; i++) {
		result += w[i]*x[n-1-i];
	}

	return result;
}

long long convolve_opt(int w[restrict], int x[restrict], int n) {
	int i = 0;
	int result = 0;

	#pragma MUST_ITERATE(10);
	for(; i < n; i++) {
		result += w[i]*x[n-1-i];
	}

	return result;
}


