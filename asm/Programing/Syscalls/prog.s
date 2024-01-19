.data

buf: .asciz ""
.balign 4
input:	.asciz "Ingresa un caracter: \n"
inputLen =.- input 

.text
.global main
main:

//read syscall
mov x8,#63
mov x2,4
ldr x1,=buf    
mov x0,#0
svc 0

//write syscall
mov x8,#64
ldr x2,=inputLen
ldr x1,=input    
mov x0,#0
svc 0

//exit syscall
mov x0,0
mov x8,93
svc 0

