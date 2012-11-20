// ECSE 436 - Signal Processing Hardware
// Lab 2
// Salenikovich, Stepan - 260326129
// Smith, Severin - 260349085

#ifndef CLASSIFY_H
#define CLASSIFY_H

typedef enum ClassificationTypeEnum {
	WHITE,
	TONAL
} classificationtype;
 
typedef struct ClassificationStruct {
	classificationtype type;
    int period;
    float gain;
} classification;

float rmsgain(float*, int);
void AMDF(float*, int, float, float*, int, int);
classification classify(float*, int);

#endif
