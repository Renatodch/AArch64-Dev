.data
message1: .asciz "Ingrese un numero:\n"
message2:.asciz "Esto es un mensaje con formato, el numero es: %d\n"

var1:	.4byte	1,2,3,4
buf: .asciz "%d"
aM:.dword 0

.text
.global printf
.global scanf
.global main

main:
ldr x0,addr_aM
str x30,[x0]

sub sp,sp,16

ldr x0,=message1
bl printf

mov x1,sp
ldr x0,=buf
bl scanf 

ldr x1,[sp],16
//ldr x1,[x1]
ldr x0,=message2
bl printf


ldr x0,addr_aM
ldr x30,[x0]

mov x0,#0
ret

addr_aM: .dword aM




