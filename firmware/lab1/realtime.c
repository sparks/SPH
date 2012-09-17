#include <dsk6713.h>
#include <dsk6713_aic23.h>

/* The declaration of your sample processing function */
float process_sample(float x);

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

main() {

	/* These variables are used to access the hardware */
	Uint32 x1,x2;
	Int16 y1;

	/* Working variables */

	float x,y;

	DSK6713_init();
	hCodec = DSK6713_AIC23_openCodec(0,&config);
	DSK6713_AIC23_setFreq(hCodec, DSK6713_AIC23_FREQ_8KHZ);

	while(1) {
	    /* Read a sample from each input channel.
	    * Note that the resulting data is a signed 16 bit int
	    * in the lower half of a 32 bit unsigned int. */
	    while(!DSK6713_AIC23_read(hCodec, &x1));
	    while(!DSK6713_AIC23_read(hCodec, &x2));
	    /* average the value read from the two input channels,
	    * and (implicitly) convert to float */
	    x = ((Int16)x1 + (Int16)x2)/2.0;
	    y = process_sample(x);
	    /* This next statement is not really necessary, and
	    * only to make the conversion from float to int explicit.       */
	    y1 = y;
	    // write the sample to both channels
	    while(!DSK6713_AIC23_write(hCodec, y1));
	    while(!DSK6713_AIC23_write(hCodec, y1));
	};

	/* The program will never exit this loop */
	/* However, if you _do_ exit the loop (say, using a break
	 * statement) close the D/A converter properly */
	DSK6713_AIC23_closeCodec(hCodec);
	
}

float process_sample(float x) {
}