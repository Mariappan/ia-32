all: unknown.asm unknown.c unknown_call.c
		as --32 unknown.asm -o unknown_asm.o
		gcc -c -m32 -o unknown_c.o unknown.c
		gcc -m32 -o unknown_func_c unknown_call.c unknown_c.o
		gcc -m32 -o unknown_func_asm unknown_call.c unknown_asm.o

clean:
	rm -rf unknown_asm.o unknown_c.o unknown_func_c unknown_func_asm
