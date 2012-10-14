#include <math.h>
#include <stdio.h>

int main(int argc, char const *argv[])
{
	unsigned int n, nn, mmax, m, j, istep, i;
	double wtemp, wr, wpr, wpi, wi, theta; //Double precision for the trigonometric recurrences.
	float tempr, tempi; 

	int isign = 0;

	nn = 16;

	n = nn << 1;

	mmax = 2;
	isign = 1;
	while (n > mmax) { //Outer loop executed log2 nn times.
		istep = mmax << 1;
		theta = -(6.28318530717959/mmax); //Initialize the trigonometric recurrence.
		wtemp = sin(0.5 * theta);
		wpr = -2.0 * wtemp * wtemp;
		wpi = sin(theta);
		wr = 1.0;
		wi = 0.0;

		// printf("%lu\n", mmax);
		for (m = 0;m < mmax;m += 2) { //Here are the two nested inner loops.
			// printf("%f + %fi\n", wr, wi);
			for (i = m;i < n;i += istep) {
				j = i + mmax; //j is the complementary point which completes the current butterfly
				printf("%i, %i\n", i, j);

				// j = i + mmax; //This is the Danielson-Lanczos formula:
				tempr = wr *1-wi * 1;
				tempi = wr * 1 + wi * 1;
				// printf("(%f, %f)\n", tempr, tempi);

				// data[j] = data[i]-tempr;
				// data[j + 1] = data[i + 1]-tempi;
				// data[i] + = tempr;
				// data[i + 1] + = tempi;
			}
			wtemp = wr;
			wr = (wr + wr * wpr)-wi * wpi; //Trigonometric recurrence.
			wi =  (wi + wi * wpr) + wtemp * wpi;
		}

		printf("--\n");

		mmax = istep;
	}

	return 0;
}

// #inclde <math.h>
// #define SWAP(a,b) tempr = (a);(a) = (b);(b) = tempr

// void four1(float data[], unsigned long nn, int isign) {
// 	unsigned long n,mmax,m,j,istep,i;
// 	double wtemp,wr,wpr,wpi,wi,theta;
// 	float tempr,tempi;

// 	n = nn << 1;
// 	j = 1;

// 	for (i = 1;i<n;i+ = 2) {
// 		if (j > i) {
// 			SWAP(data[j],data[i]);
// 			SWAP(data[j + 1],data[i + 1]);
// 		}

// 		m = nn;

// 		while (m >= 2 && j > m) {
// 			j -= m;
// 			m >>= 1;
// 		}

// 		j += m;
// 	}

// 	mmax = 2;

// 	while (n > mmax) {
// 		istep = mmax << 1;
// 		theta = isign * (6.28318530717959/mmax); 
// 		wtemp = sin(0.5 * theta);
// 		wpr = -2.0 * wtemp * wtemp;
// 		wpi = sin(theta);
// 		wr = 1.0;
// 		wi = 0.0;
// 		for (m = 1;m<mmax;m+ = 2) {
// 			for (i = m;i< = n;i+ = istep) {
// 				j = i + mmax;
// 				tempr = wr * data[j]-wi * data[j + 1];
// 				tempi = wr * data[j + 1] + wi * data[j];
// 				data[j] = data[i]-tempr;
// 				data[j + 1] = data[i + 1]-tempi;
// 				data[i] + = tempr;
// 				data[i + 1] + = tempi;
// 			}
// 			wr = (wtemp = wr) * wpr-wi * wpi + wr;
// 			wi = wi * wpr + wtemp * wpi + wi;
// 		}

// 		mmax = istep;
// 	}
// } 
