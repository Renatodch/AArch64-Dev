.text

.globl _start
_start:

mov w0,0xFFFF		//w0=0xFFFF
mov w1,0x1FF		//w1=0x1FF
sub x0,x0,w1,sxtb	//x0=x0 - (-1) (Extends Signed 8 to 64)	

mov w0,wzr		//w1=0
movz w1,0x1234		//w1=0x1234
movk w1,0x5,lsl 0x10	//w1=0x51234
add x2,x0,x1,sxth 1	//x2=x0 + 0x1234<<1 (Extends Signed 16 to 64)

mov w2,0x1234		//w2=0x1234
mov x1,xzr		//x1=0
orr w0,w1,w2,ror 28	//w0=0 | 0x000012340 [lsl (32-28)]

mov w1,4		//w1=4
mov w2,0x445		//w2=4
add w0,w1,w2,sxtb	//x0=x1+69 (Extends Signed 8 to 32)



end:
mov x8,93
svc 0

