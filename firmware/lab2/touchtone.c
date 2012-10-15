// ECSE 436 - Signal Processing Hardware
// Lab 2
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#include "fft.h"
#include "touchtone.h"

#define FFTSIZE 128  //File chunk read len
#define TEXT_FILENAME "pulserecord.txt" //output file

// threshold
#define THR_SIGNAL 50000.0      // sum of the magnitudes must be above this
#define THR_REVERSE_TWIST 2.0   // max ratio of lower to higher freq
#define THR_STD_TWIST  0.5      // max ratio of higher to lower freq
                                // to avoid division, this is actually the
                                // inverse ratio (1/2.0)

// note: the follwoing 6 defs are only used for the TI threshold detection
#define THR_LOW_RELATIVE 6.0    // min ratio of highest mag low freq to others
#define THR_HIGH_RELATIVE 6.0   // min ratio of highest mag high freq to others
#define THR_LOW_2H 2.0         // min ratio of low freq to its 2nd harmonic
#define THR_HIGH_2H 10.0        // min ratio of high freq to its 2nd harmonic

#define FREQS_LOW 4     //number of valid low freqs to check
#define FREQS_HIGH 3    // number of valid high freqs to check


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

int tones[12][3] = {
	{697, 1209, 1},
	{697, 1336, 2},
	{697, 1477, 3},
	{770, 1209, 4},
	{770, 1336, 5},
	{770, 1477, 6},
	{852, 1209, 7},
	{852, 1336, 8},
	{852, 1477, 9},
	{941, 1209, 10},
	{941, 1336, 0},
	{941, 1477, 11}
};

// note: these are only used in the TI thresholds detection function
int freq_low[] = {697, 770, 852, 941};
int freq_high[] = {1209, 1336, 1477};

// valid bins for 128 length fft
/*
int freq_low_bin[] = {11, 12, 14, 15};
int freq_high_bin[] = {19, 21, 23};
int freq_low_harmonic_bin[] = {22, 24, 26, 30};
int freq_high_harmonic_bin[] = { 38, 43, 47};
*/

// valid bins for 256 length fft
/*
int freq_low_bin[] = {22, 24, 28, 30};
int freq_high_bin[] = {38, 42, 47};
int freq_low_harmonic_bin[] = {44, 49, 54, 60};
int freq_high_harmonic_bin[] = { 77, 85, 94};
*/

// valid bins for 512 length fft
int freq_low_bin[] = {44, 49, 54, 60};
int freq_high_bin[] = {77, 85, 93};
int freq_low_harmonic_bin[] = {89, 98, 109, 120};
int freq_high_harmonic_bin[] = { 154, 171, 189};

char tonemap[12] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '*', '#'};

//Program variables
Int16 buffer[FFTSIZE];
int buffer_index = 0;

// Maximum length of digit sequence
// if sequence excedes this leght, digits will be lost
// note: required length was 20
#define TONE_BUF_LEN 30
int detected_tones[TONE_BUF_LEN] = {
	-1, -1, -1, -1, -1,
	-1, -1, -1, -1, -1,
	-1, -1, -1, -1, -1,
	-1, -1, -1, -1, -1,
	-1, -1, -1, -1, -1,
	-1, -1, -1, -1, -1
}
;

// 
int write_tone_index = 0, tone_index = 0, gap_flag = 1;

// pulse generation variables
int pulse_up = 8;		// sample length of output spike
int pulse_len = 800;	// default sample length of silence between pulses of same digit
						// this is the required default of 10Hz pulse rate

// initialized pulse generation state machine vars
int pulse_state = -1, pulse_tone_index = 0;
int pulse_sample_index = 0, pulse_tone_count = 0;
int pulse_tone_count_max = 0;
int sample_count = 0;
int tone_len_count = 0, gap_len_count = 0;

//Controllable detection params
int fft_interval = FFTSIZE;
int min_gap_len = 0;
int min_tone_len = 2;
int freq_snap_thres = 40;

