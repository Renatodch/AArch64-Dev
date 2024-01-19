#
TARGET?= prog

build:$(TARGET)
$(TARGET): prog1.o prog2.o
		ld -o prog prog1.o prog2.o
prog1.o prog2.o: prog1.s prog2.s
		as -Wall -o prog1.o prog1.s -g
		as -Wall -o prog2.o prog2.s -g
clean:
	rm *.o prog
