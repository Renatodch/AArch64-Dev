
#define cte 3
.globl _start
_start:


movz x1,0xCCDD
movk x1,0xAABB,lsl 16
movk x1,0x5566,lsl 32
movk x1,0x7788,lsl 48

mov x0,444
mov x0,#444
mov x0,0x444

lsl x0,x0,1
lsr x0,x0,2
ror x0,x0,0x20
asr x0,x0,2

movk x0,0xf000,lsl 48
asr x0,x0,2

mov x0,0
mov x8,93
svc 0

