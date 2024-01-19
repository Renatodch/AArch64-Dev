.text

str: .asciz "Esto es un string\n"
.balign 4
.global main

main:

ldr x0,=n1 //x0 = &n1
b 1f
.ltorg // address of address of n1 is placed here
1:

ret

.data
n1: .word 3

