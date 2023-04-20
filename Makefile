all: program

program: main.o fib.o
	gcc -m64 -masm=intel -Wl,-z,noexecstack fib.o main.o -o program

main.o: main.c
	gcc -m64 -masm=intel -Wno-unused-result -c main.c -o main.o

fib.o: fib.s
	nasm -f elf64 fib.s -o fib.o

clean:
	rm -f *.o program
