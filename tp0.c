#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#define ARG_ERR -1
typedef struct{
	double real;
	float imag;
}numcomplex;

void imprimir_complejo(numcomplex c){
	printf("%f %+fi \n",c.real,c.imag);
}

double abs_cplx(numcomplex a){
	return sqrt(pow(a.real,2) + pow(a.imag,2));
}

void sqr_cplx(numcomplex* a){
	double aux = a->imag;
	a->imag  = 2 * a->real * a->imag;
	a->real=pow(a->real,2) - pow(aux,2);
}

void imprimir_error(int status){
	switch(status){
		case ARG_ERR: 
			printf("Debe ingresar correctamente los argumentos. Abortando ejecucion\n");
			exit(ARG_ERR);
			break;
		default:
			printf("Error no contemplado. Abortando Ejecucion \n");
	}		exit(status);
}

int main(int argc, char *argv[])
{
	int status = 0;
	int alto = 640;
	int ancho = 480;
	numcomplex constant;
	numcomplex center;
	center.real=0;
	center.imag=0;
	constant.real=0.285;
	constant.imag=-0.01;
	char *auxc;
	double H=4,w=4;
	FILE *salida = stdout;

	if (argc > 1 ) {
		for(int i=1 ; i<argc ; i+=2){
			if(argv[i][0] == '-'){

				switch (argv[i][1]) {
					case 'h': printf( "Usage:\n  tp0 -h  -V -c <a+bi> -C <a+bi> -H <float> -w <float> -o <out_file> -\n"
						"Options:\n"
						"    -V\t    Imprime la version y finaliza.\n"
						"    -h\t    Imprime esta informacion y finaliza.\n"
						"    -c\t    Setea el centro de la imagen.\n"
						"    -H\t    Setea el alto del rectangulo. Valor por defecto=4\n"
						"    -w\t    Setea el ancho del rectangulo. Valor por defecto=4\n"
						"    -o\t    Setea el archivo de salida"
						"    -C\t    Setea la constante del algoritmo. Valor por defecto= 0.285+0.01i\n"
						"Examples:\n  tp0 -c +0.282-0.01i -w 0.005 -H 0.005 -o dos.pgm\n");
					//texto con ayuda a completar//
						return 0;
						break;
					case 'V': printf("Conjunto de Julia\nv1.0\n");
						return 0;
						break;
					case 'r':
						auxc=strtok(argv[i+1],"xX");
						if (auxc == NULL){
							status = ARG_ERR;
							break;
						}
						ancho=atoi(auxc);
						auxc=strtok(NULL, " ");
						if (auxc == NULL) {
							status = ARG_ERR;
							break;
						}
						alto=atoi(auxc);
						break;
					case 'C':
						auxc=argv[i+1];
						if(auxc == NULL){
							status=ARG_ERR;
							break;
						}
						constant.real=atof(auxc);
						if(argv[i+1][0]=='-' || argv[i+1][0]=='+'){				//si el primer numero tiene signo, lo saltea
							auxc=strpbrk(auxc+1,"-+");
						}
						else auxc=strpbrk(auxc,"-+");
						constant.imag=atof(auxc);
						break;
					case 'c':
						
						auxc=argv[i+1];
						if (auxc == NULL){
							status=ARG_ERR;
							break;
						}
						center.real=atof(auxc);									//toma la parte real
						if(argv[i+1][0]=='-' || argv[i+1][0]=='+'){				//si el primer numero tiene signo, lo saltea
							auxc=strpbrk(auxc+1,"-+");
						}
						else auxc=strpbrk(auxc,"-+");
						center.imag=atof(auxc);									//toma la parte imaginaria
						break;
					case 'H':
						if (argv[i+1] == NULL){
							status=ARG_ERR;
							break;
						}
						H=atof(argv[i+1]);
						break;
					case 'o':
						if(argv[i+1] == NULL){
							status=ARG_ERR;
							break;
						}
						if(strcmp(argv[i+1],"-") == 0){
							break;
						};
						
						salida = fopen(argv[i+1], "w");
						break;
					case 'w':
						w=atof(argv[i+1]);
						break;
					default: printf("Argumento desconocido: prueba con -h para ver la ayuda.\n");
				}
			}
			else{
				printf("Error! Formato desconocido. Prueba con -h para ver la ayuda. \n");
				return 1;
				//return error de argumento
			}
		}
	}
	else{
		printf("Se correrá el programa con los valores por DEFAULT. \n");
	}
	if (status != 0) imprimir_error(status);
	fputs("P2 \n",salida);
	fputs("#TP0 Vecindades de Julia \n",salida);
	char alto_str[10];
	char ancho_str[10];
	char concat[20];
	sprintf(alto_str,"%d \n",alto);
	sprintf(ancho_str,"%d",ancho);
	strcpy(concat,ancho_str);
	strcat(concat," ");
	strcat(concat,alto_str);
	fputs(concat,salida);
	fputs("255 \n",salida);
	int matrix_PGM[alto][ancho];
	double aux_im;
	int n;
	for (int im=0; im<alto;im++){
		 aux_im= (H - (im*2*H/alto));
		 numcomplex zeta;
		for(int re=0;re<ancho;re++){
			zeta.real=(-w + (re*2*w/ancho)) - center.real;
			zeta.imag=aux_im - center.imag;
			while(abs_cplx(zeta) < 2 && n<255){
				sqr_cplx(&zeta);
				zeta.real+=constant.real;
				zeta.imag+=constant.imag;
				n++;
			}
			matrix_PGM[im][re]= n;
			fprintf(salida,"%d ",matrix_PGM[im][re]);
			n=0;
		}
		fprintf(salida,"\n");
	}	

	return 0;
}