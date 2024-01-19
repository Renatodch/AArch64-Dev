TARGET?=s0

debug:$(TARGET)
	gdb -q ./$(TARGET)

build:$(TARGET)

$(TARGET):s0.o
	ld -o $@ $^
s0.o:s0.s
	as -o $@ $^ -g
