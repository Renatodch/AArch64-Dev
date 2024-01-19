
.equ  bLen,2
.data
inputLen2: .byte 23
.balign 4
input:	.asciz "Ingresa un caracter: \n"
.balign 4
inputLenn: .byte 25
.balign 4
inputLen =.- input  //takes len = (inputLen - input + 1)
.balign 4
buf:	.asciz ""
.balign 4
bufLen: .word 4
.balign 4

.text
.global main
main:
//write syscall
mov x8,#64
ldr x2,=inputLen2
ldr x1,addr_input    
mov x0,#0
svc 0

//read syscall
mov x8,#63
ldr x2,=inputLen2
/*
Con la instr de arriba cuando se compila con PIE por defecto
no se obtiene la direccion de buf len
*/
ldr x1,addr_buf
mov x0,#0
svc 0

//operation
ldr x2,addr_buf
ldr x0,[x2]
bic x1,x0,#32 //x1=x0 & ~0x20
str x1,[x2]
//mov x1,0x10
//str x1,[x2,4]

//write capital
mov x2,#2
mov x0,#0
ldr x1,addr_buf
mov x8,#64
svc 0

mov x0,0
mov x8,93
svc 0

addr_inputLen: .dword inputLen2
addr_input: .dword input
addr_buf: .dword buf
