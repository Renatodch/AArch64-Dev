//Codigo de pruebas e4
.data
.equ cte,2

printMsg1: .asciz "la suma de los numeros es: %1.10f \n"
printMsg2: .asciz "las variables son iguales? %d \n"
n1: .float 2.6
n2: .float 2.6

.text
.globl scanf
.global printf
.global main

main:

//1.Guardamos return address de x30 en stack
stp x29,x30,[sp,#-16]!

//2.Sumamos los flotantes
ldr x0,=n1
ldr s0,[x0]
ldr x0,=n2
ldr s1,[x0]
fadd s0,s0,s1
fcvt d0,s0 
ldr x0,=printMsg1
bl printf

//3.Comparamos flotantes
ldr x0,=n2
ldr s1,[x0]
ldr x0,=n1
ldr s0,[x0]
fcmp s1,s0
b.eq EQU
mov x1,#0
b END
EQU:
mov x1,#1
END:
ldr x0,addr_printMsg2 // ldr x0,=printMsg2
bl printf

//4.Recuperamos return address en x30
ldp x29,x30,[sp],#16

//5.eterno syscall si no se salva return address
/*
ldr x1,addr_printMsg2 // ldr x0,=printMsg2
mov x2,5
mov x8,#64
mov x0,0
svc 0
*/
ret 

addr_printMsg2: .dword printMsg2



