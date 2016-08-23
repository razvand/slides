LDFLAGS = -m32

.PHONY: all clean

all: hello print_n print_n_square

hello: hello.o

hello.o: hello.asm
	nasm -f elf32 -o $@ $<

print_n: print_n.o

print_n.o: print_n.asm
	nasm -f elf32 -o $@ $<

print_n_square: print_n_square.o

print_n_square.o: print_n_square.asm
	nasm -f elf32 -o $@ $<

clean:
	-rm -f *.o *~
	-rm -f hello
