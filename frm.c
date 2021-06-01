#include "frm.h"

float exp_dist(float a, float l){
	return -logf(1-a)/l; 
}

float hyperexp2(float a, float p, float q, float l1, float l2){
	return exp_dist(a, (p < q) ? l1 : l2);
}

