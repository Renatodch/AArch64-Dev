
.data
buf: .asciz "%d"
message:	.asciz "var1[0]= %d\n"
var1:	.word	1,2,3,4
addrMain:	.word 0

.text
b main

endStr: .asciz "Finaliza\n"
endStrLen=.- endStr
.balign 4
.global printf
.global main
.global scanf
main:

stp x19,x30,[sp,#-16]!
sub sp,sp,#16

mov x1,sp
ldr x0,=buf
bl scanf

ldr x1,=var1
ldr x1,[x1]
ldr x0,=message
bl printf

mov x8,#64
ldr x2,=endStrLen
ldr x1,=endStr
mov x0,0
svc 0

//add sp,sp,#16
//ldp x19,x30,[sp],#16
mov w0,#0
ret

