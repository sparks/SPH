#include <dsk6713.h>
#include <dsk6713_aic23.h>
#include "realtime.h"

/* The declaration of your sample processing function */
Int16 process_sample(Int16 x);
void interruptTest(void);

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

int in_buf_index;
Int16 in_buf[FIRLEN];

Uint32 left, right;
Int16 mix, processed;

volatile Uint8 flag;
volatile Uint32 casted;

//left right flag
volatile Uint8 channel_flag;

int main() {

	/* These variables are used to access the hardware */
	

	//first write flag
	Uint8 first = 1;


	DSK6713_init();
	hCodec = DSK6713_AIC23_openCodec(0,&config);
	DSK6713_AIC23_setFreq(hCodec, DSK6713_AIC23_FREQ_8KHZ);
	
	IRQ_globalEnable();
	IRQ_enable(IRQ_EVT_RINT1);
	IRQ_enable(IRQ_EVT_XINT1);

	channel_flag = 1;
	while(1) {
	    /* Read a sample from each input channel.
	    * Note that the resulting data is a signed 16 bit int
	    * in the lower half of a 32 bit unsigned int. */

	    /* average the value read from the two input channels,
	    * and (implicitly) convert to float */


		if(flag) {
		    processed = process_sample(mix);
		    /* This next statement is not really necessary, andrremezFIRBP64ly to make the conversion from float to int explicit.       */
		    // write the sample to both channels
			casted = ((Int16)processed) & 0xFFFF;
			if(first){
		    	while(!DSK6713_AIC23_write(hCodec, casted));
				first = 0;
			}
		    //while(!DSK6713_AIC23_write(hCodec, casted));

			flag = 0;
		}
	};

	/* The program will never exit this loop */
	/* However, if you _do_ exit the loop (say, using a break
	 * statement) close the D/A converter properly */
	DSK6713_AIC23_closeCodec(hCodec);
}

/* Process sampling function, outputs one filtered sample at a time */
Int16 process_sample(Int16 x) {
	int i;
	float result = 0;
	// (secondary) fir buffer to allow for seperate blocks
	in_buf_index = (in_buf_index+1)%FIRLEN;

	in_buf[in_buf_index] = x;

	for(i = 0;i < FIRLEN;i++) {
		// applys the filter coeficients to the in samples
		result += remezFIRBP64[i]*(float)in_buf[(in_buf_index+i)%FIRLEN];
	}

	return x; //(Int16)result;
}


void interruptTest(void) {
	if(channel_flag){
		DSK6713_AIC23_read(hCodec, &left);
		channel_flag = 0;
	} else {
		DSK6713_AIC23_read(hCodec, &right);
		mix = ((Int16)left + (Int16)right)/2.0;
		channel_flag = 1;
	}

	flag = 1;
}

void transmit_interrupt(void) {
	DSK6713_AIC23_write(hCodec, casted);
}

