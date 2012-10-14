#include <math.h>
#include <stdio.h>
#define SWAP(a,b) tempr = (a);(a) = (b);(b) = tempr
void fft(unsigned int nn);
void fft2(unsigned int nn);

int main(int argc, char const *argv[]) {
	fft(8);
	printf("-----\n");
	fft(8);
	return 0;
}

//Replaces data[1..2 * nn] by its discrete Fourier transform.
//data is a complex array of length nn or, equivalently, a real array of length 2 * nn. nn MUST
//be an integer power of 2 (this is not checked for!).
void fft(unsigned int nn) {
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

				//Do the upper half of the butterfly who's coefficient is WK/N
				data[i] += tempr;
				data[i + 1] += tempi;

				//Do the lower half of the butterfly who's coefficient is -WK/N
				data[j] = data[i]-tempr;
				data[j + 1] = data[i + 1] - tempi;
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

void fft2(unsigned int nn) {
	unsigned long n,mmax,m,j,istep,i;
	double wtemp,wr,wpr,wpi,wi,theta;
	float tempr,tempi;

	n = nn << 1;
	j = 1;

	for (i = 1;i < n;i += 2) {
		if (j > i) {
			
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
