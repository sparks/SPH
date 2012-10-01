// ECSE 436 - Signal Processing Hardware
// Lab 1
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#include <dsk6713.h>
#include <dsk6713_aic23.h>
#include "touchtone.h"

void tone(int);
void output(float);
void process_sample(float);
void process_FFT(void);
void adc_interrupt(void)

/* The declaration of your sample processing function */
Int16 process_sample(Int16 x);

DSK6713_AIC23_Config config = {
    0x001C, /* 0 DSK6713_AIC23_LEFTINVOL Left line input channel volume */
    0x001C, /* 1 DSK6713_AIC23_RIGHTINVOL Right line input channel volume */
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
boolean adcFlag;

int main(void) {

	/* These variables are used to access the hardware */
	Uint32 x1,x2,casted;

	/* Working variables */

	Int16 x,y;

	DSK6713_init();
	hCodec = DSK6713_AIC23_openCodec(0,&config);
	DSK6713_AIC23_setFreq(hCodec, DSK6713_AIC23_FREQ_8KHZ);

	while(1) {
		if(adcFlag) {
			process_sample(mix);
			adcFlag = false;
		}
	};

	DSK6713_AIC23_closeCodec(hCodec);
}

void adc_interrupt(void) {
	Uint32 left, right;
	float mix;

	DSK6713_AIC23_read(hCodec, &left);
	DSK6713_AIC23_read(hCodec, &right);
	mix = ((Int16)left + (Int16)right)/2.0;

}

void output(float mix) {
	Uint32 casted;

	casted = ((Int16)float) & 0xFFFF;
	while(!DSK6713_AIC23_write(hCodec, casted));
	while(!DSK6713_AIC23_write(hCodec, casted));

	adcFlag = true;
}

/* Process sampling function, outputs one filtered sample at a time */
void process_sample(float x) {
	//Buffer
	//FFT
	//When new FFT -> call processFFT()
}

void process_FFT() {
	//Compute mag?
	//Look at bins, maybe average, then threshold
	//Determine what's happended based on simple state machine
	//New tone -> call tone()
	//Continued tone or no tone -> Do nothing
}

void tone(int tone) {
	//This is called only when a tone starts
	//Add the tone to some stack and write to file to record the tone
	//Initiate the pulse thing aswell
	//Whatever else
}
