#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#define ARG_ERR -1
#define FILE_ERROR -2
#define ERR_GRAL 1
#define ERR_MEM -3
typedef struct{
	double real;
	float imag;
}numcomplex;

void armar_headerPGM(FILE* salida,int alto, int ancho){
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
}

void armar_imagenPGM(FILE* salida, int** matrix_PGM,int alto, int ancho){
	for(int im = 0; im<alto;im++){
		for(int re=0;re<ancho;re++){
			fprintf(salida,"%d ",matrix_PGM[im][re]);
		}
	}
	fprintf(salida,"\n");
}
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
		case FILE_ERROR:
			printf("La ruta de arhivo ingresada no es valida. Abortando ejecucion\n");
			exit(FILE_ERROR);
		case ERR_MEM:
			printf("No se ha podido reservar la memoria necesaria. Abortando ejecucion\n");
			exit(ERR_MEM);
		default:
			printf("Error no contemplado. Abortando Ejecucion \n");
	}		exit(status);
}

int** create_matrix(int alto, int ancho, int status){
	int** matrix_PGM= malloc(alto * sizeof(*matrix_PGM));

	if (matrix_PGM == NULL){
		status = ERR_MEM;
		imprimir_error(status);
	}
	for(int i = 0; i < alto; i++){
		matrix_PGM[i] = malloc(ancho* sizeof(*matrix_PGM[i]));
		if (matrix_PGM[i] == NULL){
			status = ERR_MEM;
			imprimir_error(status);
		}
	}
	return matrix_PGM;
}

void generate_julia(int** matrix_PGM,int ancho,int alto,double w, double H,numcomplex constant, numcomplex center){
	double aux_im;
	int n = 0;
	double xmin=-w/2;
	double xmax=w/2;
	double ymin=-H/2;
	double ymax= H/2;
	double deltaX=(xmax-xmin)/(ancho-1);
	double deltaY=(ymax-ymin)/(alto-1);
	//if (ancho == 1) deltaX = 1;
	//if (alto == 1) deltaY = 0;
	for (int im=0; im<alto;im++){
		 aux_im=(ymax - ((im)*deltaY)) - center.imag;
		 numcomplex zeta;
		for(int re=0;re<ancho;re++){
			zeta.real=(xmin + (re)*deltaX) - center.real;
			zeta.imag=aux_im - center.imag;

			while(abs_cplx(zeta) < 2 && n<255){
				
				sqr_cplx(&zeta);
				zeta.real+=constant.real;
				zeta.imag+=constant.imag;
				n++;
			}
			matrix_PGM[im][re]= n;
			n=0;
		}
	}
}

int main(int argc, char *argv[])
{
	int status = 0;
	int alto = 480;
	int ancho = 640;
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
						if(salida == NULL){
							status=FILE_ERROR;
							break;
						}
						break;
					case 'w':
						if (argv[i+1] == NULL){
							status=ARG_ERR;
							break;
						}
						w=atof(argv[i+1]);
						break;
					default: printf("Argumento desconocido: prueba con -h para ver la ayuda.\n");
				}
			}
			else{
				printf("Error! Formato desconocido. Prueba con -h para ver la ayuda. \n");
				return ERR_GRAL;
				//return error de argumento
			}
		}
	}
	else{
		printf("Se correra el programa con los valores por DEFAULT. \n");
	}
	if (status != 0) imprimir_error(status);
	armar_headerPGM(salida,alto,ancho);
	
	int** matrix_PGM;
	matrix_PGM = create_matrix(alto,ancho,status);
	
	generate_julia(matrix_PGM,ancho,alto,w,H,constant,center);
	armar_imagenPGM(salida,matrix_PGM,alto,ancho);
	return 0;
}
