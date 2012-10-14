// ECSE 436 - Signal Processing Hardware
// Lab 1
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#include <errno.h>
#include <stdio.h>
#include <math.h>

#include "touchtone.h"

#define SWAP(a, b) tempr=(a);(a)=(b);(b)=tempr

#define BLOCKSIZE 128  //File chunk read len
#define INPUT_FILENAME "touchtones.raw"

// Prototypes
void process_block(short*, int);
void process_sample(short);
void fft(float[], unsigned int);
void fft2(float[], unsigned int);
int snapfreq(int);
int abs(int);

//Variables
short DATA_IN[BLOCKSIZE]; //16 bit value
short buffer[BLOCKSIZE];

int samplecount = 0;

int last_tone = -5;
int bufcount = 0;

int dump = 0;

int main() {
	FILE *infile;
	int datacount;
	
    /* Open the input file and quit if fail */
	infile = fopen(INPUT_FILENAME, "rb");
	if (!infile) {
		printf("fopen for reading failed with %d!\n", errno);
		return 0;
	}

	if(!dump) printf("-1, 0, 1, 5, 1, 4, 3, 9, 8, 2, 7, 2, 6, 2, 5, 1, 0, 6, 3, -2\n");

	//Read in NN chunks
    do {
    	datacount = fread(DATA_IN, sizeof(short), BLOCKSIZE, infile);
    	process_block(DATA_IN, datacount);
    } while (datacount == BLOCKSIZE);

    if(!dump) printf("\n");

    /* Close the input and output files, this also flushes all
    * pending I/O, so that other programs can access the data. */
    fclose(infile);
}

/* Here is the definition of the block processing function */
void process_block(short *in, int size) {
	int i;
	for(i = 0;i < size;i++) {
		process_sample(in[i]);
	}
}

void process_sample(short in) {
	int i;

	for(i = 0;i < BLOCKSIZE-1;i++) {
		buffer[i] = buffer[i+1];
	}

	buffer[BLOCKSIZE-1] = in;

	samplecount++;

	if(samplecount == BLOCKSIZE) {
		samplecount = 0;
	} else {
		return;
	}

	int fftmode = 0;

	float fftdata[BLOCKSIZE*2+fftmode];

	for(i = 0;i < BLOCKSIZE;i++) {
		fftdata[2*i+fftmode] = buffer[i];
		fftdata[2*i+1+fftmode] = 0;
	}

	if(fftmode == 1) fft2(fftdata, BLOCKSIZE);
	else fft(fftdata, BLOCKSIZE);

	float absfft[BLOCKSIZE];

	float maxval[2] = {0, 0};
	int maxfreq[2] = {0, 0};

	for(i = 0;i < BLOCKSIZE;i++) {
		absfft[i] = (fftdata[2*i+fftmode]*fftdata[2*i+fftmode]+fftdata[2*i+1+fftmode]*fftdata[2*i+1+fftmode]);

		if(dump) {
			if(i != 0) printf(", ");
			printf("%f", absfft[i]);
		}
	}

	if(dump) {
		printf("\n");
		return;
	}

	for(i = 0;i < BLOCKSIZE/2;i++) {
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

	maxfreq[0] = snapfreq(maxfreq[0]);
	maxfreq[1] = snapfreq(maxfreq[1]);

	if(maxfreq[0] == -1 || maxfreq[1] == -1) return;

	if(maxfreq[0] > maxfreq[1]) {
		int tmp = maxfreq[0];
		maxfreq[0] = maxfreq[1];
		maxfreq[1] = tmp;
	}

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
		{941, 1209, -1},
		{941, 1336, 0},
		{941, 1477, -2}
	};

	for(i = 0;i < 12;i++) {
		if(tones[i][0] == maxfreq[0] && tones[i][1] == maxfreq[1]) {
			if(last_tone != tones[i][2]) {
				if(bufcount > 4) {
					if(!dump) printf("%i, ", tones[i][2]);
					last_tone = tones[i][2];
					bufcount = 0;
				}
				bufcount++;
			}
		}
	}
}

int snapfreq(int bin) {
	int valid_freq[7] = {697, 770, 852, 941, 1209, 1336, 1477};

	int val = bin*8000/BLOCKSIZE;
	int thres = 40;
	int diff = 8000;
	int i, snapped;

	for(i = 0;i < 7;i++) {
		if(abs(valid_freq[i]-val) < diff) {
			diff = abs(valid_freq[i]-val);
			snapped = valid_freq[i];
		}
	}

	if(diff <= thres) {
		return snapped;
	} else {
		return -1;
	}

}

int abs(int val) {
	if(val < 0) return -val;
	else return val;
}

