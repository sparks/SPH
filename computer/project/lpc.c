#include <stdio.h>
#include "lpc.h"
#include "classify.h"
#include "levinsondurbin.h"


//program defines
#define BLOCKSIZE 360
#define NUMCOEF 30

//program buffers
float a[NUMCOEF + 1];	// coefs; +1 because we index from 1
float e[BLOCKSIZE];		// error values

//I/O buffers
short DATA_IN[BLOCKSIZE];
short DATA_OUT[BLOCKSIZE];
short DATA_OUT_OLD[BLOCKSIZE];

int main(int argc, char const *argv[])
{
	printf("Hello world\n");

	//get audio
	
	//for loop processing audio
	//{
	//	process block of audio
	//	{
	//		get coef and error and stuff
	//		classification stuff?
	//		
	//	}
	//
	//	"receive" encoded block
	//	synthesize block of audio
	//	{
	//		
	//	}
	//	
	//}

	return 0;
}

void encode_block(short in[], float a[], int numcoef, float e[], int blocksize){

}

void synthesize_block(float a[], int numcoef, float e[], int blocksize, short out[], short out_old[]){
	int i, j;
	float approx;

	for(i = 0; i <= blocksize; i++){
		approx = 0;
		for(j = 0; j <= numcoef; j++){ 
			approx += a[j + 1]*out_old[blocksize - (numcoef - j)];
		}
		out[i] = approx + e[i];
	}
}