float fft_array[FFTSIZE*2];
FILE *textfile;

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
	DSK6713_init();
	hCodec = DSK6713_AIC23_openCodec(0,&config);
	DSK6713_AIC23_setFreq(hCodec, DSK6713_AIC23_FREQ_8KHZ);

    /* Open the output file and quit if fail */
	textfile = fopen(TEXT_FILENAME,"wb");
	if (!textfile) {
		return 0;
	}
	
	// enable interrupts
	IRQ_globalEnable();
	IRQ_enable(IRQ_EVT_RINT1);
	IRQ_enable(IRQ_EVT_XINT1);

	// the first write is needed to trigger the transmit interrupt
	while(!DSK6713_AIC23_write(hCodec, 0));

	channel_flag = 1;

	while(1) {
		if(input_ready) {
			process_sample(mix);
			input_ready = 0;
		}
		if(output_ready > 1) {
			audio_out = generate_pulse_sample();
			//audio_out = mix;
			output_ready = 0;
		}
	};

	/* The program will never exit this loop */
	/* However, if you _do_ exit the loop (say, using a break
	 * statement) close the D/A converter properly */
	DSK6713_AIC23_closeCodec(hCodec);
	fclose(textfile); //And the textfile
}

/**
 * records the detected digits to an output file.
 *
 * note: will write to the end of file
 */
void record_tones_to_file(void) {
	for(;write_tone_index != (pulse_tone_index+1)%TONE_BUF_LEN;write_tone_index = (write_tone_index+1)%TONE_BUF_LEN) {
		fwrite(&tonemap[detected_tones[write_tone_index]], sizeof(char), 1, textfile);
	}
	// flushes write buffer to file
	fflush(textfile);
}

void record_fft_buff_to_file(void) {
/*	int i,j;
	for(i = 0;i < FFT_BUFF_LEN;i++) {
		for(j = 0;j < FFTSIZE/2;j++) {
			if(j != 0) fprintf(textfile, ", ");
			fprintf(textfile, "%f", fft_buff[i][j]);
		}
		fprintf(textfile, "\n");
	}
	fflush(textfile);
	fft_buff_index = 0;*/
}

/**
 * generates pulse to be output:
 */
Int16 generate_pulse_sample(void) {
	/**
	* Possible pusle_state values
	* -1 : Waiting for the first * term, rejecting all other input
	* 0 : Doing nothing, available to read and process another tone
	* 1 : Playing a tone
	* 2 : Last tone was a * indicating a speed change. Waiting for speed change tone
	* 3 : Play a pause between tones
	*/
	if(pulse_state != 1) { //If no playing
		if(pulse_tone_index == tone_index) { //No available tones
			return 0; //Output nothing
		} if(pulse_state == 3) { //Currently playing a pause
			pulse_sample_index++; //Increment pause counter
			if(pulse_sample_index > 4000) { //If paused long enough leave pause state
				pulse_state = 0;
				pulse_sample_index = 0;
			}
		} else { //We have available tones and are not in state 1 or state 3 (e.g. not currently in playback)
			//We will read a tone
			if(pulse_state == -1) { //Look for the first * character
				if(detected_tones[pulse_tone_index] == 10) { //If found go to neutral state
					pulse_state = 0;
				}
			} else if(detected_tones[pulse_tone_index] == 11) { //Look for the termination character
				//Write to file
				record_tones_to_file();
				pulse_state = -1; //Reset to startup state
				pulse_len = 800; //Reset to default pulse rate
			} else if(pulse_state == 0) { //Waiting for another tone
				if(detected_tones[pulse_tone_index] == 10) { //Got * in command change rate on next command
					pulse_state = 2;
				} else if(detected_tones[pulse_tone_index] < 10 && detected_tones[pulse_tone_index] >= 0) { //Start a tone
					pulse_state = 1; //Playback state

					pulse_tone_count_max = detected_tones[pulse_tone_index]; //Set the number of pulses to be output
					if(pulse_tone_count_max == 0) pulse_tone_count_max = 10; //Handle 0 -> 10 mapping

					//Clear playback variables
					pulse_tone_count = 0;
					pulse_sample_index = 0;
				}
			} else if(pulse_state == 2) { //We are waiting for a rate change
				if(detected_tones[pulse_tone_index] < 10) { //If it's not a number dump it
					//Set the new pulse len
					if(detected_tones[pulse_tone_index] == 0) pulse_len = 800; //Handle 0 -> 10 mapping, also the default speed
					else pulse_len = 8000/detected_tones[pulse_tone_index];
				}
				pulse_state = 0; //Regardless move to next default state
			}
			//Increment tone
			pulse_tone_index++;
			if(pulse_tone_index >= TONE_BUF_LEN) pulse_tone_index -= TONE_BUF_LEN;
		}
	} 

	if(pulse_state == 1) { //We are in playback
		if(pulse_sample_index < 8) { //In the "on" part of the period
			pulse_sample_index++;
			return 32767;
		} else if(pulse_sample_index < pulse_len) { //In the "off" part of the period
			pulse_sample_index++;
			return 0;
		} else {
			//Period over
			pulse_tone_count++; //Increment count for digit
			pulse_sample_index = 0;
			if(pulse_tone_count >= pulse_tone_count_max) { //If we are done go to pause state
				pulse_tone_count = 0;
				pulse_state = 3;
				return 0;
			}
		}
	}

	return 0; //Fallthrough default
}

