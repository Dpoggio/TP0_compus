	.section .mdebug.abi32
	.previous
	.abicalls
	.file 1 "tp0.c"
	.section	.debug_abbrev,"",@progbits
$Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.section	.debug_line,"",@progbits
$Ldebug_line0:
	.text
$Ltext0:
	.file 2 "/usr/include/mips/int_types.h"
	.file 3 "/usr/include/sys/ansi.h"
	.file 4 "/usr/include/mips/ansi.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/mips/types.h"
	.file 7 "/usr/include/sys/types.h"
	.file 8 "/usr/include/sys/endian.h"
	.file 9 "/usr/include/pthread_types.h"
	.file 10 "/usr/include/stdlib.h"
	.file 11 "/usr/include/math.h"
	.rdata
	.align	2
$LC0:
	.ascii	"P2 \n\000"
	.align	2
$LC1:
	.ascii	"#TP0 Vecindades de Julia \n\000"
	.align	2
$LC2:
	.ascii	"%d \n\000"
	.align	2
$LC3:
	.ascii	"%d\000"
	.align	2
$LC4:
	.ascii	" \000"
	.align	2
$LC5:
	.ascii	"255 \n\000"
	.text
	.align	2
	.globl	armar_headerPGM
$LFB29:
	.loc 1 14 0
	.ent	armar_headerPGM
armar_headerPGM:
	.frame	$fp,96,$ra		# vars= 56, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,96
	.cprestore 16
$LCFI0:
	sw	$ra,88($sp)
$LCFI1:
	sw	$fp,84($sp)
$LCFI2:
	sw	$gp,80($sp)
$LCFI3:
	move	$fp,$sp
$LCFI4:
	sw	$a0,96($fp)
	sw	$a1,100($fp)
	sw	$a2,104($fp)
	.loc 1 15 0
$LBB2:
	la	$a0,$LC0
	lw	$a1,96($fp)
	la	$t9,fputs
	jal	$ra,$t9
	.loc 1 16 0
	la	$a0,$LC1
	lw	$a1,96($fp)
	la	$t9,fputs
	jal	$ra,$t9
	.loc 1 20 0
	addu	$a0,$fp,24
	la	$a1,$LC2
	lw	$a2,100($fp)
	la	$t9,sprintf
	jal	$ra,$t9
	.loc 1 21 0
	addu	$v0,$fp,40
	move	$a0,$v0
	la	$a1,$LC3
	lw	$a2,104($fp)
	la	$t9,sprintf
	jal	$ra,$t9
	.loc 1 22 0
	addu	$v0,$fp,56
	addu	$v1,$fp,40
	move	$a0,$v0
	move	$a1,$v1
	la	$t9,strcpy
	jal	$ra,$t9
	.loc 1 23 0
	addu	$v0,$fp,56
	move	$a0,$v0
	la	$a1,$LC4
	la	$t9,strcat
	jal	$ra,$t9
	.loc 1 24 0
	addu	$v0,$fp,56
	move	$a0,$v0
	addu	$a1,$fp,24
	la	$t9,strcat
	jal	$ra,$t9
	.loc 1 25 0
	addu	$v0,$fp,56
	move	$a0,$v0
	lw	$a1,96($fp)
	la	$t9,fputs
	jal	$ra,$t9
	.loc 1 26 0
	la	$a0,$LC5
	lw	$a1,96($fp)
	la	$t9,fputs
	jal	$ra,$t9
	.loc 1 27 0
	move	$sp,$fp
	lw	$ra,88($sp)
	lw	$fp,84($sp)
	addu	$sp,$sp,96
	j	$ra
$LBE2:
	.end	armar_headerPGM
$LFE29:
	.size	armar_headerPGM, .-armar_headerPGM
	.rdata
	.align	2
$LC6:
	.ascii	"%d \000"
	.align	2
$LC7:
	.ascii	"\n\000"
	.text
	.align	2
	.globl	armar_imagenPGM
$LFB31:
	.loc 1 29 0
	.ent	armar_imagenPGM
armar_imagenPGM:
	.frame	$fp,48,$ra		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
$LCFI5:
	sw	$ra,40($sp)
$LCFI6:
	sw	$fp,36($sp)
$LCFI7:
	sw	$gp,32($sp)
$LCFI8:
	move	$fp,$sp
$LCFI9:
	sw	$a0,48($fp)
	sw	$a1,52($fp)
	sw	$a2,56($fp)
	sw	$a3,60($fp)
	.loc 1 30 0
$LBB3:
$LBB4:
	sw	$zero,24($fp)
