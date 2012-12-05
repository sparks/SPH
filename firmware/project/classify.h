// ECSE 436 - Signal Processing Hardware
// Lab 2
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#ifndef CLASSIFY_H
#define CLASSIFY_H

#include "parameters.h"

#endif

//Enum for WHITE/TONAL classifying voiced vs voiceless sounds
typedef enum ClassificationTypeEnum {
	WHITE = 0,
	TONAL = 1
} classificationtype;
 
//Struct for classification, holds the information of interest
typedef struct ClassificationStruct {
	classificationtype type; //voiced, voicless determination
	float gain; //Gain of block
    int period; //Period (if voiced)
} classification;

float rmsgain(float* x, int len);

void AMDF(float* x, int len, float gain, float* amdf, int min, int max);

classification classify(float* x, int len);

float absf(float v);
