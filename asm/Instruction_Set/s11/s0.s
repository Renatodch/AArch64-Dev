.equ bLen,8 // => literal
.equ bLen2,9
.data

inputLenVar: .byte 8
.balign 8
input:	.asciz "String \n"

inputLen =.- input  //takes len = (inputLen - input + 1) => literal

.text
b main

inputLenVar2: .byte 9
input2: .asciz "String 2\n"
inputLen2 =.- input2
.balign 4

.global main
main:

mov x8,#64
ldr x2,inputLenVar  //x2 = *(&inputLenVar)
//ldr x2,inputLen //x2 = *(inputLen)

//ldr x2,=inputLen2 //x2 = &inputLenVar
//ldrb w2,[x2]	    //w2 = *(x2)

ldr x1,addr_input    
mov x0,#0
svc 0

mov x8,#64
ldr x2,=inputLenVar2
ldrb w2,[x2]
ldr x1,=input2
mov x0,#0
svc 0

mov x8,93
svc 0

//addr_inputLen: .dword inputLen2
addr_input: .dword input
