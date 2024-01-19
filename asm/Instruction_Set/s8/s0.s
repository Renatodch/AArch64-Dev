.text
.global _start
_start:
mov w0,0xffff
movk w0,0x7fff,lsl 16
mov w1,-1
cmp w0,w1
b.vs 4f
mov x0,1

b end
4:

mov x0,#0
cbz x0,0f

mov x0,#1

b end
0:
cbnz x0,1f
mov x0,#2
 
1:
mov x0,0xFE
tbz x0,3,2f
mov x0,#0xaa

2:
tbnz x0,1,3f
mov x0,#0xFFFF

3:

end:
mov x8,93
svc 0

