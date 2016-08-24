LDFLAGS = -m32

.PHONY: all clean

all: hello print_n print_n_xor

hello: hello.o

hello.o: hello.asm
	nasm -f elf32 -o $@ $<

print_n: print_n.o

print_n.o: print_n.asm
	nasm -f elf32 -o $@ $<

print_n_xor: print_n_xor.o

print_n_xor.o: print_n_xor.asm
	nasm -f elf32 -o $@ $<

clean:
	-rm -f *.o *~
	-rm -f hello print_n print_n_xor