/**
 * processes a new input sample:
 * adds the new sample to the buffer;
 * if there are enough new samples, performs fft on the samples;
 * then perfoms tone detection on the result of the fft,
 * validates the results and stacks any valid digits detected.
 */
void process_sample(Int16 x) {
	int i, tmp;

	buffer[buffer_index] = x; //Buffer input in a circular (not harware) buffer

	buffer_index++;
	if(buffer_index >= FFTSIZE) buffer_index = 0;

	sample_count++;
	if(sample_count < fft_interval) return; //Only compute the fft every fft_interval samples
	sample_count = 0;

	for(i = 0;i < FFTSIZE;i++) { //Copy data into the interleaved real/complex fft array
		tmp = buffer_index+i;
		if(tmp >= FFTSIZE) tmp -= FFTSIZE;
		fft_array[2*i] = buffer[tmp];
		fft_array[2*i+1] = 0;
	}

	fft(fft_array, FFTSIZE); //Perform FFT

	for(i = 0;i < FFTSIZE/2;i++) { //Compute the magnitude squared of the FFT (only below nyquist rate)
		fft_array[i] = (fft_array[2*i]*fft_array[2*i]+fft_array[2*i+1]*fft_array[2*i+1]); //reuse the same array to save memory
	//	fft_buff[fft_buff_index][i] = fft_array[i];
	}
//	fft_buff_index++;
//	if(fft_buff_index == FFT_BUFF_LEN) {
//		record_fft_buff_to_file();
//	}

	
	//Touch tone detection
	tmp = detect_tone(fft_array);

	if(tmp < 0) { //If negative we don't have a valid tone
		if(gap_len_count >= min_gap_len) { //Confirm the gap over min_gap_len FFT iterations
			gap_flag = 1; //Set a flag for the gap
		} else {
			gap_len_count++;
		}
	}

	//Rough stack process thing
	if(gap_flag) { //If preceeded by a gap
		if(tmp >= 0) { //And we have a valid tone
			if(tone_len_count >= min_tone_len) { //Confirm the tone over min_tone_len FFT iterations
				detected_tones[tone_index] = tmp; //Add tone to stack
				tone_index++; //Increment stack
				if(tone_index >= TONE_BUF_LEN) tone_index -= TONE_BUF_LEN; //Modulo
				if(tone_index == pulse_tone_index) { //Handle edge cases for wrap around
					pulse_tone_index++;
					if(pulse_tone_index >= TONE_BUF_LEN) {
						pulse_tone_index -= TONE_BUF_LEN;
					}
				}
				//Reset variables
				tone_len_count = 0;
				gap_flag = 0;
				gap_len_count = 0;
			} else {
				tone_len_count++;
			}
		}
	}

}

