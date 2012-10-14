#include <dsk6713.h>
#include <dsk6713_aic23.h>
#include "touchtone.h"

Int16 process_sample(Int16 x);

void receive_interrupt(void);
void transmit_interrupt(void);

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

Uint32 left, right;
Int16 mix, audio_out;

volatile Uint8 audio_ready_flag, channel_flag;

int main() {
	DSK6713_init();
	hCodec = DSK6713_AIC23_openCodec(0,&config);
	DSK6713_AIC23_setFreq(hCodec, DSK6713_AIC23_FREQ_8KHZ);
	
	IRQ_globalEnable();
	IRQ_enable(IRQ_EVT_RINT1);
	IRQ_enable(IRQ_EVT_XINT1);

	while(!DSK6713_AIC23_write(hCodec, 0));

	channel_flag = 1;

	while(1) {
		if(audio_ready_flag) {
		    audio_out = process_sample(mix);
		    /* This next statement is not really necessary, andrremezFIRBP64ly to make the conversion from float to int explicit.       */
		    // write the sample to both channels
		    //while(!DSK6713_AIC23_write(hCodec, casted));

			audio_ready_flag = 0;
		}
	};

	/* The program will never exit this loop */
	/* However, if you _do_ exit the loop (say, using a break
	 * statement) close the D/A converter properly */
	DSK6713_AIC23_closeCodec(hCodec);
}

/* Process sampling function, outputs one filtered sample at a time */
Int16 process_sample(Int16 x) {
	return (Int16)x;
}


void receive_interrupt(void) {
	if(channel_flag){
		DSK6713_AIC23_read(hCodec, &left);
		channel_flag = 0;
	} else {
		DSK6713_AIC23_read(hCodec, &right);
		mix = ((Int16)left + (Int16)right)/2.0;
		channel_flag = 1;
	}

	audio_ready_flag = 1;
}

void transmit_interrupt(void) {
	DSK6713_AIC23_write(hCodec, audio_out & 0xFFFF);
}

