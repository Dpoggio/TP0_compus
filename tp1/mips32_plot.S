#include <mips/regdef.h>
#include <sys/syscall.h>
#ifndef BUF_SZ 8192
#define BUF_SZ 8192
#endif
#define STACK_SIZE 112
#define A1_STACK 108
#define T0_STACK 104
#define T1_STACK 100
#define T2_STACK 96
#define T3_STACK 92
#define T4_STACK 88
#define T5_STACK 84
#define T6_STACK 80
#define T7_STACK 76
#define F30_STACK 72
#define F28_STACK 64
#define F26_STACK 56
#define F24_STACK 48
#define F22_STACK 40
#define F20_STACK 32
#define RA_STACK 24
#define FP_STACK 20
#define GP_STACK 16
#define A0_STACK (STACK_SIZE)

	
	.data
	.align 2
enter1:		.asciiz "\n"
header:		.asciiz "P2\n"
	.align 2
buffer: .space BUF_SZ               # Espacio para buffer.
	.align 2
buffer2: .space 32
	.text
	.abicalls
	.align 2
	.global mips32_plot
	.ent mips32_plot
mips32_plot:
	.frame $fp, STACK_SIZE, ra
	.set noreorder
	.cpload t9
	.set reorder

	subu sp, sp, STACK_SIZE

	.cprestore GP_STACK

	sw ra, RA_STACK(sp)
	sw $fp, FP_STACK(sp)
	sw gp, GP_STACK(sp)
	s.d $f20, F20_STACK(sp)	# Como voy a usar los registros f20-f30
	s.d $f22, F22_STACK(sp)	# los guardo, ya que son de tipo save
	s.d $f24, F24_STACK(sp)	# que se espera que conservemos su valor.
	s.d $f26, F26_STACK(sp)	# Al finalizar la ejecucion, traeremos
	s.d $f28, F28_STACK(sp)	# los valores originales a los registros
	s.d $f30, F30_STACK(sp)	# nuevamente.
	move $fp, sp

	move t0, a0				# t0 puntero a parms, recibido por parametro
	sw t0, A0_STACK($fp)	# Salvamos los punteros

	lw t5, 32(t0)			# parms->x_res
	lw t6, 36(t0)			# parms->y_res
	lw t4, 40(t0)			# parms->shades
	lw t7, 44(t0)			# parms->fd

	l.s $f10, 24(t0)			# cpr = parms->cp_re
	l.s $f26, 28(t0)			# cpi = parms->cp_im
	l.s $f12, 0(t0)			# parms->UL_re
	l.s $f28, 4(t0)			# parms->UL_im
	l.s $f14, 16(t0)			# parms->d_re
	l.s $f30, 20(t0)			# parms->d_im

	
#Imprimir Header
	la a0,header
	la a1,buffer
	lb t0,(a0)		
	sb t0,(a1)		# guardado P
	lb t0,1(a0)
	sb t0,1(a1)		# guardado 2
	lb t0,2(a0)
	sb t0,2(a1)		# guardado \n
	addu a1,a1,3

	move a0,t5
   	jal itoa		# guardado x_res

	move a1,v0
	move a0,t6
	jal itoa		# guardado y_res

	move a1,v0
	move a0,t4
	jal itoa		# guardado shades

	move t0,v0		# se mantiene la direccion del ṕuntero a buffer

#Comienzo del Programa

	li t1, 0				# y = 0
	mov.s $f4, $f28			# ci = parms->UL_im
forUno:
	li t2, 0				# x = 0
	mov.s $f20, $f12			# cr = parms->UL_re
forDos:
	mov.s $f6, $f20			# zr = cr
	mov.s $f22, $f4			# zi = ci

	li t3, 0				# c = 0
forTres:
	mul.s $f8, $f6, $f6		# sr = zr * zr
	mul.s $f16, $f22, $f22		# aux = zi * zi
	add.s $f18, $f8, $f16		# absz = zr*zr + zi*zi
	li.s $f0,4
	sub.s $f18, $f18, $f0		# absz -= 4
	li.s $f0,0
	c.le.s $f0,$f18
	bc1t finForTres	# break

	sub.s $f8, $f8, $f16		# sr -= aux
	add.s $f8, $f8, $f10		# sr += cpr

	mul.s $f24, $f6, $f22		# si = zr * zi
	li.s $f0,2
	mul.s $f24, $f24, $f0		# si *= 2
	add.s $f24, $f24, $f26		# si += cpi

	mov.s $f6, $f8			# zr = sr
	mov.s $f22, $f24			# zi = si

	addu t3, t3, 1			# c++
	subu t8, t4, t3			# Condicion forTres
	bgtz t8, forTres		# 
