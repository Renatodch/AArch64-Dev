.section .text.load,"ax",%progbits
.balign 4
.global load
.type load,%function
load:
 mov x0,123
ret
.balign 4
.size load,.-load

