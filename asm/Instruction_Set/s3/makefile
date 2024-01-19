TARGET?=s0

build:$(TARGET)
	gdb -q ./$(TARGET)
$(TARGET):s0.o
	ld -o $(TARGET) s0.o 
s0.o:s0.s
	as -o s0.o s0.s	-g




