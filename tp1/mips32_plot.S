#include <mips/regdef.h>
#ifndef BUF_SZ 8192
#define BUF_SZ 8192
#endif
#define STACK_SIZE 80
#define F30_STACK 72
#define F28_STACK 64
#define F26_STACK 56
#define F24_STACK 48
#define F22_STACK 40
#define F20_STACK 32
#define RA_STACK 24
#define FP_STACK 20
#define GP_STACK 16
#define A0_PARAM (STACK_SIZE)

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
	s.d f20, F20_STACK(sp)	# Como voy a usar los registros f20-f30
	s.d f22, F22_STACK(sp)	# los guardo, ya que son de tipo save
	s.d f24, F24_STACK(sp)	# que se espera que conservemos su valor.
	s.d f26, F26_STACK(sp)	# Al finalizar la ejecucion, traeremos
	s.d f28, F28_STACK(sp)	# los valores originales a los registros
	s.d f30, F30_STACK(sp)	# nuevamente.
	move $fp, sp

	move t0, a0				# t0 puntero a parms, recibido por parametro
	sw t0, A0_STACK($fp)	# Salvamos los punteros

	lw t5, 32(t0)			# parms->x_res
	lw t6, 36(t0)			# parms->y_res
	lw t4, 40(t0)			# parms->shades
	lw t7, 44(t0)			# parms->fd

	lw f10, 24(t0)			# cpr = parms->cp_re
	lw f26, 28(t0)			# cpi = parms->cp_im
	lw f12, 0(t0)			# parms->UL_re
	lw f28, 4(t0)			# parms->UL_im
	lw f14, 16(t0)			# parms->d_re
	lw f30, 20(t0)			# parms->d_im


	### Aca podria guardar el header PGM en el buffer...
	### Para el buffer necesitaria un contador
	### que me indique cuan lleno esta.
	### Para el contador se puede usar t0 que ya no se
	### usa mas.

	li t1, 0				# y = 0
	mov.s f4, f28			# ci = parms->UL_im
forUno:
	li t2, 0				# x = 0
	mov.s f20, f12			# cr = parms->UL_re
forDos:
	mov.s f6, f20			# zr = cr
	mov.s f22, f4			# zi = ci

	li t3, 0				# c = 0
forTres:
	mul.s f8, f6, f6		# sr = zr * zr
	mul.s f16, f22, f22		# aux = zi * zi
	add.s f18, f8, f16		# absz = zr*zr + zi*zi
	sub.s f18, f18, 4.0		# absz -= 4
	bgtz f18, finForTres	# break

	sub.s f8, f8, f16		# sr -= aux
	add.s f8, f8, f10		# sr += cpr

	mul.s f24, f6, f22		# si = zr * zi
	mul.s f24, f24, 2.0		# si *= 2
	add.s f24, f24, f26		# si += cpi

	mov.s f6, f8			# zr = sr
	mov.s f22, f24			# zi = si

	addu t3, t3, 1			# c++
	subu t8, t4, t3			# Condicion forTres
	bgtz t8, forTres		# 
finForTres:
	### Se debe guardar el valor de c (t3) en el buffer.
	### Checkeo si el buffer esta lleno,
	### y si lo esta grabo. Devuelvo el contador a 0.
	### Checkeo error de escritura tambien..
	### Nota parms->fp esta en t7

	addu t2, t2, 1			# x++
	add.s f20, f20, f14		# cr += parms->d_re
	subu t8, t5, t2			# Condicion forDos
	bgtz t8, forDos			# 

	add t1, t1, 1			# y++
	sub.s f4, f4, f30		# ci -= parms->d_im
	subu t8, t6, t1			# Condicion forUno
	bgtz t8, forUno			#

	### Se recorrio todo, se terminaron los fors.
	### Aca hay que revisar si hay algo en el buffer y escribirlo.

	l.d ra, RA_STACK(sp)
	l.d $fp, FP_STACK(sp)
	l.d gp, GP_STACK(sp)
	l.d f20, F20_STACK(sp)	# Restauro valores originales de
	l.d f22, F22_STACK(sp)	# los f20-f30
	l.d f24, F24_STACK(sp)
	l.d f26, F26_STACK(sp)
	l.d f28, F28_STACK(sp)
	l.d f30, F30_STACK(sp)

	addu sp, sp, STACK_SIZE
	j ra

buffer: .space BUF_SZ		# Espacio para buffer. No estoy seguro si esto esta bien.. checkearlo.
							# Lo saque de aca http://logos.cs.uic.edu/366/notes/MIPS%20Quick%20Tutorial.htm
	.end mips32_plot
