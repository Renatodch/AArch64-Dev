TARGET?=s0

all:$(TARGET)
	gdb -q ./$(TARGET)

$(TARGET):s0.o
	ld -o s0 s0.o
s0.o:s0.s
	as -o s0.o s0.s -g


