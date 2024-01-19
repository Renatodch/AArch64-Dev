TARGET = prog

build:$(TARGET)
	gdb -q ./$(TARGET)
$(TARGET):prog.s
	gcc -Wall -o $@ $< -no-pie -fno-PIE -g
