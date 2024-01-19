/*
NZCV[31:28] = N Z C V
*/

.text
.global _start

_start:

msr NZCV,xzr

//0.
mov w1,2
mov w0,1
subs w2,w1,w0
mrs x3,NZCV // C => 0010 
subs w2,w0,w1
mrs x3,NZCV // N => 1000

//1. 
mov w1,-1
mov w0,-1
adds w2,w0,w1
mrs x3,NZCV // N & C => 1010 (adding negatives)

//2.
mov w1,0xFFFF
movk w1,0x7FFF, lsl 16
sxtw x1,w1
mov w0,1
adds w2,w1,w0
sxtw x2,w2
mrs x3,NZCV // N & V => 1001 (32 bit overflow)

//3.
mov w1,0
movk w1,0x8000, lsl 16
sxtw x1,w1
mov w0,-1
sxtw x0,w0
adds w2,w1,w0
sxtw x2,w2
mrs x3,NZCV // C & V => 0011 (32 bit overflow)

adds x2,x1,x0
mrs x3,NZCV //N & C => 1010 (adding negatives)

//4.
mov x1,0
movk x1,0x8000, lsl 48
mov w0,-1
sxtw x0,w0
adds x2,x1,x0
mrs x3,NZCV // C & V => 0011 (64 bit overflow)

//5.
mov x1,0x100
mov x0,0xff
subs x2,x0,w1,uxtb
mrs x3,NZCV //C => 0010

//6. 
mov w1,0xFFFF
movk w1,0xFFFF, lsl 16
mov x0,1
adds w2,w0,w1
mrs x3,NZCV  //Z & C => 0110

adds x2,x0,x1
mrs x3,NZCV // => 0000



mov x8,93
svc 0