finForTres:
	
	### Se debe guardar el valor de c (t3) en el buffer.
	
	move a0,t3
	move a1,t0
	jal save_reg		# se guardan registros temporales
	jal itoa			# se imprime en el buffer
	jal load_reg 		# se cargan registros guardados
	move t0,v0

	### Checkeo error de escritura tambien..
	### Nota parms->fp esta en t7

	addu t2, t2, 1			# x++
	add.s $f20, $f20, $f14		# cr += parms->d_re
	subu t8, t5, t2			# Condicion forDos
	bgtz t8, forDos			# 

	add t1, t1, 1			# y++
	sub.s $f4, $f4, $f30		# ci -= parms->d_im
	subu t8, t6, t1			# Condicion forUno
	bgtz t8, forUno			#

	### Se recorrio todo, se terminaron los fors.
	### Aca hay que revisar si hay algo en el buffer y escribirlo.

	lw t3,buffer
	beq t3,t0,bufferVacio	# se chequea si el buffer esta vacio. de no ser asi, se imprime
	li	v0, SYS_write
	li  a2,BUF_SZ		# El tamaño del buffer
	la	a1,buffer		# Direccion del buffer
	move	a0,t7 		# File descriptor guardado en t7
	syscall

bufferVacio:

	lw ra, RA_STACK(sp)
	lw $fp, FP_STACK(sp)
	lw gp, GP_STACK(sp)
	l.d $f20, F20_STACK(sp)	# Restauro valores originales de
	l.d $f22, F22_STACK(sp)	# los f20-f30
	l.d $f24, F24_STACK(sp)
	l.d $f26, F26_STACK(sp)
	l.d $f28, F28_STACK(sp)
	l.d $f30, F30_STACK(sp)

	addu sp, sp, STACK_SIZE
	j ra


save_reg:
	sw t0,T0_STACK($fp)
	sw t1,T1_STACK($fp)
	sw t2,T2_STACK($fp)
	sw t3,T3_STACK($fp)
	sw t4,T4_STACK($fp)
	sw t5,T5_STACK($fp)
	sw t6,T6_STACK($fp)
	sw t7,T7_STACK($fp)
	j ra

load_reg:	
	lw t0,T0_STACK($fp)
	lw t1,T1_STACK($fp)
	lw t2,T2_STACK($fp)
	lw t3,T3_STACK($fp)
	lw t4,T4_STACK($fp)
	lw t5,T5_STACK($fp)
	lw t6,T6_STACK($fp)
	lw t7,T7_STACK($fp)
	j ra


# Funcion integer to ascii
# Transfiere un integer guardado en a0 a una
# direcion en el buffer guardada en a1

itoa:					# a0: numero a guardar, a1: direccion de guardado
  
    move v0,a1
    la a1,buffer2
    addu a1,a1,30
    li   t0, '\n'
    sb   t0, 1(a1)     	# se coloca \n al final del string
    li   t0,'0'
    li   t1,0
    sb   t0, (a1)    	# inicia el string en 0
    slt  t1, a0, zero   # setea t1 si a0 es negativo
    li   t2, 10
    beq  a0, zero, iend # termina si a0=0
loop:
    divu  a0, t2       	# a /= 10
    mflo a0
    mfhi t3            	# se obtiene el resto
    addu  t3, t3, t0	# se convierte a ascii
    sb   t3, (a1)    	# se almacena en a1
    subu  a1, a1, 1    # dec. buf ptr
    bne  a0, zero, loop  # si no es 0, loop
    addu a1, a1, 1 
iend:
    beq  t1, 0, nolz  # se chequea si el numero es negativo
    subu a1, a1, 1
    li   t0, '-'
    sb   t0, (a1)
nolz:
	la t0,buffer2
	addu t0,t0,32
	la t2,buffer
	addu t2,t2,BUF_SZ
loop2:
	lb t1,(a1)
	sb t1,(v0)
	addu a1,a1,1
	addu v0,v0,1
	beq v0,t2,bufferLleno
retorno:
	bne a1,t0,loop2
    j   ra 

bufferLleno:
	sw a1,A1_STACK($fp)
	li	v0, SYS_write
	li  a2,BUF_SZ		# El tamaño del buffer
	la	a1,buffer		# Direccion del buffer
	move	a0,t7 		# File descriptor guardado en t7
	syscall
	la v0,buffer
	lw a1,A1_STACK($fp)
	la t0,buffer2
	addu t0,t0,32
	la t2,buffer
	addu t2,t2,BUF_SZ
	j retorno

	.end mips32_plot