//Replaces data[1..2 * nn] by its discrete Fourier transform.
//data is a complex array of length nn or, equivalently, a real array of length 2 * nn. nn MUST
//be an integer power of 2 (this is not checked for!).
void fft(float data[], unsigned int nn) {
	unsigned long n, dftlen, m, j, istep, i;
	double wtemp, w_real_cur, w_real_incr, w_imag_incr, w_imag_cur, theta; //Double precision for the trigonometric recurrences.
	float tempr, tempi;
	n = nn << 1; //nn * 2 since we are using a double spaced array for real and complex
	j = 0; //Align to 0 boudary

	//This is the bit-reversal algorithm
	for (i = 0;i < n;i += 2) { //Increments of 2 because of real/complex double spacing
		if (j > i) { //If j > i we haven't already made the swap, so swap
			//Exchange the two complex numbers.
			SWAP(data[j], data[i]);  //Exchange real part
			SWAP(data[j + 1], data[i + 1]); //Exchange complex part
		}

		//Here we are "adding 1" to the reverse count j. We add 1 to the MSB bit and carry our addition down toward the LSB
		m = nn; //m is the 1 being, e.g. a 1 in the MSB position which is equal to nn

		//m >= 2 lets us iterate down to the lowest bit save one, the lowest bit is not touched because of the double spaced array
		//As int as j >= m we clear the highest j bit and "carry" our addition down towards the LSB
		while (m >= 2 && j >= m) {
			j -= m; //Clear the highest bit
			m >>= 1; //Carry the addition down towards LSB
		}
		//When we exit the loop m will have a one in the position of the most significant 0 bit in j less than 2*nn
		//This is where we "add" the carried one

		j += m; //Add the reverse carried "1" to J
	}

	//Here begins the Danielson-Lanczos section of the routine.

	//There are a number of optimisations in this routine
	//-Data is processed is the well known nlog(n) structure, e.g. DFT-2 followed by DFT-4, follower by DFT-8, etc...
	//-Twiddles (Wkn terms) are only computed for half the complex unit circle, their negatives are used for the other half 
	// of unit circle. This will work since our FFT is a power of two and our cut of the unit circle is always symmetric

	dftlen = 2; //Start with the smallest DFT, e.g. DFT-2

	while (n > dftlen) { //Outer loop executed log2 nn times.
		istep = dftlen << 1; //This is the distance between DFT-N segments adjusted for real/complex double spacing
		//Initialize the trigonometric recurrence. Use negative for standard DFT definition
		theta = -1 * (6.28318530717959/dftlen); //Exponential theta value
		w_real_incr = cos(theta); //Real part of W1/N
		w_imag_incr = sin(theta); //Imaginary part of W1/N
		w_real_cur = 1.0; //Start point WK/N real
		w_imag_cur = 0.0; //Start point WK/N imag

		for (m = 0;m < dftlen;m += 2) { //For the number of point in the current DFT-N
			//Interleave each point among all the DFTs so we don't have to recompute WK/N values
			for (i = m;i < n;i += istep) { //For the number of DFT-Ns we have (istep preadjusted for real/complex double spacing)
				//This is the Danielson-Lanczos formula:
				j = i + dftlen; //j is the complementary point which completes the current butterfly
				
				//Compute the positive version of the butterfly branch effected by WK/N
				//Complex multiplication
				tempr = w_real_cur * data[j] - w_imag_cur * data[j + 1]; //Real = rr-ii
				tempi = w_real_cur * data[j + 1] + w_imag_cur * data[j]; //Complex = ri+ir

				//Do the lower half of the butterfly who's coefficient is -WK/N
				data[j] = data[i]-tempr;
				data[j + 1] = data[i + 1] - tempi;

				//Do the upper half of the butterfly who's coefficient is WK/N
				data[i] += tempr;
				data[i + 1] += tempi;
			}

			//Trigonometric recurrence. Move to the next WK/N value
			wtemp = w_real_cur; //tmp
			//Complex multiplication between the current WK/N value and the increment value W1/N
			w_real_cur = w_real_cur * w_real_incr - w_imag_cur * w_imag_incr; //Real = rr-ii
			w_imag_cur = w_imag_cur * w_real_incr + wtemp * w_imag_incr; //Complex = ri+ir
		}

		dftlen = istep; //Move to DFT-2N, e.g. one level higher
	}
}

void fft2(float data[], unsigned int nn) {
	unsigned long n,mmax,m,j,istep,i;
	double wtemp,wr,wpr,wpi,wi,theta;
	float tempr,tempi;

	n = nn << 1;
	j = 1;

	for (i = 1;i < n;i += 2) {
		if (j > i) {
			SWAP(data[j],data[i]);
			SWAP(data[j + 1],data[i + 1]);
		}

		m = nn;

		while (m >= 2 && j > m) {
			j -= m;
			m >>= 1;
		}

		j += m;
	}

	mmax = 2;

	while (n > mmax) {
		istep = mmax << 1;
		theta = -1 * (6.28318530717959/mmax); 
		wpr = cos(theta);
		wpi = sin(theta);
		wr = 1.0;
		wi = 0.0;
		for (m = 1; m < mmax;m += 2) {
			for (i = m;i <= n;i += istep) {
				j = i + mmax;
				tempr = wr * data[j]-wi * data[j + 1];
				tempi = wr * data[j + 1] + wi * data[j];
				data[j] = data[i]-tempr;
				data[j + 1] = data[i + 1]-tempi;
				data[i] += tempr;
				data[i + 1] += tempi;
			}
			wtemp = wr;
			wr = wr * wpr-wi * wpi;
			wi = wi * wpr + wtemp * wpi;
		}

		mmax = istep;
	}
} 