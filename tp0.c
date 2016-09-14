#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct{
	float real;
	float imag;
}numcomplex;

void imprimir_complejo(numcomplex c){
	printf("%f %+fi",c.real,c.imag);
}


int main(int argc, char *argv[])
{
	numcomplex c;
	char *auxc;
	double H=4,w=4;
	FILE *salida = stdout;

	if (argc > 1 ) {
		for(int i=1 ; i<argc ; i+=2){
			if(argv[i][0] == '-'){

				switch (argv[i][1]) {
					case 'h': printf( "Usage:\n  tp0 -h  -V -c <a+bi> -H <float> -w <float> -o <out_file> -\n"
						"Options:\n"
						"    -V\t    Imprime la version y finaliza.\n"
						"    -h\t    Imprime esta informacion y finaliza.\n"
						"    -c\t    Setea el centro de la imagen.\n"
						"    -H\t    Setea el alto del rectangulo. Valor por defecto=4\n"
						"    -w\t    Setea el ancho del rectangulo. Valor por defecto=4\n"
						"    -o\t    Setea el archivo de salida"
						"Examples:\n  tp0 -c +0.282-0.01i -w 0.005 -H 0.005 -o dos.pgm\n");
					//texto con ayuda a completar//
						return 0;
						break;
					case 'V': printf("Conjunto de Julia\nv1.0\n");
						return 0;
						break;
					//case 'r':
					//case 'C':
					case 'c':
						
						auxc=argv[i+1];
						c.real=atof(auxc);									//toma la parte real
						if(argv[i+1][0]=='-' || argv[i+1][0]=='+'){				//si el primer numero tiene signo, lo saltea
							auxc=strpbrk(auxc+1,"-+");
						}
						else auxc=strpbrk(auxc,"-+");
						c.imag=atof(auxc);									//toma la parte imaginaria
					
						printf("numero c: ");
						imprimir_complejo(c);
						printf("\n");
						break;
					case 'H':
						H=atof(argv[i+1]);
						printf("numero H: %f \n",H);
						break;
					case 'o':
						salida = fopen(argv[i+1], "w");
						break;
					case 'w':
						w=atof(argv[i+1]);
						printf("numero w: %f \n",w);
						break;
					default: printf("Argumento desconocido: prueba con -h para ver la ayuda.\n");
				}
			}
			else{
				printf("Error! Formato desconocido. Prueba con -h para ver la ayuda. \n");
				return 0;
				//return error de argumento
			}
		}
	}
		
}