/**
 * detects tones from input absolute value fft array,
 * returns a valid digit, or else an error:
 * works by first finding the two max value bins in the fft array,
 * then tries to snap them to valid tone frequencies;
 * if valid tones are found, they are checked to be a valid tone combo.
 * finally a signal threshold test and then a twist ration test are preformed.
 * (twist ratio checks the relative magnitude of the two tones).
 */
int detect_tone(float absfft[]){
	int i;
	float twist_ratio;

	float maxval[2] = {0, 0};
	int maxfreq[2] = {0, 0};

	//Important only touch FFTSIZE/2, bogus data after that
	for(i = 0;i < FFTSIZE/2;i++) { //Find highest FFT bins
		if(absfft[i] > maxval[1]) {
			maxval[0] = maxval[1];
			maxfreq[0] = maxfreq[1];

			maxval[1] = absfft[i];
			maxfreq[1] = i;
		} else if(absfft[i] > maxval[0]) {
			maxval[0] = absfft[i];
			maxfreq[0] = i;
		}
	}

 	//Snap to a valid frequency if we are within the snap threshold otherwise we will get -1
	maxfreq[0] = snapfreq(maxfreq[0]);
	maxfreq[1] = snapfreq(maxfreq[1]);

	if(maxfreq[0] == -1 || maxfreq[1] == -1) return -1; //Error value
	
	//We have two valid bins
	if(maxfreq[0] > maxfreq[1]) { //Sort
		int tmp = maxfreq[0];
		maxfreq[0] = maxfreq[1];
		maxfreq[1] = tmp;
	}

	//Perform final checks return error or tone result
	for(i = 0;i < 12;i++) {
		if(tones[i][0] == maxfreq[0] && tones[i][1] == maxfreq[1]) {
			// check signal threshold
			if(maxval[0] + maxval[1] > THR_SIGNAL){
                // check twist ratios
				twist_ratio = maxval[0]/maxval[1];
				if(twist_ratio < THR_REVERSE_TWIST && twist_ratio > THR_STD_TWIST){
					return tones[i][2];
				}else{
					// failed twist ratio
					return -3;
				}
			}else{
				//failed signal threshold
				return -2;
			}
		}
	}
	return -1; //Random error value
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

/**
 * tries to snap the input frequency to one of the valid tone frequencies
 * returns snapped freq on success; -1 on failure
 */
int snapfreq(int bin) {
	int valid_freq[7] = {697, 770, 852, 941, 1209, 1336, 1477}; //Valid frequencies

	int val = bin*8000/FFTSIZE; //convert our bin to frequency via sampling rate
	int diff = 4000; //Maximum possible diff value
	int i, snapped;

	for(i = 0;i < 7;i++) { //For each valid tone
		if(absolute(valid_freq[i]-val) < diff) { //Look for the closest
			diff = absolute(valid_freq[i]-val);
			snapped = valid_freq[i];
		}
	}

	if(diff <= freq_snap_thres) { //If closest valid frequency is within freq_snap_thres return the valid snapped frequency
		return snapped;
	} else {
		return -1; //Otherwise return error code
	}

}

/**
 * computes the absolute value of input int
 */
int absolute(int val) {
	if(val < 0) return -val;
	else return val;
}

/**
 * detects tones from input absolute value fft array,
 * returns a valid digit, or else an error:
 * works by simply detecting the two highest value frequency bins,
 * tries to snap the those frequencies to the possible valid tone frequencies,
 * checks if this results in a valid tone combo,
 * and outputs a valid digit if it finds a valid tone combo.
 */
int detect_tone_maxbins(float absfft[]) {
	int i;

	float maxval[2] = {0, 0};
	int maxfreq[2] = {0, 0};

	//Important only touch FFTSIZE/2, bogus data after that
	for(i = 0;i < FFTSIZE/2;i++) {
		if(absfft[i] > maxval[1]) {
			maxval[0] = maxval[1];
			maxfreq[0] = maxfreq[1];

			maxval[1] = absfft[i];
			maxfreq[1] = i;
		} else if(absfft[i] > maxval[0]) {
			maxval[0] = absfft[i];
			maxfreq[0] = i;
		}
	}

	// attempts to snap the two detected frequencies ot one of the valid tone frequencies
	maxfreq[0] = snapfreq(maxfreq[0]);
	maxfreq[1] = snapfreq(maxfreq[1]);

	// both must have been detected as valid freqs, or else error value is returned
	if(maxfreq[0] == -1 || maxfreq[1] == -1) return -1; //Error value

	// sort the frequencies and amplitude values by increasing frequency
	// low freq must come first when checking if its a valid freq combo
	if(maxfreq[0] > maxfreq[1]) {
		int tmp = maxfreq[0];
		maxfreq[0] = maxfreq[1];
		maxfreq[1] = tmp;
	}

	// checks if its a valid tone freq combo
	for(i = 0;i < 12;i++) {
		if(tones[i][0] == maxfreq[0] && tones[i][1] == maxfreq[1]) {
			return tones[i][2];
		}
	}
	return -1; //Random error value
}

/**
 * NOTE: currently is not calibrated
 * detects tones from input absolute   value fft,
 * returns a valid digit, or else an error:
 * works by performing several threshold checks;
 * currently does not work.
 */
int detect_tone_TI_thresholds(float absfft[]) {
    // loop iteration vars
	int i,j;

	float maxval[2] = {0.0,0.0};
	int maxfreq[2] = {0,0};
	int maxfreqbin[2] = {0,0};

	float twist_ratio;

    //get highest mag low and high freq
	for(i = 0; i < FREQS_LOW; i++){
		if(maxval[0] < absfft[freq_low_bin[i]]){
			maxfreqbin[0] = i;
			maxfreq[0] = freq_low[i];
			maxval[0] = absfft[freq_low_bin[i]];
		}
	}
	for(i = 0; i < FREQS_HIGH; i++){
		if(maxval[1] < absfft[freq_high_bin[i]]){
			maxfreqbin[1] = i;
			maxfreq[1] = freq_high[i];
			maxval[1] = absfft[freq_high_bin[i]];
		}
	}

    // check if its a valid tone combo
	for(i = 0;i < 12;i++) {
		if(tones[i][0] == maxfreq[0] && tones[i][1] == maxfreq[1]) {
	    // check sum threshold
			if(maxval[0] + maxval[1] > THR_SIGNAL){
                // check twist ratios

				twist_ratio = maxval[0]/maxval[1];
				if(twist_ratio < THR_REVERSE_TWIST && twist_ratio > THR_STD_TWIST){
					
					// check ratio relative to the other valid frequencies
					for(j = 0; j < FREQS_LOW; j++){
						if(j!=maxfreqbin[0] && maxval[0]/absfft[freq_low_bin[j]] < THR_LOW_RELATIVE){
							//failed low freq relative ratio threshold
							return -4;
						}
					}
					for(j=0; j<FREQS_HIGH; j++){
						if(j!=maxfreqbin[1] && maxval[1]/absfft[freq_high_bin[j]] < THR_HIGH_RELATIVE){
							//failed high freq relative ratio threshold
							return -4;
						}
					}
					// did not return above so go to next check
					// now check 2nd harmonic ratio
					if(maxval[0]/absfft[freq_low_harmonic_bin[maxfreqbin[0]]] < THR_LOW_2H){
						//failed low freq2nd harmonic ratio threshold
						return -5;
					}
					if(maxval[1]/absfft[freq_high_harmonic_bin[maxfreqbin[1]]] < THR_HIGH_2H){
						//failed high freq 2nd harmonic ratio threshold
						return -5;
					}
					// did not return above, so success, return tone
					return tones[i][2];
				}else{
                    //failed twist ratio
					return -3;
				}
				
				return tones[i][2];
			}else{
                // failed sum threshold
				return -2;
			}
		}
	}
    //failed to find valid tone combo
    return -1; //Random error value
}
