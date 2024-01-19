	.arch armv8-a
	.file	"e3.c"
	.text
	.global	i
	.bss
	.align	2
	.type	i, %object
	.size	i, 4
i:
	.zero	4
	.global	j
	.data
	.align	2
	.type	j, %object
	.size	j, 4
j:
	.word	1
	.comm	k,4,4
	.section	.rodata
	.align	3
.LC0:
	.string	"cntfrq_el0: %li \n"
	.align	3
.LC1:
	.string	"cntpct_el0: %li \n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
#APP
// 10 "e3.c" 1
	mrs x0,cntfrq_el0
// 0 "" 2
#NO_APP
	str	x0, [sp, 24]
#APP
// 11 "e3.c" 1
	mrs x0,cntpct_el0
// 0 "" 2
#NO_APP
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	x0, [sp, 16]
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 9.2.1-19) 9.2.1 20191109"
	.section	.note.GNU-stack,"",@progbits
