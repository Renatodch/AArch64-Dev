
.section .init,"ax",%progbits
.globl _start
b _start

str: .ascii "String\0"
str0: .asciz "CadenaConNull"
.balign 32

eoa: .byte 1,2,3,4,5,6,7,8

.balign 8 //in this, 8: just continue 16: align to 0x30   32:align to 0x40;
       	  //align: align to nearest addr multiple of arg 

_start:
nop
nop

end:
mov w8,#93
mov w0,#0
svc #0



