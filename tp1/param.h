#include <stdio.h>
#include <stdlib.h>

typedef struct {
	float UL_re;	//0
	float UL_im;	//4
	float LR_re;	
	float LR_im;	
	float d_re;		//16
	float d_im;		//20
	float cp_re;	//24
	float cp_im;	//28

	size_t x_res;	//32
	size_t y_res;	//36
	size_t shades;	//40

	int fd;			//44
} param_t;
