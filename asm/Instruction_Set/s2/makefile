all:s0
	gdb -q ./s0

s0:s0.o
	ld -o s0 s0.o
s0.o:s0.s
	as -o s0.o s0.s -g


