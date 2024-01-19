.data
.equ cte,2

scanMsg1: .asciz "Ingrese primer numero decimal: "
scanMsg2: .asciz "Ingrese segundo numero decimal: "
printMsg1: .asciz "la suma de los numeros es: %f \n"
printMsg2: .asciz "las variables son iguales? %d \n"
numero_1: .asciz "%f"
numero_2: .asciz "%f"
n1: .float 0
n2: .float 0

.text
.globl scanf
.globl printf
.global main

main:

stp x29,x30,[sp,#-16]!

sub sp,sp,#16
ldr x0,=scanMsg1
bl printf
mov x1,sp
ldr x0,=numero_1
bl scanf

sub sp,sp,#16
ldr x0,=scanMsg2
bl printf
mov x1,sp
ldr x0,=numero_2
bl scanf

ldr s0,[sp],#16
ldr x0,=n2
str s0,[x0]
ldr s1,[sp],#16
ldr x0,=n1
str s1,[x0]
fadd s0,s0,s1
fcvt d0,s0  //para printf %f
ldr x0,=printMsg1
bl printf

ldr x1,=n2
ldr s1,[x1]
ldr x0,=n1
ldr s0,[x0]
fcmp s1,s0
b.eq EQU
mov x1,#0
b END
EQU:
mov x1,#1
END:
ldr x0,=printMsg2
bl printf

ldp x29,x30,[sp],#16
mov x0,#0
ret
 



