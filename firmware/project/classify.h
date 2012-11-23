// ECSE 436 - Signal Processing Hardware
// Lab 2
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#ifndef CLASSIFY_H
#define CLASSIFY_H

#endif

typedef enum ClassificationTypeEnum {
	WHITE = 0,
	TONAL = 1
} classificationtype;
 
typedef struct ClassificationStruct {
	classificationtype type;
	float gain;
    int period;
} classification;

float rmsgain(float* x, int len);

void AMDF(float* x, int len, float gain, float* amdf, int min, int max);

classification classify(float* x, int len);

float absf(float v);