$L19:
	lw	$v0,24($fp)
	lw	$v1,56($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L22
	b	$L20
$L22:
	.loc 1 31 0
$LBB5:
	sw	$zero,28($fp)
$L23:
	lw	$v0,28($fp)
	lw	$v1,60($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L26
	b	$L21
$L26:
	.loc 1 32 0
	lw	$v0,24($fp)
	sll	$v1,$v0,2
	lw	$v0,52($fp)
	addu	$a0,$v1,$v0
	lw	$v0,28($fp)
	sll	$v1,$v0,2
	lw	$v0,0($a0)
	addu	$v0,$v1,$v0
	lw	$a0,48($fp)
	la	$a1,$LC6
	lw	$a2,0($v0)
	la	$t9,fprintf
	jal	$ra,$t9
	.loc 1 31 0
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	b	$L23
	.loc 1 30 0
$L21:
$LBE5:
	lw	$v0,24($fp)
	addu	$v0,$v0,1
	sw	$v0,24($fp)
	b	$L19
$L20:
	.loc 1 35 0
$LBE4:
	lw	$a0,48($fp)
	la	$a1,$LC7
	la	$t9,fprintf
	jal	$ra,$t9
	.loc 1 36 0
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
$LBE3:
	.end	armar_imagenPGM
$LFE31:
	.size	armar_imagenPGM, .-armar_imagenPGM
	.rdata
	.align	2
$LC8:
	.ascii	"%f %+fi \n\000"
	.text
	.align	2
	.globl	imprimir_complejo
$LFB33:
	.loc 1 37 0
	.ent	imprimir_complejo
imprimir_complejo:
	.frame	$fp,48,$ra		# vars= 0, regs= 3/0, args= 24, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 24
$LCFI10:
	sw	$ra,40($sp)
$LCFI11:
	sw	$fp,36($sp)
$LCFI12:
	sw	$gp,32($sp)
$LCFI13:
	move	$fp,$sp
$LCFI14:
	sw	$a0,48($fp)
	sw	$a1,52($fp)
	sw	$a2,56($fp)
	sw	$a3,60($fp)
	.loc 1 38 0
	l.s	$f0,56($fp)
	cvt.d.s	$f0,$f0
	s.d	$f0,16($sp)
	la	$a0,$LC8
	lw	$a2,48($fp)
	lw	$a3,52($fp)
	la	$t9,printf
	jal	$ra,$t9
	.loc 1 39 0
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	imprimir_complejo
$LFE33:
	.size	imprimir_complejo, .-imprimir_complejo
	.rdata
	.align	3
$LC9:
	.word	0
	.word	1073741824
	.text
	.align	2
	.globl	abs_cplx
$LFB35:
	.loc 1 41 0
	.ent	abs_cplx
abs_cplx:
	.frame	$fp,48,$ra		# vars= 0, regs= 3/1, args= 16, extra= 8
	.mask	0xd0000000,-16
	.fmask	0x00300000,-8
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
$LCFI15:
	sw	$ra,32($sp)
$LCFI16:
	sw	$fp,28($sp)
$LCFI17:
	sw	$gp,24($sp)
$LCFI18:
	s.d	$f20,40($sp)
$LCFI19:
	move	$fp,$sp
$LCFI20:
	sw	$a0,48($fp)
	sw	$a1,52($fp)
	sw	$a2,56($fp)
	sw	$a3,60($fp)
	.loc 1 42 0
	l.d	$f0,$LC9
	l.d	$f12,48($fp)
	mov.d	$f14,$f0
	la	$t9,pow
	jal	$ra,$t9
	mov.d	$f20,$f0
	l.s	$f0,56($fp)
	cvt.d.s	$f0,$f0
	l.d	$f2,$LC9
	mov.d	$f12,$f0
	mov.d	$f14,$f2
	la	$t9,pow
	jal	$ra,$t9
	add.d	$f0,$f20,$f0
	mov.d	$f12,$f0
	la	$t9,sqrt
	jal	$ra,$t9
	.loc 1 43 0
	move	$sp,$fp
	lw	$ra,32($sp)
	lw	$fp,28($sp)
	l.d	$f20,40($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	abs_cplx
$LFE35:
	.size	abs_cplx, .-abs_cplx
	.rdata
	.align	3
$LC10:
	.word	0
	.word	1073741824
	.text
	.align	2
	.globl	sqr_cplx
$LFB37:
	.loc 1 45 0
	.ent	sqr_cplx
sqr_cplx:
	.frame	$fp,56,$ra		# vars= 8, regs= 4/1, args= 16, extra= 8
	.mask	0xd0010000,-12
	.fmask	0x00300000,-8
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,56
	.cprestore 16
$LCFI21:
	sw	$ra,44($sp)
$LCFI22:
	sw	$fp,40($sp)
$LCFI23:
	sw	$gp,36($sp)
$LCFI24:
	sw	$s0,32($sp)
$LCFI25:
	s.d	$f20,48($sp)
$LCFI26:
	move	$fp,$sp
$LCFI27:
	sw	$a0,56($fp)
	.loc 1 46 0
$LBB6:
	lw	$v0,56($fp)
	l.s	$f0,8($v0)
	cvt.d.s	$f0,$f0
	s.d	$f0,24($fp)
	.loc 1 47 0
	lw	$v1,56($fp)
	lw	$v0,56($fp)
	l.d	$f0,0($v0)
	add.d	$f2,$f0,$f0
	lw	$v0,56($fp)
	l.s	$f0,8($v0)
	cvt.d.s	$f0,$f0
	mul.d	$f0,$f2,$f0
	cvt.s.d	$f0,$f0
	s.s	$f0,8($v1)
	.loc 1 48 0
	lw	$s0,56($fp)
	lw	$v0,56($fp)
	l.d	$f0,$LC10
	l.d	$f12,0($v0)
	mov.d	$f14,$f0
	la	$t9,pow
	jal	$ra,$t9
	mov.d	$f20,$f0
	l.d	$f0,$LC10
	l.d	$f12,24($fp)
	mov.d	$f14,$f0
	la	$t9,pow
	jal	$ra,$t9
	sub.d	$f0,$f20,$f0
	s.d	$f0,0($s0)
	.loc 1 49 0
	move	$sp,$fp
	lw	$ra,44($sp)
	lw	$fp,40($sp)
	lw	$s0,32($sp)
	l.d	$f20,48($sp)
	addu	$sp,$sp,56
	j	$ra
$LBE6:
	.end	sqr_cplx
$LFE37:
	.size	sqr_cplx, .-sqr_cplx
	.rdata
	.align	2
$LC11:
	.ascii	"Debe ingresar correctamente los argumentos. Abortando ej"
	.ascii	"ecucion\n\000"
	.align	2
$LC12:
	.ascii	"La ruta de arhivo ingresada no es valida. Abortando ejec"
	.ascii	"ucion\n\000"
	.align	2
$LC13:
	.ascii	"No se ha podido reservar la memoria necesaria. Abortando"
	.ascii	" ejecucion\n\000"
	.align	2
$LC14:
	.ascii	"Error no contemplado. Abortando Ejecucion \n\000"
	.text
	.align	2
	.globl	imprimir_error
$LFB39:
	.loc 1 51 0
	.ent	imprimir_error
imprimir_error:
	.frame	$fp,48,$ra		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
$LCFI28:
	sw	$ra,40($sp)
$LCFI29:
	sw	$fp,36($sp)
$LCFI30:
	sw	$gp,32($sp)
$LCFI31:
	move	$fp,$sp
$LCFI32:
	sw	$a0,48($fp)
	.loc 1 52 0
	lw	$v0,48($fp)
	sw	$v0,24($fp)
	li	$v0,-2			# 0xfffffffffffffffe
	lw	$v1,24($fp)
	beq	$v1,$v0,$L33
	lw	$v1,24($fp)
	slt	$v0,$v1,-1
	beq	$v0,$zero,$L37
	li	$v0,-3			# 0xfffffffffffffffd
	lw	$v1,24($fp)
	beq	$v1,$v0,$L34
	b	$L35
$L37:
	li	$v0,-1			# 0xffffffffffffffff
	lw	$v1,24($fp)
	beq	$v1,$v0,$L32
	b	$L35
$L32:
	.loc 1 54 0
	la	$a0,$LC11
	la	$t9,printf
	jal	$ra,$t9
	.loc 1 55 0
	li	$a0,-1			# 0xffffffffffffffff
	la	$t9,exit
	jal	$ra,$t9
$L33:
	.loc 1 58 0
	la	$a0,$LC12
	la	$t9,printf
	jal	$ra,$t9
	.loc 1 59 0
	li	$a0,-2			# 0xfffffffffffffffe
	la	$t9,exit
	jal	$ra,$t9
$L34:
	.loc 1 61 0
	la	$a0,$LC13
	la	$t9,printf
	jal	$ra,$t9
	.loc 1 62 0
	li	$a0,-3			# 0xfffffffffffffffd
	la	$t9,exit
	jal	$ra,$t9
$L35:
	.loc 1 64 0
	la	$a0,$LC14
	la	$t9,printf
	jal	$ra,$t9
	.loc 1 65 0
	lw	$a0,48($fp)
	la	$t9,exit
	jal	$ra,$t9
	.loc 1 66 0
	.end	imprimir_error
$LFE39:
	.size	imprimir_error, .-imprimir_error
	.align	2
	.globl	create_matrix
$LFB41:
	.loc 1 68 0
	.ent	create_matrix
create_matrix:
	.frame	$fp,48,$ra		# vars= 8, regs= 4/0, args= 16, extra= 8
	.mask	0xd0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
$LCFI33:
	sw	$ra,44($sp)
$LCFI34:
	sw	$fp,40($sp)
$LCFI35:
	sw	$gp,36($sp)
$LCFI36:
	sw	$s0,32($sp)
$LCFI37:
	move	$fp,$sp
$LCFI38:
	sw	$a0,48($fp)
	sw	$a1,52($fp)
	sw	$a2,56($fp)
	.loc 1 69 0
$LBB7:
	lw	$v0,48($fp)
	sll	$v0,$v0,2
	move	$a0,$v0
	la	$t9,malloc
	jal	$ra,$t9
	sw	$v0,24($fp)
	.loc 1 71 0
	lw	$v0,24($fp)
	bne	$v0,$zero,$L39
	.loc 1 72 0
	li	$v0,-3			# 0xfffffffffffffffd
	sw	$v0,56($fp)
	.loc 1 73 0
	lw	$a0,56($fp)
	la	$t9,imprimir_error
	jal	$ra,$t9
$L39:
	.loc 1 75 0
$LBB8:
	sw	$zero,28($fp)
$L40:
	lw	$v0,28($fp)
	lw	$v1,48($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L43
	b	$L41
$L43:
	.loc 1 76 0
	lw	$v0,28($fp)
	sll	$v1,$v0,2
	lw	$v0,24($fp)
	addu	$s0,$v1,$v0
	lw	$v0,52($fp)
	sll	$v0,$v0,2
	move	$a0,$v0
	la	$t9,malloc
	jal	$ra,$t9
	sw	$v0,0($s0)
	.loc 1 77 0
	lw	$v0,28($fp)
	sll	$v1,$v0,2
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lw	$v0,0($v0)
	bne	$v0,$zero,$L42
	.loc 1 78 0
	li	$v0,-3			# 0xfffffffffffffffd
	sw	$v0,56($fp)
	.loc 1 79 0
	lw	$a0,56($fp)
	la	$t9,imprimir_error
	jal	$ra,$t9
	.loc 1 75 0
$L42:
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	b	$L40
$L41:
	.loc 1 82 0
$LBE8:
	lw	$v0,24($fp)
	.loc 1 83 0
	move	$sp,$fp
	lw	$ra,44($sp)
	lw	$fp,40($sp)
	lw	$s0,32($sp)
	addu	$sp,$sp,48
	j	$ra
$LBE7:
	.end	create_matrix
$LFE41:
	.size	create_matrix, .-create_matrix
	.rdata
	.align	3
$LC15:
	.word	0
	.word	1073741824
	.text
	.align	2
	.globl	generate_julia
$LFB43:
	.loc 1 85 0
	.ent	generate_julia
generate_julia:
	.frame	$fp,136,$ra		# vars= 96, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,136
	.cprestore 16
$LCFI39:
	sw	$ra,128($sp)
$LCFI40:
	sw	$fp,124($sp)
$LCFI41:
	sw	$gp,120($sp)
$LCFI42:
	move	$fp,$sp
$LCFI43:
	sw	$a0,136($fp)
	sw	$a1,140($fp)
	sw	$a2,144($fp)
	.loc 1 87 0
$LBB9:
	sw	$zero,32($fp)
	.loc 1 88 0
	l.d	$f0,152($fp)
	neg.d	$f2,$f0
	l.d	$f0,$LC15
	div.d	$f0,$f2,$f0
	s.d	$f0,40($fp)
	.loc 1 89 0
	l.d	$f2,152($fp)
	l.d	$f0,$LC15
	div.d	$f0,$f2,$f0
	s.d	$f0,48($fp)
	.loc 1 90 0
	l.d	$f0,160($fp)
	neg.d	$f2,$f0
	l.d	$f0,$LC15
	div.d	$f0,$f2,$f0
	s.d	$f0,56($fp)
	.loc 1 91 0
	l.d	$f2,160($fp)
	l.d	$f0,$LC15
	div.d	$f0,$f2,$f0
	s.d	$f0,64($fp)
	.loc 1 93 0
	lw	$v1,140($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L46
	.loc 1 94 0
	l.d	$f2,48($fp)
	l.d	$f0,40($fp)
	sub.d	$f2,$f2,$f0
	lw	$v0,140($fp)
	addu	$v0,$v0,-1
	mtc1	$v0,$f0
	cvt.d.w	$f0,$f0
	div.d	$f0,$f2,$f0
	s.d	$f0,72($fp)
	b	$L47
$L46:
	.loc 1 97 0
	l.d	$f0,48($fp)
	l.d	$f2,40($fp)
	sub.d	$f0,$f0,$f2
	s.d	$f0,72($fp)
$L47:
	.loc 1 99 0
	lw	$v1,144($fp)
	li	$v0,1			# 0x1
	beq	$v1,$v0,$L48
	.loc 1 100 0
	l.d	$f2,64($fp)
	l.d	$f0,56($fp)
	sub.d	$f2,$f2,$f0
	lw	$v0,144($fp)
	addu	$v0,$v0,-1
	mtc1	$v0,$f0
	cvt.d.w	$f0,$f0
	div.d	$f0,$f2,$f0
	s.d	$f0,80($fp)
	b	$L49
$L48:
	.loc 1 103 0
	l.d	$f0,64($fp)
	l.d	$f2,56($fp)
	sub.d	$f0,$f0,$f2
	s.d	$f0,80($fp)
$L49:
	.loc 1 108 0
$LBB10:
	sw	$zero,88($fp)
$L50:
	lw	$v0,88($fp)
	lw	$v1,144($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L53
	b	$L45
$L53:
	.loc 1 109 0
$LBB11:
	l.d	$f2,80($fp)
	l.d	$f0,$LC15
	div.d	$f2,$f2,$f0
	l.d	$f0,64($fp)
	sub.d	$f4,$f0,$f2
	l.s	$f0,88($fp)
	cvt.d.w	$f2,$f0
	l.d	$f0,80($fp)
	mul.d	$f0,$f2,$f0
	sub.d	$f2,$f4,$f0
	l.s	$f0,192($fp)
	cvt.d.s	$f0,$f0
	add.d	$f0,$f2,$f0
	s.d	$f0,24($fp)
	.loc 1 111 0
$LBB12:
	sw	$zero,112($fp)
$L54:
	lw	$v0,112($fp)
	lw	$v1,140($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L57
	b	$L52
$L57:
	.loc 1 112 0
	l.d	$f2,72($fp)
	l.d	$f0,$LC15
	div.d	$f2,$f2,$f0
	l.d	$f0,40($fp)
	add.d	$f4,$f2,$f0
	l.s	$f0,112($fp)
	cvt.d.w	$f2,$f0
	l.d	$f0,72($fp)
	mul.d	$f0,$f2,$f0
	add.d	$f2,$f4,$f0
	l.d	$f0,184($fp)
	add.d	$f0,$f2,$f0
	s.d	$f0,96($fp)
	.loc 1 113 0
	l.d	$f0,24($fp)
	cvt.s.d	$f0,$f0
	s.s	$f0,104($fp)
	.loc 1 115 0
$L58:
	lw	$a0,96($fp)
	lw	$a1,100($fp)
	lw	$a2,104($fp)
	lw	$a3,108($fp)
	la	$t9,abs_cplx
	jal	$ra,$t9
	mov.d	$f2,$f0
	l.d	$f0,$LC15
	c.lt.d	$f2,$f0
	bc1t	$L62
	b	$L59
$L62:
	lw	$v0,32($fp)
	slt	$v0,$v0,255
	bne	$v0,$zero,$L60
	b	$L59
$L60:
	.loc 1 117 0
	addu	$v0,$fp,96
	move	$a0,$v0
	la	$t9,sqr_cplx
	jal	$ra,$t9
	.loc 1 118 0
	l.d	$f2,96($fp)
	l.d	$f0,168($fp)
	add.d	$f0,$f2,$f0
	s.d	$f0,96($fp)
	.loc 1 119 0
	l.s	$f2,104($fp)
	l.s	$f0,176($fp)
	add.s	$f0,$f2,$f0
	s.s	$f0,104($fp)
	.loc 1 120 0
	lw	$v0,32($fp)
	addu	$v0,$v0,1
	sw	$v0,32($fp)
	b	$L58
$L59:
	.loc 1 122 0
	lw	$v0,88($fp)
	sll	$v1,$v0,2
	lw	$v0,136($fp)
	addu	$a0,$v1,$v0
	lw	$v0,112($fp)
	sll	$v1,$v0,2
	lw	$v0,0($a0)
	addu	$v1,$v1,$v0
	lw	$v0,32($fp)
	sw	$v0,0($v1)
	.loc 1 123 0
	sw	$zero,32($fp)
	.loc 1 111 0
	lw	$v0,112($fp)
	addu	$v0,$v0,1
	sw	$v0,112($fp)
	b	$L54
	.loc 1 108 0
$L52:
$LBE12:
$LBE11:
	lw	$v0,88($fp)
	addu	$v0,$v0,1
	sw	$v0,88($fp)
	b	$L50
	.loc 1 126 0
$L45:
	move	$sp,$fp
	lw	$ra,128($sp)
	lw	$fp,124($sp)
	addu	$sp,$sp,136
	j	$ra
$LBE10:
$LBE9:
	.end	generate_julia
$LFE43:
	.size	generate_julia, .-generate_julia
	.rdata
	.align	2
$LC19:
	.ascii	"Usage:\n"
	.ascii	"  tp0 -h  -V -c <a+bi> -C <a+bi> -H <float> -w <float> -"
	.ascii	"o <out_file> -\n"
	.ascii	"Options:\n"
	.ascii	"    -V\t    Imprime la version y finaliza.\n"
	.ascii	"    -h\t    Imprime esta informacion y finaliza.\n"
	.ascii	"    -c\t    Setea el centro de la imagen.\n"
	.ascii	"    -H\t    Setea el alto del rectangulo. Valor por defe"
	.ascii	"cto=4\n"
	.ascii	"    -w\t    Setea el ancho del rectangulo. Valor por def"
	.ascii	"ecto=4\n"
	.ascii	"    -o\t    Setea el archivo de salida    -C\t    Setea "
	.ascii	"la constante del algoritmo. Valor por defecto= 0.285+0.0"
	.ascii	"1i\n"
	.ascii	"Examples:\n"
	.ascii	"  tp0 -c +0.282-0.01i -w 0.005 -H 0.005 -o dos.pgm\n\000"
	.align	2
$LC20:
	.ascii	"Conjunto de Julia\n"
	.ascii	"v1.0\n\000"
	.align	2
$LC21:
	.ascii	"xX\000"
	.align	2
$LC22:
	.ascii	"-+\000"
	.align	2
$LC23:
	.ascii	"i\000"
	.align	2
$LC24:
	.ascii	"-\000"
	.align	2
$LC25:
	.ascii	"w\000"
	.align	2
$LC26:
	.ascii	"Argumento desconocido: prueba con -h para ver la ayuda.\n"
	.ascii	"\000"
	.align	2
$LC27:
	.ascii	"Error! Formato desconocido. Prueba con -h para ver la ay"
	.ascii	"uda. \n\000"
	.align	2
$LC28:
	.ascii	"Se correra el programa con los valores por DEFAULT. \n\000"
	.align	3
$LC16:
	.word	-1546188227
	.word	1070742896
	.align	2
$LC17:
	.word	-1138501878
	.align	3
$LC18:
	.word	0
	.word	1074790400
	.text
	.align	2
	.globl	main
$LFB45:
	.loc 1 129 0
	.ent	main
main:
	.frame	$fp,176,$ra		# vars= 88, regs= 3/0, args= 64, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,176
	.cprestore 64
$LCFI44:
	sw	$ra,168($sp)
$LCFI45:
	sw	$fp,164($sp)
$LCFI46:
	sw	$gp,160($sp)
$LCFI47:
	move	$fp,$sp
$LCFI48:
	sw	$a0,176($fp)
	sw	$a1,180($fp)
	.loc 1 130 0
$LBB13:
	sw	$zero,72($fp)
	.loc 1 131 0
	li	$v0,480			# 0x1e0
	sw	$v0,76($fp)
	.loc 1 132 0
	li	$v0,640			# 0x280
	sw	$v0,80($fp)
	.loc 1 135 0
	sw	$zero,104($fp)
	sw	$zero,108($fp)
	.loc 1 136 0
	sw	$zero,112($fp)
	.loc 1 137 0
	l.d	$f0,$LC16
	s.d	$f0,88($fp)
	.loc 1 138 0
	l.s	$f0,$LC17
	s.s	$f0,96($fp)
	.loc 1 141 0
	l.d	$f0,$LC18
	s.d	$f0,128($fp)
	l.d	$f0,$LC18
	s.d	$f0,136($fp)
	.loc 1 142 0
	la	$v0,__sF+88
	sw	$v0,144($fp)
	.loc 1 144 0
	lw	$v0,176($fp)
	slt	$v0,$v0,2
	bne	$v0,$zero,$L64
	.loc 1 145 0
$LBB14:
	li	$v0,1			# 0x1
	sw	$v0,148($fp)
$L65:
	lw	$v0,148($fp)
	lw	$v1,176($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L68
	b	$L101
$L68:
	.loc 1 146 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	lw	$v0,0($v0)
	lb	$v1,0($v0)
	li	$v0,45			# 0x2d
	bne	$v1,$v0,$L69
	.loc 1 148 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	lw	$v0,0($v0)
	addu	$v0,$v0,1
	lb	$v0,0($v0)
	addu	$v0,$v0,-67
	sw	$v0,156($fp)
	lw	$v1,156($fp)
	sltu	$v0,$v1,53
	beq	$v0,$zero,$L98
	lw	$v0,156($fp)
	sll	$v1,$v0,2
	la	$v0,$L99
	addu	$v0,$v1,$v0
	lw	$v0,0($v0)
	.cpadd	$v0
	j	$v0
	.rdata
	.align	2
$L99:
	.gpword	$L78
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L90
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L72
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L84
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L71
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L92
	.gpword	$L98
	.gpword	$L98
	.gpword	$L73
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L98
	.gpword	$L96
	.text
$L71:
	.loc 1 149 0
	la	$a0,$LC19
	la	$t9,printf
	jal	$ra,$t9
	.loc 1 160 0
	sw	$zero,152($fp)
	b	$L63
$L72:
	.loc 1 162 0
	la	$a0,$LC20
	la	$t9,printf
	jal	$ra,$t9
	.loc 1 163 0
	sw	$zero,152($fp)
	b	$L63
$L73:
	.loc 1 166 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$a0,0($v0)
	la	$a1,$LC21
	la	$t9,strtok
	jal	$ra,$t9
	sw	$v0,120($fp)
	.loc 1 167 0
	lw	$v0,120($fp)
	bne	$v0,$zero,$L74
	.loc 1 168 0
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,72($fp)
	.loc 1 169 0
	b	$L67
$L74:
	.loc 1 171 0
	lw	$a0,120($fp)
	la	$t9,atoi
	jal	$ra,$t9
	sw	$v0,80($fp)
	.loc 1 173 0
	move	$a0,$zero
	la	$a1,$LC4
	la	$t9,strtok
	jal	$ra,$t9
	sw	$v0,120($fp)
	.loc 1 174 0
	lw	$v0,120($fp)
	bne	$v0,$zero,$L75
	.loc 1 175 0
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,72($fp)
	.loc 1 176 0
	b	$L67
$L75:
	.loc 1 178 0
	lw	$a0,120($fp)
	la	$t9,atoi
	jal	$ra,$t9
	sw	$v0,76($fp)
	.loc 1 179 0
	lw	$v0,80($fp)
	beq	$v0,$zero,$L77
	lw	$v0,76($fp)
	bne	$v0,$zero,$L67
$L77:
	.loc 1 180 0
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,72($fp)
	.loc 1 181 0
	b	$L67
$L78:
	.loc 1 185 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$v0,0($v0)
	sw	$v0,120($fp)
	.loc 1 186 0
	lw	$v0,120($fp)
	bne	$v0,$zero,$L79
	.loc 1 187 0
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,72($fp)
	.loc 1 188 0
	b	$L67
$L79:
	.loc 1 190 0
	lw	$a0,120($fp)
	la	$t9,atof
	jal	$ra,$t9
	s.d	$f0,88($fp)
	.loc 1 191 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$v0,0($v0)
	lb	$v1,0($v0)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L81
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$v0,0($v0)
	lb	$v1,0($v0)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L81
	b	$L80
$L81:
	.loc 1 192 0
	lw	$v0,120($fp)
	addu	$v0,$v0,1
	move	$a0,$v0
	la	$a1,$LC22
	la	$t9,strpbrk
	jal	$ra,$t9
	sw	$v0,120($fp)
	b	$L82
$L80:
	.loc 1 194 0
	lw	$a0,120($fp)
	la	$a1,$LC22
	la	$t9,strpbrk
	jal	$ra,$t9
	sw	$v0,120($fp)
$L82:
	.loc 1 195 0
	lw	$a0,120($fp)
	la	$a1,$LC23
	la	$t9,strpbrk
	jal	$ra,$t9
	sw	$v0,124($fp)
	.loc 1 196 0
	lw	$v0,124($fp)
	bne	$v0,$zero,$L83
	.loc 1 197 0
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,72($fp)
	.loc 1 198 0
	b	$L67
$L83:
	.loc 1 200 0
	lw	$a0,120($fp)
	la	$t9,atof
	jal	$ra,$t9
	cvt.s.d	$f0,$f0
	s.s	$f0,96($fp)
	.loc 1 201 0
	b	$L67
$L84:
	.loc 1 204 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$v0,0($v0)
	sw	$v0,120($fp)
	.loc 1 205 0
	lw	$v0,120($fp)
	bne	$v0,$zero,$L85
	.loc 1 206 0
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,72($fp)
	.loc 1 207 0
	b	$L67
$L85:
	.loc 1 209 0
	lw	$a0,120($fp)
	la	$t9,atof
	jal	$ra,$t9
	s.d	$f0,104($fp)
	.loc 1 210 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$v0,0($v0)
	lb	$v1,0($v0)
	li	$v0,45			# 0x2d
	beq	$v1,$v0,$L87
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$v0,0($v0)
	lb	$v1,0($v0)
	li	$v0,43			# 0x2b
	beq	$v1,$v0,$L87
	b	$L86
$L87:
	.loc 1 211 0
	lw	$v0,120($fp)
	addu	$v0,$v0,1
	move	$a0,$v0
	la	$a1,$LC22
	la	$t9,strpbrk
	jal	$ra,$t9
	sw	$v0,120($fp)
	b	$L88
$L86:
	.loc 1 214 0
	lw	$a0,120($fp)
	la	$a1,$LC22
	la	$t9,strpbrk
	jal	$ra,$t9
	sw	$v0,120($fp)
$L88:
	.loc 1 216 0
	lw	$a0,120($fp)
	la	$a1,$LC23
	la	$t9,strpbrk
	jal	$ra,$t9
	sw	$v0,124($fp)
	.loc 1 217 0
	lw	$v0,124($fp)
	bne	$v0,$zero,$L89
	.loc 1 218 0
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,72($fp)
	.loc 1 219 0
	b	$L67
$L89:
	.loc 1 221 0
	lw	$a0,120($fp)
	la	$t9,atof
	jal	$ra,$t9
	cvt.s.d	$f0,$f0
	s.s	$f0,112($fp)
	.loc 1 222 0
	b	$L67
$L90:
	.loc 1 224 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$v0,0($v0)
	bne	$v0,$zero,$L91
	.loc 1 225 0
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,72($fp)
	.loc 1 226 0
	b	$L67
$L91:
	.loc 1 228 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$a0,0($v0)
	la	$t9,atof
	jal	$ra,$t9
	s.d	$f0,128($fp)
	.loc 1 229 0
	b	$L67
$L92:
	.loc 1 231 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$v0,0($v0)
	bne	$v0,$zero,$L93
	.loc 1 232 0
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,72($fp)
	.loc 1 233 0
	b	$L67
$L93:
	.loc 1 235 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$a0,0($v0)
	la	$a1,$LC24
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L94
	.loc 1 236 0
	b	$L67
$L94:
	.loc 1 239 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$a0,0($v0)
	la	$a1,$LC25
	la	$t9,fopen
	jal	$ra,$t9
	sw	$v0,144($fp)
	.loc 1 240 0
	lw	$v0,144($fp)
	bne	$v0,$zero,$L67
	.loc 1 241 0
	li	$v0,-2			# 0xfffffffffffffffe
	sw	$v0,72($fp)
	.loc 1 242 0
	b	$L67
$L96:
	.loc 1 246 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$v0,0($v0)
	bne	$v0,$zero,$L97
	.loc 1 247 0
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,72($fp)
	.loc 1 248 0
	b	$L67
$L97:
	.loc 1 250 0
	lw	$v0,148($fp)
	sll	$v1,$v0,2
	lw	$v0,180($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$a0,0($v0)
	la	$t9,atof
	jal	$ra,$t9
	s.d	$f0,136($fp)
	.loc 1 251 0
	b	$L67
$L98:
	.loc 1 252 0
	la	$a0,$LC26
	la	$t9,printf
	jal	$ra,$t9
	b	$L67
$L69:
	.loc 1 256 0
	la	$a0,$LC27
	la	$t9,printf
	jal	$ra,$t9
	.loc 1 257 0
	li	$v0,1			# 0x1
	sw	$v0,152($fp)
	b	$L63
	.loc 1 145 0
$L67:
	lw	$v0,148($fp)
	addu	$v0,$v0,2
	sw	$v0,148($fp)
	b	$L65
$L64:
	.loc 1 263 0
$LBE14:
	la	$a0,$LC28
	la	$t9,printf
	jal	$ra,$t9
$L101:
	.loc 1 265 0
	lw	$v0,72($fp)
	beq	$v0,$zero,$L102
	lw	$a0,72($fp)
	la	$t9,imprimir_error
	jal	$ra,$t9
$L102:
	.loc 1 266 0
	lw	$a0,144($fp)
	lw	$a1,76($fp)
	lw	$a2,80($fp)
	la	$t9,armar_headerPGM
	jal	$ra,$t9
	.loc 1 269 0
	lw	$a0,76($fp)
	lw	$a1,80($fp)
	lw	$a2,72($fp)
	la	$t9,create_matrix
	jal	$ra,$t9
	sw	$v0,148($fp)
	.loc 1 271 0
	l.d	$f0,136($fp)
	s.d	$f0,16($sp)
	l.d	$f0,128($fp)
	s.d	$f0,24($sp)
	lw	$v0,88($fp)
	sw	$v0,32($sp)
	lw	$v0,92($fp)
	sw	$v0,36($sp)
	lw	$v0,96($fp)
	sw	$v0,40($sp)
	lw	$v0,100($fp)
	sw	$v0,44($sp)
	lw	$v0,104($fp)
	sw	$v0,48($sp)
	lw	$v0,108($fp)
	sw	$v0,52($sp)
	lw	$v0,112($fp)
	sw	$v0,56($sp)
	lw	$v0,116($fp)
	sw	$v0,60($sp)
	lw	$a0,148($fp)
	lw	$a1,80($fp)
	lw	$a2,76($fp)
	la	$t9,generate_julia
	jal	$ra,$t9
	.loc 1 272 0
	lw	$a0,144($fp)
	lw	$a1,148($fp)
	lw	$a2,76($fp)
	lw	$a3,80($fp)
	la	$t9,armar_imagenPGM
	jal	$ra,$t9
	.loc 1 273 0
	sw	$zero,152($fp)
	.loc 1 274 0
$L63:
$LBE13:
	lw	$v0,152($fp)
	move	$sp,$fp
	lw	$ra,168($sp)
	lw	$fp,164($sp)
	addu	$sp,$sp,176
	j	$ra
	.end	main
$LFE45:
	.size	main, .-main
	.section	.debug_frame,"",@progbits
$Lframe0:
	.4byte	$LECIE0-$LSCIE0
$LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 4
	.byte	0x40
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x0
	.align	2
$LECIE0:
$LSFDE0:
	.4byte	$LEFDE0-$LASFDE0
$LASFDE0:
	.4byte	$Lframe0
	.4byte	$LFB29
	.4byte	$LFE29-$LFB29
	.byte	0x4
	.4byte	$LCFI0-$LFB29
	.byte	0xe
	.uleb128 0x60
	.byte	0x4
	.4byte	$LCFI3-$LCFI0
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI4-$LCFI3
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x60
	.align	2
$LEFDE0:
$LSFDE2:
	.4byte	$LEFDE2-$LASFDE2
$LASFDE2:
	.4byte	$Lframe0
	.4byte	$LFB31
	.4byte	$LFE31-$LFB31
	.byte	0x4
	.4byte	$LCFI5-$LFB31
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	$LCFI8-$LCFI5
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI9-$LCFI8
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x30
	.align	2
$LEFDE2:
$LSFDE4:
	.4byte	$LEFDE4-$LASFDE4
$LASFDE4:
	.4byte	$Lframe0
	.4byte	$LFB33
	.4byte	$LFE33-$LFB33
	.byte	0x4
	.4byte	$LCFI10-$LFB33
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	$LCFI13-$LCFI10
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI14-$LCFI13
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x30
	.align	2
$LEFDE4:
$LSFDE6:
	.4byte	$LEFDE6-$LASFDE6
$LASFDE6:
	.4byte	$Lframe0
	.4byte	$LFB35
	.4byte	$LFE35-$LFB35
	.byte	0x4
	.4byte	$LCFI15-$LFB35
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	$LCFI19-$LCFI15
	.byte	0x11
	.uleb128 0x35
	.sleb128 -1
	.byte	0x11
	.uleb128 0x34
	.sleb128 -2
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -6
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -5
	.byte	0x11
	.uleb128 0x40
	.sleb128 -4
	.byte	0x4
	.4byte	$LCFI20-$LCFI19
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x30
	.align	2
$LEFDE6:
$LSFDE8:
	.4byte	$LEFDE8-$LASFDE8
$LASFDE8:
	.4byte	$Lframe0
	.4byte	$LFB37
	.4byte	$LFE37-$LFB37
	.byte	0x4
	.4byte	$LCFI21-$LFB37
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	$LCFI26-$LCFI21
	.byte	0x11
	.uleb128 0x35
	.sleb128 -1
	.byte	0x11
	.uleb128 0x34
	.sleb128 -2
	.byte	0x11
	.uleb128 0x10
	.sleb128 -6
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -5
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -4
	.byte	0x11
	.uleb128 0x40
	.sleb128 -3
	.byte	0x4
	.4byte	$LCFI27-$LCFI26
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x38
	.align	2
$LEFDE8:
$LSFDE10:
	.4byte	$LEFDE10-$LASFDE10
$LASFDE10:
	.4byte	$Lframe0
	.4byte	$LFB39
	.4byte	$LFE39-$LFB39
	.byte	0x4
	.4byte	$LCFI28-$LFB39
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	$LCFI31-$LCFI28
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI32-$LCFI31
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x30
	.align	2
$LEFDE10:
$LSFDE12:
	.4byte	$LEFDE12-$LASFDE12
$LASFDE12:
	.4byte	$Lframe0
	.4byte	$LFB41
	.4byte	$LFE41-$LFB41
	.byte	0x4
	.4byte	$LCFI33-$LFB41
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	$LCFI37-$LCFI33
	.byte	0x11
	.uleb128 0x10
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -3
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -2
	.byte	0x11
	.uleb128 0x40
	.sleb128 -1
	.byte	0x4
	.4byte	$LCFI38-$LCFI37
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x30
	.align	2
$LEFDE12:
$LSFDE14:
	.4byte	$LEFDE14-$LASFDE14
$LASFDE14:
	.4byte	$Lframe0
	.4byte	$LFB43
	.4byte	$LFE43-$LFB43
	.byte	0x4
	.4byte	$LCFI39-$LFB43
	.byte	0xe
	.uleb128 0x88
	.byte	0x4
	.4byte	$LCFI42-$LCFI39
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI43-$LCFI42
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0x88
	.align	2
$LEFDE14:
$LSFDE16:
	.4byte	$LEFDE16-$LASFDE16
$LASFDE16:
	.4byte	$Lframe0
	.4byte	$LFB45
	.4byte	$LFE45-$LFB45
	.byte	0x4
	.4byte	$LCFI44-$LFB45
	.byte	0xe
	.uleb128 0xb0
	.byte	0x4
	.4byte	$LCFI47-$LCFI44
	.byte	0x11
	.uleb128 0x1c
	.sleb128 -4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -3
	.byte	0x11
	.uleb128 0x40
	.sleb128 -2
	.byte	0x4
	.4byte	$LCFI48-$LCFI47
	.byte	0xc
	.uleb128 0x1e
	.uleb128 0xb0
	.align	2
$LEFDE16:
	.align	0
	.text
$Letext0:
	.section	.debug_info
	.4byte	0x115e
	.2byte	0x2
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$Ldebug_line0
	.4byte	$Letext0
	.4byte	$Ltext0
	.4byte	$LC285
	.4byte	$LC286
	.4byte	$LC287
	.byte	0x1
	.uleb128 0x2
	.4byte	$LC29
	.byte	0x2
	.byte	0x30
	.4byte	0x30
	.uleb128 0x3
	.4byte	$LC31
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.4byte	$LC30
	.byte	0x2
	.byte	0x31
	.4byte	0x42
	.uleb128 0x3
	.4byte	$LC32
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.4byte	$LC33
	.byte	0x2
	.byte	0x32
	.4byte	0x54
	.uleb128 0x3
	.4byte	$LC34
	.byte	0x2
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC35
	.byte	0x2
	.byte	0x33
	.4byte	0x66
	.uleb128 0x3
	.4byte	$LC36
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC37
	.byte	0x2
	.byte	0x34
	.4byte	0x78
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC38
	.byte	0x2
	.byte	0x35
	.4byte	0x8a
	.uleb128 0x3
	.4byte	$LC39
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC40
	.byte	0x2
	.byte	0x3e
	.4byte	0x9c
	.uleb128 0x3
	.4byte	$LC41
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC42
	.byte	0x2
	.byte	0x40
	.4byte	0xae
	.uleb128 0x3
	.4byte	$LC43
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC44
	.byte	0x2
	.byte	0x4b
	.4byte	0x78
	.uleb128 0x2
	.4byte	$LC45
	.byte	0x2
	.byte	0x4c
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC46
	.byte	0x3
	.byte	0x2c
	.4byte	0xd6
	.uleb128 0x5
	.byte	0x4
	.4byte	0xdc
	.uleb128 0x3
	.4byte	$LC47
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.4byte	$LC48
	.byte	0x3
	.byte	0x2d
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC49
	.byte	0x3
	.byte	0x2e
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC50
	.byte	0x3
	.byte	0x2f
	.4byte	0x5b
	.uleb128 0x2
	.4byte	$LC51
	.byte	0x3
	.byte	0x30
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC52
	.byte	0x3
	.byte	0x31
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC53
	.byte	0x3
	.byte	0x32
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC54
	.byte	0x3
	.byte	0x33
	.4byte	0x37
	.uleb128 0x2
	.4byte	$LC55
	.byte	0x3
	.byte	0x34
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC56
	.byte	0x3
	.byte	0x35
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC57
	.byte	0x3
	.byte	0x36
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC58
	.byte	0x3
	.byte	0x37
	.4byte	0xa3
	.uleb128 0x6
	.4byte	0x17b
	.byte	0x80
	.byte	0x4
	.byte	0x65
	.uleb128 0x7
	.4byte	$LC59
	.byte	0x4
	.byte	0x63
	.4byte	0x17b
	.uleb128 0x7
	.4byte	$LC60
	.byte	0x4
	.byte	0x64
	.4byte	0x91
	.byte	0x0
	.uleb128 0x8
	.4byte	0x18b
	.4byte	0xdc
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x7f
	.byte	0x0
	.uleb128 0x3
	.4byte	$LC39
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC61
	.byte	0x4
	.byte	0x65
	.4byte	0x15c
	.uleb128 0x2
	.4byte	$LC62
	.byte	0x5
	.byte	0x2e
	.4byte	0x8a
	.uleb128 0xa
	.4byte	0x1c3
	.4byte	$LC65
	.byte	0x8
	.byte	0x5
	.byte	0x3c
	.uleb128 0xb
	.4byte	$LC63
	.byte	0x5
	.byte	0x3d
	.4byte	0x10f
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC64
	.byte	0x5
	.byte	0x3e
	.4byte	0x1a8
	.uleb128 0xa
	.4byte	0x1f7
	.4byte	$LC66
	.byte	0x8
	.byte	0x5
	.byte	0x4a
	.uleb128 0xb
	.4byte	$LC67
	.byte	0x5
	.byte	0x4b
	.4byte	0x1f7
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC68
	.byte	0x5
	.byte	0x4c
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x42
	.uleb128 0xa
	.4byte	0x31f
	.4byte	$LC69
	.byte	0x58
	.byte	0x5
	.byte	0x69
	.uleb128 0xc
	.ascii	"_p\000"
	.byte	0x5
	.byte	0x6a
	.4byte	0x1f7
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"_r\000"
	.byte	0x5
	.byte	0x6b
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xc
	.ascii	"_w\000"
	.byte	0x5
	.byte	0x6c
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC70
	.byte	0x5
	.byte	0x6d
	.4byte	0x54
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.uleb128 0xb
	.4byte	$LC71
	.byte	0x5
	.byte	0x6e
	.4byte	0x54
	.byte	0x2
	.byte	0x10
	.uleb128 0xe
	.uleb128 0xc
	.ascii	"_bf\000"
	.byte	0x5
	.byte	0x6f
	.4byte	0x1ce
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC72
	.byte	0x5
	.byte	0x70
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.uleb128 0xb
	.4byte	$LC73
	.byte	0x5
	.byte	0x73
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	$LC74
	.byte	0x5
	.byte	0x74
	.4byte	0x331
	.byte	0x2
	.byte	0x10
	.uleb128 0x20
	.uleb128 0xb
	.4byte	$LC75
	.byte	0x5
	.byte	0x75
	.4byte	0x351
	.byte	0x2
	.byte	0x10
	.uleb128 0x24
	.uleb128 0xb
	.4byte	$LC76
	.byte	0x5
	.byte	0x76
	.4byte	0x371
	.byte	0x2
	.byte	0x10
	.uleb128 0x28
	.uleb128 0xb
	.4byte	$LC77
	.byte	0x5
	.byte	0x77
	.4byte	0x39c
	.byte	0x2
	.byte	0x10
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	$LC78
	.byte	0x5
	.byte	0x7a
	.4byte	0x1ce
	.byte	0x2
	.byte	0x10
	.uleb128 0x30
	.uleb128 0xc
	.ascii	"_up\000"
	.byte	0x5
	.byte	0x7d
	.4byte	0x1f7
	.byte	0x2
	.byte	0x10
	.uleb128 0x38
	.uleb128 0xc
	.ascii	"_ur\000"
	.byte	0x5
	.byte	0x7e
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	$LC79
	.byte	0x5
	.byte	0x81
	.4byte	0x3a2
	.byte	0x2
	.byte	0x10
	.uleb128 0x40
	.uleb128 0xb
	.4byte	$LC80
	.byte	0x5
	.byte	0x82
	.4byte	0x3b2
	.byte	0x2
	.byte	0x10
	.uleb128 0x43
	.uleb128 0xc
	.ascii	"_lb\000"
	.byte	0x5
	.byte	0x85
	.4byte	0x1ce
	.byte	0x2
	.byte	0x10
	.uleb128 0x44
	.uleb128 0xb
	.4byte	$LC81
	.byte	0x5
	.byte	0x88
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	$LC82
	.byte	0x5
	.byte	0x89
	.4byte	0x1c3
	.byte	0x2
	.byte	0x10
	.uleb128 0x50
	.byte	0x0
	.uleb128 0xd
	.byte	0x4
	.uleb128 0xe
	.4byte	0x331
	.byte	0x1
	.4byte	0x78
	.uleb128 0xf
	.4byte	0x31f
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x321
	.uleb128 0xe
	.4byte	0x351
	.byte	0x1
	.4byte	0x78
	.uleb128 0xf
	.4byte	0x31f
	.uleb128 0xf
	.4byte	0xd6
	.uleb128 0xf
	.4byte	0x78
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x337
	.uleb128 0xe
	.4byte	0x371
	.byte	0x1
	.4byte	0x1c3
	.uleb128 0xf
	.4byte	0x31f
	.uleb128 0xf
	.4byte	0x1c3
	.uleb128 0xf
	.4byte	0x78
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x357
	.uleb128 0xe
	.4byte	0x391
	.byte	0x1
	.4byte	0x78
	.uleb128 0xf
	.4byte	0x31f
	.uleb128 0xf
	.4byte	0x391
	.uleb128 0xf
	.4byte	0x78
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x397
	.uleb128 0x10
	.4byte	0xdc
	.uleb128 0x5
	.byte	0x4
	.4byte	0x377
	.uleb128 0x8
	.4byte	0x3b2
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x2
	.byte	0x0
	.uleb128 0x8
	.4byte	0x3c2
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC83
	.byte	0x5
	.byte	0x8a
	.4byte	0x1fd
	.uleb128 0x11
	.4byte	$LC84
	.byte	0x5
	.2byte	0x160
	.4byte	0x10f
	.uleb128 0x2
	.4byte	$LC85
	.byte	0x6
	.byte	0x3b
	.4byte	0x3e4
	.uleb128 0x3
	.4byte	$LC86
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	$LC87
	.byte	0x6
	.byte	0x3c
	.4byte	0x3f6
	.uleb128 0x3
	.4byte	$LC88
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	$LC89
	.byte	0x6
	.byte	0x3d
	.4byte	0x3e4
	.uleb128 0x2
	.4byte	$LC90
	.byte	0x6
	.byte	0x46
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	$LC91
	.byte	0x6
	.byte	0x47
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	$LC92
	.byte	0x6
	.byte	0x49
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	$LC93
	.byte	0x6
	.byte	0x4a
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	$LC94
	.byte	0x6
	.byte	0x51
	.4byte	0x3e4
	.uleb128 0x2
	.4byte	$LC95
	.byte	0x6
	.byte	0x5a
	.4byte	0x44a
	.uleb128 0x12
	.4byte	0x78
	.uleb128 0x2
	.4byte	$LC96
	.byte	0x7
	.byte	0x36
	.4byte	0x25
	.uleb128 0x2
	.4byte	$LC97
	.byte	0x7
	.byte	0x3b
	.4byte	0x37
	.uleb128 0x2
	.4byte	$LC98
	.byte	0x7
	.byte	0x40
	.4byte	0x49
	.uleb128 0x2
	.4byte	$LC99
	.byte	0x7
	.byte	0x45
	.4byte	0x5b
	.uleb128 0x2
	.4byte	$LC100
	.byte	0x7
	.byte	0x4a
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC101
	.byte	0x7
	.byte	0x4f
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC102
	.byte	0x7
	.byte	0x54
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC103
	.byte	0x7
	.byte	0x59
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC104
	.byte	0x7
	.byte	0x5d
	.4byte	0x37
	.uleb128 0x2
	.4byte	$LC105
	.byte	0x7
	.byte	0x5e
	.4byte	0x5b
	.uleb128 0x2
	.4byte	$LC106
	.byte	0x7
	.byte	0x5f
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC107
	.byte	0x7
	.byte	0x60
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC108
	.byte	0x8
	.byte	0x3a
	.4byte	0xee
	.uleb128 0x2
	.4byte	$LC109
	.byte	0x8
	.byte	0x3f
	.4byte	0xf9
	.uleb128 0x2
	.4byte	$LC110
	.byte	0x7
	.byte	0x65
	.4byte	0x42
	.uleb128 0x2
	.4byte	$LC111
	.byte	0x7
	.byte	0x66
	.4byte	0x66
	.uleb128 0x2
	.4byte	$LC112
	.byte	0x7
	.byte	0x67
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC113
	.byte	0x7
	.byte	0x68
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	$LC114
	.byte	0x7
	.byte	0x6a
	.4byte	0x42
	.uleb128 0x2
	.4byte	$LC115
	.byte	0x7
	.byte	0x6b
	.4byte	0x66
	.uleb128 0x2
	.4byte	$LC116
	.byte	0x7
	.byte	0x6c
	.4byte	0x8a
	.uleb128 0x2
	.4byte	$LC117
	.byte	0x7
	.byte	0x6d
	.4byte	0x3f6
	.uleb128 0x2
	.4byte	$LC118
	.byte	0x7
	.byte	0x6f
	.4byte	0x50a
	.uleb128 0x2
	.4byte	$LC119
	.byte	0x7
	.byte	0x72
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC120
	.byte	0x7
	.byte	0x73
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC121
	.byte	0x7
	.byte	0x74
	.4byte	0x56d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x557
	.uleb128 0x2
	.4byte	$LC122
	.byte	0x7
	.byte	0x80
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC123
	.byte	0x7
	.byte	0x81
	.4byte	0xa3
	.uleb128 0x2
	.4byte	$LC124
	.byte	0x7
	.byte	0x83
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC125
	.byte	0x7
	.byte	0x84
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC126
	.byte	0x7
	.byte	0x87
	.4byte	0x146
	.uleb128 0x2
	.4byte	$LC127
	.byte	0x7
	.byte	0x8c
	.4byte	0x151
	.uleb128 0x2
	.4byte	$LC128
	.byte	0x7
	.byte	0x91
	.4byte	0xcb
	.uleb128 0x2
	.4byte	$LC129
	.byte	0x7
	.byte	0x99
	.4byte	0x91
	.uleb128 0x2
	.4byte	$LC130
	.byte	0x7
	.byte	0x9c
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC131
	.byte	0x7
	.byte	0x9d
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC132
	.byte	0x7
	.byte	0xa0
	.4byte	0xe3
	.uleb128 0x2
	.4byte	$LC133
	.byte	0x7
	.byte	0xa4
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC134
	.byte	0x7
	.byte	0xa5
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC135
	.byte	0x7
	.byte	0xa6
	.4byte	0x3e4
	.uleb128 0x2
	.4byte	$LC136
	.byte	0x7
	.byte	0xa9
	.4byte	0x104
	.uleb128 0x2
	.4byte	$LC137
	.byte	0x7
	.byte	0xad
	.4byte	0x7f
	.uleb128 0x2
	.4byte	$LC138
	.byte	0x7
	.byte	0xb5
	.4byte	0x11a
	.uleb128 0x2
	.4byte	$LC139
	.byte	0x7
	.byte	0xb8
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC140
	.byte	0x7
	.byte	0xb9
	.4byte	0x557
	.uleb128 0x2
	.4byte	$LC141
	.byte	0x7
	.byte	0xba
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC142
	.byte	0x7
	.byte	0xbb
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC143
	.byte	0x7
	.byte	0xbe
	.4byte	0x13b
	.uleb128 0x2
	.4byte	$LC144
	.byte	0x7
	.byte	0xc2
	.4byte	0x6d
	.uleb128 0x2
	.4byte	$LC145
	.byte	0x7
	.byte	0xfc
	.4byte	0x3f6
	.uleb128 0x11
	.4byte	$LC146
	.byte	0x7
	.2byte	0x107
	.4byte	0x78
	.uleb128 0x11
	.4byte	$LC147
	.byte	0x7
	.2byte	0x10c
	.4byte	0x3e4
	.uleb128 0x11
	.4byte	$LC148
	.byte	0x7
	.2byte	0x111
	.4byte	0x78
	.uleb128 0x11
	.4byte	$LC149
	.byte	0x7
	.2byte	0x116
	.4byte	0x78
	.uleb128 0x11
	.4byte	$LC150
	.byte	0x7
	.2byte	0x11b
	.4byte	0x78
	.uleb128 0x11
	.4byte	$LC151
	.byte	0x7
	.2byte	0x120
	.4byte	0x8a
	.uleb128 0x11
	.4byte	$LC152
	.byte	0x7
	.2byte	0x12d
	.4byte	0x6d
	.uleb128 0x13
	.4byte	0x6ec
	.4byte	$LC153
	.byte	0x20
	.byte	0x7
	.2byte	0x142
	.uleb128 0x14
	.4byte	$LC154
	.byte	0x7
	.2byte	0x143
	.4byte	0x6ec
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0x6fc
	.4byte	0x6c3
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x7
	.byte	0x0
	.uleb128 0x11
	.4byte	$LC153
	.byte	0x7
	.2byte	0x144
	.4byte	0x6cf
	.uleb128 0x2
	.4byte	$LC155
	.byte	0x9
	.byte	0x2e
	.4byte	0x44a
	.uleb128 0xa
	.4byte	0x73c
	.4byte	$LC156
	.byte	0x8
	.byte	0x9
	.byte	0x39
	.uleb128 0xb
	.4byte	$LC157
	.byte	0x9
	.byte	0x39
	.4byte	0x742
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC158
	.byte	0x9
	.byte	0x39
	.4byte	0x748
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.4byte	$LC283
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x742
	.uleb128 0x2
	.4byte	$LC159
	.byte	0x9
	.byte	0x47
	.4byte	0x742
	.uleb128 0x2
	.4byte	$LC160
	.byte	0x9
	.byte	0x48
	.4byte	0x764
	.uleb128 0xa
	.4byte	0x79b
	.4byte	$LC161
	.byte	0xc
	.byte	0x9
	.byte	0x3c
	.uleb128 0xb
	.4byte	$LC162
	.byte	0x9
	.byte	0x56
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC163
	.byte	0x9
	.byte	0x58
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC164
	.byte	0x9
	.byte	0x59
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC165
	.byte	0x9
	.byte	0x49
	.4byte	0x7a6
	.uleb128 0xa
	.4byte	0x807
	.4byte	$LC166
	.byte	0x1c
	.byte	0x9
	.byte	0x3d
	.uleb128 0xb
	.4byte	$LC167
	.byte	0x9
	.byte	0x5d
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC168
	.byte	0x9
	.byte	0x66
	.4byte	0x44a
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC169
	.byte	0x9
	.byte	0x69
	.4byte	0x44a
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC170
	.byte	0x9
	.byte	0x6a
	.4byte	0x74e
	.byte	0x2
	.byte	0x10
	.uleb128 0xc
	.uleb128 0xb
	.4byte	$LC171
	.byte	0x9
	.byte	0x6b
	.4byte	0x713
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC172
	.byte	0x9
	.byte	0x6c
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC173
	.byte	0x9
	.byte	0x4a
	.4byte	0x812
	.uleb128 0xa
	.4byte	0x83b
	.4byte	$LC174
	.byte	0x8
	.byte	0x9
	.byte	0x3e
	.uleb128 0xb
	.4byte	$LC175
	.byte	0x9
	.byte	0x7c
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC176
	.byte	0x9
	.byte	0x7d
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC177
	.byte	0x9
	.byte	0x4b
	.4byte	0x846
	.uleb128 0xa
	.4byte	0x899
	.4byte	$LC178
	.byte	0x18
	.byte	0x9
	.byte	0x3f
	.uleb128 0xb
	.4byte	$LC179
	.byte	0x9
	.byte	0x85
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC180
	.byte	0x9
	.byte	0x88
	.4byte	0x44a
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC181
	.byte	0x9
	.byte	0x89
	.4byte	0x713
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC182
	.byte	0x9
	.byte	0x8b
	.4byte	0xaaa
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC183
	.byte	0x9
	.byte	0x8c
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC184
	.byte	0x9
	.byte	0x4c
	.4byte	0x8a4
	.uleb128 0xa
	.4byte	0x8cd
	.4byte	$LC185
	.byte	0x8
	.byte	0x9
	.byte	0x40
	.uleb128 0xb
	.4byte	$LC186
	.byte	0x9
	.byte	0x9a
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC187
	.byte	0x9
	.byte	0x9b
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC188
	.byte	0x9
	.byte	0x4d
	.4byte	0x8d8
	.uleb128 0xa
	.4byte	0x901
	.4byte	$LC189
	.byte	0x20
	.byte	0x9
	.byte	0x4d
	.uleb128 0xb
	.4byte	$LC190
	.byte	0x9
	.byte	0xa2
	.4byte	0x79b
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC191
	.byte	0x9
	.byte	0xa3
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC192
	.byte	0x9
	.byte	0x4e
	.4byte	0x90c
	.uleb128 0xa
	.4byte	0x943
	.4byte	$LC193
	.byte	0xc
	.byte	0x9
	.byte	0x4e
	.uleb128 0xb
	.4byte	$LC194
	.byte	0x9
	.byte	0xa9
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC195
	.byte	0x9
	.byte	0xaa
	.4byte	0x44a
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC196
	.byte	0x9
	.byte	0xab
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC197
	.byte	0x9
	.byte	0x4f
	.4byte	0x94e
	.uleb128 0xa
	.4byte	0x9bd
	.4byte	$LC198
	.byte	0x24
	.byte	0x9
	.byte	0x42
	.uleb128 0xb
	.4byte	$LC199
	.byte	0x9
	.byte	0xb9
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC200
	.byte	0x9
	.byte	0xbc
	.4byte	0x44a
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC201
	.byte	0x9
	.byte	0xbe
	.4byte	0x713
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC202
	.byte	0x9
	.byte	0xbf
	.4byte	0x713
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC203
	.byte	0x9
	.byte	0xc0
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.uleb128 0xb
	.4byte	$LC204
	.byte	0x9
	.byte	0xc1
	.4byte	0x74e
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	$LC205
	.byte	0x9
	.byte	0xc2
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC206
	.byte	0x9
	.byte	0x50
	.4byte	0x9c8
	.uleb128 0xa
	.4byte	0x9f1
	.4byte	$LC207
	.byte	0x8
	.byte	0x9
	.byte	0x43
	.uleb128 0xb
	.4byte	$LC208
	.byte	0x9
	.byte	0xd2
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC209
	.byte	0x9
	.byte	0xd3
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC210
	.byte	0x9
	.byte	0x51
	.4byte	0x9fc
	.uleb128 0xa
	.4byte	0xa6b
	.4byte	$LC211
	.byte	0x20
	.byte	0x9
	.byte	0x44
	.uleb128 0xb
	.4byte	$LC212
	.byte	0x9
	.byte	0xda
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC213
	.byte	0x9
	.byte	0xdd
	.4byte	0x44a
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC214
	.byte	0x9
	.byte	0xdf
	.4byte	0x713
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC215
	.byte	0x9
	.byte	0xe0
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC216
	.byte	0x9
	.byte	0xe1
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x14
	.uleb128 0xb
	.4byte	$LC217
	.byte	0x9
	.byte	0xe2
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.uleb128 0xb
	.4byte	$LC218
	.byte	0x9
	.byte	0xe4
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC219
	.byte	0x9
	.byte	0x52
	.4byte	0xa76
	.uleb128 0xa
	.4byte	0xa9f
	.4byte	$LC220
	.byte	0x8
	.byte	0x9
	.byte	0x45
	.uleb128 0xb
	.4byte	$LC221
	.byte	0x9
	.byte	0xeb
	.4byte	0x8a
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC222
	.byte	0x9
	.byte	0xec
	.4byte	0x31f
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC223
	.byte	0x9
	.byte	0x53
	.4byte	0x78
	.uleb128 0x5
	.byte	0x4
	.4byte	0x79b
	.uleb128 0x2
	.4byte	$LC224
	.byte	0xa
	.byte	0x34
	.4byte	0x78
	.uleb128 0x16
	.4byte	0xae0
	.byte	0x8
	.byte	0xa
	.byte	0x3b
	.uleb128 0xb
	.4byte	$LC225
	.byte	0xa
	.byte	0x39
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"rem\000"
	.byte	0xa
	.byte	0x3a
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC226
	.byte	0xa
	.byte	0x3b
	.4byte	0xabb
	.uleb128 0x16
	.4byte	0xb10
	.byte	0x8
	.byte	0xa
	.byte	0x40
	.uleb128 0xb
	.4byte	$LC225
	.byte	0xa
	.byte	0x3e
	.4byte	0x3e4
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"rem\000"
	.byte	0xa
	.byte	0x3f
	.4byte	0x3e4
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC227
	.byte	0xa
	.byte	0x40
	.4byte	0xaeb
	.uleb128 0x16
	.4byte	0xb40
	.byte	0x10
	.byte	0xa
	.byte	0x4a
	.uleb128 0xb
	.4byte	$LC225
	.byte	0xa
	.byte	0x47
	.4byte	0x9c
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"rem\000"
	.byte	0xa
	.byte	0x49
	.4byte	0x9c
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC228
	.byte	0xa
	.byte	0x4a
	.4byte	0xb1b
	.uleb128 0x16
	.4byte	0xb70
	.byte	0x10
	.byte	0xa
	.byte	0x51
	.uleb128 0xb
	.4byte	$LC225
	.byte	0xa
	.byte	0x4f
	.4byte	0x557
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xc
	.ascii	"rem\000"
	.byte	0xa
	.byte	0x50
	.4byte	0x557
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC229
	.byte	0xa
	.byte	0x51
	.4byte	0xb4b
	.uleb128 0x17
	.4byte	0xb9e
	.4byte	$LC233
	.byte	0x4
	.byte	0xb
	.byte	0x18
	.uleb128 0x7
	.4byte	$LC230
	.byte	0xb
	.byte	0x19
	.4byte	0xb9e
	.uleb128 0x7
	.4byte	$LC231
	.byte	0xb
	.byte	0x1a
	.4byte	0xbae
	.byte	0x0
	.uleb128 0x8
	.4byte	0xbae
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.4byte	$LC232
	.byte	0x4
	.byte	0x4
	.uleb128 0x17
	.4byte	0xbd8
	.4byte	$LC234
	.byte	0x8
	.byte	0xb
	.byte	0x1d
	.uleb128 0x7
	.4byte	$LC230
	.byte	0xb
	.byte	0x1e
	.4byte	0xbd8
	.uleb128 0x7
	.4byte	$LC231
	.byte	0xb
	.byte	0x1f
	.4byte	0xbe8
	.byte	0x0
	.uleb128 0x8
	.4byte	0xbe8
	.4byte	0x42
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x7
	.byte	0x0
	.uleb128 0x3
	.4byte	$LC235
	.byte	0x8
	.byte	0x4
	.uleb128 0x17
	.4byte	0xc12
	.4byte	$LC236
	.byte	0x8
	.byte	0xb
	.byte	0x22
	.uleb128 0x7
	.4byte	$LC230
	.byte	0xb
	.byte	0x23
	.4byte	0xbd8
	.uleb128 0x7
	.4byte	$LC231
	.byte	0xb
	.byte	0x24
	.4byte	0xc12
	.byte	0x0
	.uleb128 0x3
	.4byte	$LC237
	.byte	0x8
	.byte	0x4
	.uleb128 0x18
	.4byte	0xc3e
	.4byte	$LC288
	.byte	0x4
	.byte	0xb
	.byte	0x81
	.uleb128 0x19
	.4byte	$LC238
	.sleb128 -1
	.uleb128 0x1a
	.4byte	$LC239
	.byte	0x0
	.uleb128 0x1a
	.4byte	$LC240
	.byte	0x1
	.uleb128 0x1a
	.4byte	$LC241
	.byte	0x2
	.byte	0x0
	.uleb128 0xa
	.4byte	0xc91
	.4byte	$LC242
	.byte	0x20
	.byte	0xb
	.byte	0x95
	.uleb128 0xb
	.4byte	$LC243
	.byte	0xb
	.byte	0x96
	.4byte	0x78
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC244
	.byte	0xb
	.byte	0x97
	.4byte	0xd6
	.byte	0x2
	.byte	0x10
	.uleb128 0x4
	.uleb128 0xb
	.4byte	$LC245
	.byte	0xb
	.byte	0x98
	.4byte	0xbe8
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.uleb128 0xb
	.4byte	$LC246
	.byte	0xb
	.byte	0x99
	.4byte	0xbe8
	.byte	0x2
	.byte	0x10
	.uleb128 0x10
	.uleb128 0xb
	.4byte	$LC247
	.byte	0xb
	.byte	0x9a
	.4byte	0xbe8
	.byte	0x2
	.byte	0x10
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x16
	.4byte	0xcb6
	.byte	0x10
	.byte	0x1
	.byte	0xc
	.uleb128 0xb
	.4byte	$LC248
	.byte	0x1
	.byte	0xa
	.4byte	0xbe8
	.byte	0x2
	.byte	0x10
	.uleb128 0x0
	.uleb128 0xb
	.4byte	$LC249
	.byte	0x1
	.byte	0xb
	.4byte	0xbae
	.byte	0x2
	.byte	0x10
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	$LC250
	.byte	0x1
	.byte	0xc
	.4byte	0xc91
	.uleb128 0x1b
	.4byte	0xd34
	.byte	0x1
	.4byte	$LC257
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.4byte	$LFB29
	.4byte	$LFE29
	.4byte	$LSFDE0
	.byte	0x1
	.byte	0x6e
	.uleb128 0x1c
	.4byte	$LC251
	.byte	0x1
	.byte	0xe
	.4byte	0xd34
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x1c
	.4byte	$LC252
	.byte	0x1
	.byte	0xe
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 100
	.uleb128 0x1c
	.4byte	$LC253
	.byte	0x1
	.byte	0xe
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 104
	.uleb128 0x1d
	.4byte	$LC254
	.byte	0x1
	.byte	0x11
	.4byte	0xd3a
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1d
	.4byte	$LC255
	.byte	0x1
	.byte	0x12
	.4byte	0xd3a
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x1d
	.4byte	$LC256
	.byte	0x1
	.byte	0x13
	.4byte	0xd4a
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3c2
	.uleb128 0x8
	.4byte	0xd4a
	.4byte	0xdc
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x9
	.byte	0x0
	.uleb128 0x8
	.4byte	0xd5a
	.4byte	0xdc
	.uleb128 0x9
	.4byte	0x18b
	.byte	0x13
	.byte	0x0
	.uleb128 0x1b
	.4byte	0xddc
	.byte	0x1
	.4byte	$LC258
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	$LFB31
	.4byte	$LFE31
	.4byte	$LSFDE2
	.byte	0x1
	.byte	0x6e
	.uleb128 0x1c
	.4byte	$LC251
	.byte	0x1
	.byte	0x1d
	.4byte	0xd34
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x1c
	.4byte	$LC259
	.byte	0x1
	.byte	0x1d
	.4byte	0xddc
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x1c
	.4byte	$LC252
	.byte	0x1
	.byte	0x1d
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x1c
	.4byte	$LC253
	.byte	0x1
	.byte	0x1d
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x1e
	.4byte	$LBB4
	.4byte	$LBE4
	.uleb128 0x1f
	.ascii	"im\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1e
	.4byte	$LBB5
	.4byte	$LBE5
	.uleb128 0x1f
	.ascii	"re\000"
	.byte	0x1
	.byte	0x1f
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xde2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x78
	.uleb128 0x1b
	.4byte	0xe10
	.byte	0x1
	.4byte	$LC260
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.4byte	$LFB33
	.4byte	$LFE33
	.4byte	$LSFDE4
	.byte	0x1
	.byte	0x6e
	.uleb128 0x20
	.ascii	"c\000"
	.byte	0x1
	.byte	0x25
	.4byte	0xcb6
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.byte	0x0
	.uleb128 0x21
	.4byte	0xe3c
	.byte	0x1
	.4byte	$LC261
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.4byte	0xbe8
	.4byte	$LFB35
	.4byte	$LFE35
	.4byte	$LSFDE6
	.byte	0x1
	.byte	0x6e
	.uleb128 0x20
	.ascii	"a\000"
	.byte	0x1
	.byte	0x29
	.4byte	0xcb6
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.byte	0x0
	.uleb128 0x1b
	.4byte	0xe72
	.byte	0x1
	.4byte	$LC262
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.4byte	$LFB37
	.4byte	$LFE37
	.4byte	$LSFDE8
	.byte	0x1
	.byte	0x6e
	.uleb128 0x20
	.ascii	"a\000"
	.byte	0x1
	.byte	0x2d
	.4byte	0xe72
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x1f
	.ascii	"aux\000"
	.byte	0x1
	.byte	0x2e
	.4byte	0xbe8
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcb6
	.uleb128 0x1b
	.4byte	0xea2
	.byte	0x1
	.4byte	$LC263
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	$LFB39
	.4byte	$LFE39
	.4byte	$LSFDE10
	.byte	0x1
	.byte	0x6e
	.uleb128 0x1c
	.4byte	$LC264
	.byte	0x1
	.byte	0x33
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.byte	0x0
	.uleb128 0x21
	.4byte	0xf10
	.byte	0x1
	.4byte	$LC265
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0xddc
	.4byte	$LFB41
	.4byte	$LFE41
	.4byte	$LSFDE12
	.byte	0x1
	.byte	0x6e
	.uleb128 0x1c
	.4byte	$LC252
	.byte	0x1
	.byte	0x44
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x1c
	.4byte	$LC253
	.byte	0x1
	.byte	0x44
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x1c
	.4byte	$LC264
	.byte	0x1
	.byte	0x44
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x1d
	.4byte	$LC259
	.byte	0x1
	.byte	0x45
	.4byte	0xddc
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1e
	.4byte	$LBB8
	.4byte	$LBE8
	.uleb128 0x1f
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x104b
	.byte	0x1
	.4byte	$LC266
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.4byte	$LFB43
	.4byte	$LFE43
	.4byte	$LSFDE14
	.byte	0x1
	.byte	0x6e
	.uleb128 0x1c
	.4byte	$LC259
	.byte	0x1
	.byte	0x55
	.4byte	0xddc
	.byte	0x3
	.byte	0x91
	.sleb128 136
	.uleb128 0x1c
	.4byte	$LC253
	.byte	0x1
	.byte	0x55
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 140
	.uleb128 0x1c
	.4byte	$LC252
	.byte	0x1
	.byte	0x55
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 144
	.uleb128 0x20
	.ascii	"w\000"
	.byte	0x1
	.byte	0x55
	.4byte	0xbe8
	.byte	0x3
	.byte	0x91
	.sleb128 152
	.uleb128 0x20
	.ascii	"H\000"
	.byte	0x1
	.byte	0x55
	.4byte	0xbe8
	.byte	0x3
	.byte	0x91
	.sleb128 160
	.uleb128 0x1c
	.4byte	$LC267
	.byte	0x1
	.byte	0x55
	.4byte	0xcb6
	.byte	0x3
	.byte	0x91
	.sleb128 168
	.uleb128 0x1c
	.4byte	$LC268
	.byte	0x1
	.byte	0x55
	.4byte	0xcb6
	.byte	0x3
	.byte	0x91
	.sleb128 184
	.uleb128 0x1d
	.4byte	$LC269
	.byte	0x1
	.byte	0x56
	.4byte	0xbe8
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1f
	.ascii	"n\000"
	.byte	0x1
	.byte	0x57
	.4byte	0x78
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x1d
	.4byte	$LC270
	.byte	0x1
	.byte	0x58
	.4byte	0xbe8
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x1d
	.4byte	$LC271
	.byte	0x1
	.byte	0x59
	.4byte	0xbe8
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x1d
	.4byte	$LC272
	.byte	0x1
	.byte	0x5a
	.4byte	0xbe8
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x1d
	.4byte	$LC273
	.byte	0x1
	.byte	0x5b
	.4byte	0xbe8
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x1d
	.4byte	$LC274
	.byte	0x1
	.byte	0x5c
	.4byte	0xbe8
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x1d
	.4byte	$LC275
	.byte	0x1
	.byte	0x5c
	.4byte	0xbe8
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x1e
	.4byte	$LBB10
	.4byte	$LBE10
	.uleb128 0x1f
	.ascii	"im\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x1e
	.4byte	$LBB11
	.4byte	$LBE11
	.uleb128 0x1d
	.4byte	$LC276
	.byte	0x1
	.byte	0x6e
	.4byte	0xcb6
	.byte	0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x1e
	.4byte	$LBB12
	.4byte	$LBE12
	.uleb128 0x1f
	.ascii	"re\000"
	.byte	0x1
	.byte	0x6f
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 112
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.4byte	0x1142
	.byte	0x1
	.4byte	$LC277
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.4byte	0x78
	.4byte	$LFB45
	.4byte	$LFE45
	.4byte	$LSFDE16
	.byte	0x1
	.byte	0x6e
	.uleb128 0x1c
	.4byte	$LC278
	.byte	0x1
	.byte	0x80
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 176
	.uleb128 0x1c
	.4byte	$LC279
	.byte	0x1
	.byte	0x80
	.4byte	0x1142
	.byte	0x3
	.byte	0x91
	.sleb128 180
	.uleb128 0x1d
	.4byte	$LC264
	.byte	0x1
	.byte	0x82
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x1d
	.4byte	$LC252
	.byte	0x1
	.byte	0x83
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 76
	.uleb128 0x1d
	.4byte	$LC253
	.byte	0x1
	.byte	0x84
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x1d
	.4byte	$LC267
	.byte	0x1
	.byte	0x85
	.4byte	0xcb6
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x1d
	.4byte	$LC268
	.byte	0x1
	.byte	0x86
	.4byte	0xcb6
	.byte	0x3
	.byte	0x91
	.sleb128 104
	.uleb128 0x1d
	.4byte	$LC280
	.byte	0x1
	.byte	0x8b
	.4byte	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 120
	.uleb128 0x1d
	.4byte	$LC281
	.byte	0x1
	.byte	0x8c
	.4byte	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 124
	.uleb128 0x1f
	.ascii	"H\000"
	.byte	0x1
	.byte	0x8d
	.4byte	0xbe8
	.byte	0x3
	.byte	0x91
	.sleb128 128
	.uleb128 0x1f
	.ascii	"w\000"
	.byte	0x1
	.byte	0x8d
	.4byte	0xbe8
	.byte	0x3
	.byte	0x91
	.sleb128 136
	.uleb128 0x1d
	.4byte	$LC251
	.byte	0x1
	.byte	0x8e
	.4byte	0xd34
	.byte	0x3
	.byte	0x91
	.sleb128 144
	.uleb128 0x22
	.4byte	$LC259
	.byte	0x1
	.2byte	0x10c
	.4byte	0xddc
	.byte	0x3
	.byte	0x91
	.sleb128 148
	.uleb128 0x1e
	.4byte	$LBB14
	.4byte	$LBE14
	.uleb128 0x1f
	.ascii	"i\000"
	.byte	0x1
	.byte	0x91
	.4byte	0x78
	.byte	0x3
	.byte	0x91
	.sleb128 148
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x23
	.byte	0x1
	.4byte	0x3c2
	.uleb128 0x24
	.4byte	$LC282
	.byte	0x5
	.byte	0x8d
	.4byte	0x1148
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	$LC284
	.byte	0x1
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x2001
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x2001
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0xa7
	.2byte	0x2
	.4byte	$Ldebug_info0
	.4byte	0x1162
	.4byte	0xcc1
	.ascii	"armar_headerPGM\000"
	.4byte	0xd5a
	.ascii	"armar_imagenPGM\000"
	.4byte	0xde8
	.ascii	"imprimir_complejo\000"
	.4byte	0xe10
	.ascii	"abs_cplx\000"
	.4byte	0xe3c
	.ascii	"sqr_cplx\000"
	.4byte	0xe78
	.ascii	"imprimir_error\000"
	.4byte	0xea2
	.ascii	"create_matrix\000"
	.4byte	0xf10
	.ascii	"generate_julia\000"
	.4byte	0x104b
	.ascii	"main\000"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	$Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
$LC276:
	.ascii	"zeta\000"
$LC78:
	.ascii	"_ext\000"
$LC251:
	.ascii	"salida\000"
$LC68:
	.ascii	"_size\000"
$LC149:
	.ascii	"timer_t\000"
$LC165:
	.ascii	"pthread_mutex_t\000"
$LC207:
	.ascii	"__pthread_rwlockattr_st\000"
$LC161:
	.ascii	"__pthread_attr_st\000"
$LC101:
	.ascii	"uint32_t\000"
$LC169:
	.ascii	"ptm_interlock\000"
$LC248:
	.ascii	"real\000"
$LC168:
	.ascii	"ptm_lock\000"
$LC255:
	.ascii	"ancho_str\000"
$LC36:
	.ascii	"short unsigned int\000"
$LC232:
	.ascii	"float\000"
$LC72:
	.ascii	"_lbfsize\000"
$LC156:
	.ascii	"pthread_queue_t\000"
$LC32:
	.ascii	"unsigned char\000"
$LC262:
	.ascii	"sqr_cplx\000"
$LC189:
	.ascii	"__pthread_once_st\000"
$LC269:
	.ascii	"aux_im\000"
$LC136:
	.ascii	"mode_t\000"
$LC151:
	.ascii	"useconds_t\000"
$LC214:
	.ascii	"ptb_waiters\000"
$LC209:
	.ascii	"ptra_private\000"
$LC176:
	.ascii	"ptma_private\000"
$LC84:
	.ascii	"off_t\000"
$LC231:
	.ascii	"__val\000"
$LC203:
	.ascii	"ptr_nreaders\000"
$LC205:
	.ascii	"ptr_private\000"
$LC66:
	.ascii	"__sbuf\000"
$LC76:
	.ascii	"_seek\000"
$LC50:
	.ascii	"__in_port_t\000"
$LC62:
	.ascii	"size_t\000"
$LC122:
	.ascii	"longlong_t\000"
$LC267:
	.ascii	"constant\000"
$LC133:
	.ascii	"id_t\000"
$LC75:
	.ascii	"_read\000"
$LC123:
	.ascii	"u_longlong_t\000"
$LC52:
	.ascii	"__off_t\000"
$LC273:
	.ascii	"ymax\000"
$LC199:
	.ascii	"ptr_magic\000"
$LC208:
	.ascii	"ptra_magic\000"
$LC191:
	.ascii	"pto_done\000"
$LC89:
	.ascii	"mips_fpreg_t\000"
$LC58:
	.ascii	"__fsfilcnt_t\000"
$LC150:
	.ascii	"suseconds_t\000"
$LC127:
	.ascii	"fsfilcnt_t\000"
$LC118:
	.ascii	"cpuid_t\000"
$LC257:
	.ascii	"armar_headerPGM\000"
$LC69:
	.ascii	"__sFILE\000"
$LC59:
	.ascii	"__mbstate8\000"
$LC265:
	.ascii	"create_matrix\000"
$LC87:
	.ascii	"mips_ureg_t\000"
$LC157:
	.ascii	"ptqh_first\000"
$LC112:
	.ascii	"u_int\000"
$LC96:
	.ascii	"int8_t\000"
$LC152:
	.ascii	"__fd_mask\000"
$LC60:
	.ascii	"__mbstateL\000"
$LC195:
	.ascii	"pts_spin\000"
$LC256:
	.ascii	"concat\000"
$LC114:
	.ascii	"unchar\000"
$LC125:
	.ascii	"blksize_t\000"
$LC177:
	.ascii	"pthread_cond_t\000"
$LC172:
	.ascii	"ptm_private\000"
$LC245:
	.ascii	"arg1\000"
$LC246:
	.ascii	"arg2\000"
$LC175:
	.ascii	"ptma_magic\000"
$LC286:
	.ascii	"/root/tp\000"
$LC229:
	.ascii	"qdiv_t\000"
$LC91:
	.ascii	"psize_t\000"
$LC213:
	.ascii	"ptb_lock\000"
$LC74:
	.ascii	"_close\000"
$LC202:
	.ascii	"ptr_wblocked\000"
$LC134:
	.ascii	"ino_t\000"
$LC254:
	.ascii	"alto_str\000"
$LC64:
	.ascii	"fpos_t\000"
$LC42:
	.ascii	"__uint64_t\000"
$LC278:
	.ascii	"argc\000"
$LC138:
	.ascii	"pid_t\000"
$LC93:
	.ascii	"vsize_t\000"
$LC281:
	.ascii	"auxc2\000"
$LC103:
	.ascii	"uint64_t\000"
$LC153:
	.ascii	"fd_set\000"
$LC279:
	.ascii	"argv\000"
$LC73:
	.ascii	"_cookie\000"
$LC228:
	.ascii	"lldiv_t\000"
$LC88:
	.ascii	"long unsigned int\000"
$LC187:
	.ascii	"ptca_private\000"
$LC230:
	.ascii	"__dummy\000"
$LC282:
	.ascii	"__sF\000"
$LC65:
	.ascii	"__sfpos\000"
$LC53:
	.ascii	"__pid_t\000"
$LC81:
	.ascii	"_blksize\000"
$LC238:
	.ascii	"fdlibm_ieee\000"
$LC67:
	.ascii	"_base\000"
$LC234:
	.ascii	"__double_u\000"
$LC135:
	.ascii	"key_t\000"
$LC121:
	.ascii	"qaddr_t\000"
$LC38:
	.ascii	"__uint32_t\000"
$LC259:
	.ascii	"matrix_PGM\000"
$LC210:
	.ascii	"pthread_barrier_t\000"
$LC183:
	.ascii	"ptc_private\000"
$LC225:
	.ascii	"quot\000"
$LC130:
	.ascii	"dev_t\000"
$LC236:
	.ascii	"__long_double_u\000"
$LC145:
	.ascii	"clock_t\000"
$LC139:
	.ascii	"lwpid_t\000"
$LC274:
	.ascii	"deltaX\000"
$LC275:
	.ascii	"deltaY\000"
$LC271:
	.ascii	"xmax\000"
$LC242:
	.ascii	"exception\000"
$LC79:
	.ascii	"_ubuf\000"
$LC80:
	.ascii	"_nbuf\000"
$LC285:
	.ascii	"tp0.c\000"
$LC34:
	.ascii	"short int\000"
$LC104:
	.ascii	"u_int8_t\000"
$LC184:
	.ascii	"pthread_condattr_t\000"
$LC102:
	.ascii	"int64_t\000"
$LC143:
	.ascii	"uid_t\000"
$LC221:
	.ascii	"ptba_magic\000"
$LC250:
	.ascii	"numcomplex\000"
$LC233:
	.ascii	"__float_u\000"
$LC237:
	.ascii	"long double\000"
$LC241:
	.ascii	"fdlibm_posix\000"
$LC41:
	.ascii	"long long int\000"
$LC220:
	.ascii	"__pthread_barrierattr_st\000"
$LC206:
	.ascii	"pthread_rwlockattr_t\000"
$LC131:
	.ascii	"fixpt_t\000"
$LC258:
	.ascii	"armar_imagenPGM\000"
$LC129:
	.ascii	"daddr_t\000"
$LC277:
	.ascii	"main\000"
$LC43:
	.ascii	"long long unsigned int\000"
$LC287:
	.ascii	"GNU C 3.3.3 (NetBSD nb3 20040520) -g\000"
$LC56:
	.ascii	"__uid_t\000"
$LC83:
	.ascii	"FILE\000"
$LC35:
	.ascii	"__uint16_t\000"
$LC137:
	.ascii	"nlink_t\000"
$LC142:
	.ascii	"swblk_t\000"
$LC155:
	.ascii	"pthread_spin_t\000"
$LC141:
	.ascii	"segsz_t\000"
$LC219:
	.ascii	"pthread_barrierattr_t\000"
$LC144:
	.ascii	"dtime_t\000"
$LC47:
	.ascii	"char\000"
$LC227:
	.ascii	"ldiv_t\000"
$LC186:
	.ascii	"ptca_magic\000"
$LC90:
	.ascii	"paddr_t\000"
$LC212:
	.ascii	"ptb_magic\000"
$LC216:
	.ascii	"ptb_curcount\000"
$LC100:
	.ascii	"int32_t\000"
$LC188:
	.ascii	"pthread_once_t\000"
$LC92:
	.ascii	"vaddr_t\000"
$LC222:
	.ascii	"ptba_private\000"
$LC163:
	.ascii	"pta_flags\000"
$LC97:
	.ascii	"uint8_t\000"
$LC280:
	.ascii	"auxc\000"
$LC180:
	.ascii	"ptc_lock\000"
$LC85:
	.ascii	"mips_reg_t\000"
$LC243:
	.ascii	"type\000"
$LC201:
	.ascii	"ptr_rblocked\000"
$LC128:
	.ascii	"caddr_t\000"
$LC268:
	.ascii	"center\000"
$LC264:
	.ascii	"status\000"
$LC193:
	.ascii	"__pthread_spinlock_st\000"
$LC218:
	.ascii	"ptb_private\000"
$LC198:
	.ascii	"__pthread_rwlock_st\000"
$LC179:
	.ascii	"ptc_magic\000"
$LC116:
	.ascii	"uint\000"
$LC185:
	.ascii	"__pthread_condattr_st\000"
$LC247:
	.ascii	"retval\000"
$LC196:
	.ascii	"pts_flags\000"
$LC266:
	.ascii	"generate_julia\000"
$LC182:
	.ascii	"ptc_mutex\000"
$LC283:
	.ascii	"__pthread_st\000"
$LC70:
	.ascii	"_flags\000"
$LC197:
	.ascii	"pthread_rwlock_t\000"
$LC253:
	.ascii	"ancho\000"
$LC44:
	.ascii	"__intptr_t\000"
$LC63:
	.ascii	"_pos\000"
$LC98:
	.ascii	"int16_t\000"
$LC124:
	.ascii	"blkcnt_t\000"
$LC224:
	.ascii	"wchar_t\000"
$LC190:
	.ascii	"pto_mutex\000"
$LC240:
	.ascii	"fdlibm_xopen\000"
$LC192:
	.ascii	"pthread_spinlock_t\000"
$LC226:
	.ascii	"div_t\000"
$LC164:
	.ascii	"pta_private\000"
$LC31:
	.ascii	"signed char\000"
$LC244:
	.ascii	"name\000"
$LC166:
	.ascii	"__pthread_mutex_st\000"
$LC249:
	.ascii	"imag\000"
$LC51:
	.ascii	"__mode_t\000"
$LC94:
	.ascii	"register_t\000"
$LC171:
	.ascii	"ptm_blocked\000"
$LC288:
	.ascii	"fdversion\000"
$LC148:
	.ascii	"clockid_t\000"
$LC217:
	.ascii	"ptb_generation\000"
$LC39:
	.ascii	"unsigned int\000"
$LC120:
	.ascii	"quad_t\000"
$LC113:
	.ascii	"u_long\000"
$LC204:
	.ascii	"ptr_writer\000"
$LC263:
	.ascii	"imprimir_error\000"
$LC200:
	.ascii	"ptr_interlock\000"
$LC107:
	.ascii	"u_int64_t\000"
$LC261:
	.ascii	"abs_cplx\000"
$LC173:
	.ascii	"pthread_mutexattr_t\000"
$LC170:
	.ascii	"ptm_owner\000"
$LC223:
	.ascii	"pthread_key_t\000"
$LC260:
	.ascii	"imprimir_complejo\000"
$LC117:
	.ascii	"ulong\000"
$LC110:
	.ascii	"u_char\000"
$LC55:
	.ascii	"__socklen_t\000"
$LC146:
	.ascii	"ssize_t\000"
$LC178:
	.ascii	"__pthread_cond_st\000"
$LC40:
	.ascii	"__int64_t\000"
$LC159:
	.ascii	"pthread_t\000"
$LC71:
	.ascii	"_file\000"
$LC108:
	.ascii	"in_addr_t\000"
$LC29:
	.ascii	"__int8_t\000"
$LC57:
	.ascii	"__fsblkcnt_t\000"
$LC132:
	.ascii	"gid_t\000"
$LC126:
	.ascii	"fsblkcnt_t\000"
$LC95:
	.ascii	"__cpu_simple_lock_t\000"
$LC106:
	.ascii	"u_int32_t\000"
$LC82:
	.ascii	"_offset\000"
$LC252:
	.ascii	"alto\000"
$LC61:
	.ascii	"__mbstate_t\000"
$LC158:
	.ascii	"ptqh_last\000"
$LC115:
	.ascii	"ushort\000"
$LC45:
	.ascii	"__uintptr_t\000"
$LC48:
	.ascii	"__gid_t\000"
$LC239:
	.ascii	"fdlibm_svid\000"
$LC37:
	.ascii	"__int32_t\000"
$LC215:
	.ascii	"ptb_initcount\000"
$LC174:
	.ascii	"__pthread_mutexattr_st\000"
$LC77:
	.ascii	"_write\000"
$LC30:
	.ascii	"__uint8_t\000"
$LC154:
	.ascii	"fds_bits\000"
$LC162:
	.ascii	"pta_magic\000"
$LC284:
	.ascii	"__pthread_spin_st\000"
$LC99:
	.ascii	"uint16_t\000"
$LC270:
	.ascii	"xmin\000"
$LC86:
	.ascii	"long int\000"
$LC160:
	.ascii	"pthread_attr_t\000"
$LC46:
	.ascii	"__caddr_t\000"
$LC109:
	.ascii	"in_port_t\000"
$LC211:
	.ascii	"__pthread_barrier_st\000"
$LC105:
	.ascii	"u_int16_t\000"
$LC235:
	.ascii	"double\000"
$LC147:
	.ascii	"time_t\000"
$LC167:
	.ascii	"ptm_magic\000"
$LC119:
	.ascii	"u_quad_t\000"
$LC272:
	.ascii	"ymin\000"
$LC194:
	.ascii	"pts_magic\000"
$LC49:
	.ascii	"__in_addr_t\000"
$LC140:
	.ascii	"rlim_t\000"
$LC54:
	.ascii	"__sa_family_t\000"
$LC111:
	.ascii	"u_short\000"
$LC33:
	.ascii	"__int16_t\000"
$LC181:
	.ascii	"ptc_waiters\000"
	.ident	"GCC: (GNU) 3.3.3 (NetBSD nb3 20040520)"
