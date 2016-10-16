#include <mips/regdef.h>
#ifndef BUF_SZ 8192
#define BUF_SZ 8192
#endif
#define STACK_SIZE 32
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
	move $fp, sp

	move t0, a0				# t0 puntero a parms, recibido por parametro
	sw t0, A0_STACK($fp)	# Salvamos los punteros

	lw t5, 32(t0)			# parms->x_res
	lw t6, 36(t0)			# parms->y_res
	lw t4, 40(t0)			# parms->shades
	lw t7, 44(t0)			# parms->fd

	lw f10, 24(t0)			# cpr = parms->cp_re
	lw f11, 28(t0)			# cpi = parms->cp_im
	lw f12, 0(t0)			# parms->UL_re
	lw f13, 4(t0)			# parms->UL_im
	lw f14, 16(t0)			# parms->d_re
	lw f15, 20(t0)			# parms->d_im


	### Aca podria guardar el header PGM en el buffer...
	### Para el buffer necesitaria un contador
	### que me indique cuan lleno esta.
	### Para el contador se puede usar t0 que ya no se
	### usa mas.

	li t1, 0				# y = 0
	move f4, t13			# ci = parms->UL_im
forUno:
	#condicion de break aca o al final.
	li t2, 0				# x = 0
	move f5, t12			# cr = parms->UL_re
forDos:
	#condicion de break aca o al final.
	move f6, f5				# zr = cr
	move f7, f4				# zi = ci

	li t3, 0				# c = 0
forTres:
	mul f8, f6, f6			# sr = zr * zr
	mul f18, f7, f7			# aux = zi * zi
	addu f19, f8, f18		# absz = zr*zr + zi*zi
	subu f19, f19, 4		# absz -= 4
	bgtz f19, finForTres	# break

	subu f8, f8, f18		# sr -= aux
	addu f8, f8, f10		# sr += cpr

	mul f9, f6, f7			# si = zr * zi
	mul f9, f9, 2			# si *= 2
	addu f9, f9, f11		# si += cpi

	move f6, f8				# zr = sr
	move f7, f9				# zi = si

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
	addu f5, f5, f14		# cr += parms->d_re
	subu t8, t5, t2			# Condicion forDos
	bgtz t8, forDos			# 

	add t1, t1, 1			# y++
	subu f4, f4, f15		# ci -= parms->d_im
	subu t8, t6, t1			# Condicion forUno
	bgtz t8, forUno			#

	### Se recorrio todo, se terminaron los fors.
	### Aca hay que revisar si hay algo en el buffer y escribirlo.

	lw ra, RA_STACK(sp)
	lw $fp, FP_STACK(sp)
	lw gp, GP_STACK(sp)
	addu sp, sp, STACK_SIZE
	j ra

buffer: .space BUF_SZ		# Espacio para buffer. No estoy seguro si esto esta bien.. checkearlo.
							# Lo saque de aca http://logos.cs.uic.edu/366/notes/MIPS%20Quick%20Tutorial.htm
	.end mips32_plot
