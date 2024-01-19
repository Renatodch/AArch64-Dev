.text
.global _start
_start:

//0. Normal multiplication treats operands as unsigned
mov x0,-2
mov x1,3

mul x2,x1,x0
nop

//1. Long result multiplication: src:32 bit dest:64bit
smull x2,w1,w0 //treats opearnds as signed, sames as mul(?)
nop
umull x2,w1,w0 //treats operands as unsigned

//2. 128 bit multiplication
mov x0,0xffff
movk x0,0xffff, lsl 16
movk x0,0xffff, lsl 32
movk x0,0xffff, lsl 48
mov x1,-2
mul x2,x0,x1 
umulh x3,x0,x1 // x3-x2 : upper 64 bit
smulh x3,x0,x1

//3. Normal Division
mov x1,4
mov x0,-2
udiv x2,x1,x0 //x2 = x1/x0
sdiv x2,x1,x0


mov x0,0
mov x8,93
svc 0

