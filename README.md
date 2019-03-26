# ia-32
Assembly code compilation and linking

## Make
Just run `make` to compile

## Commands to compile assembly language and linking

		as --32 unknown.asm -o unknown_asm.o
		gcc -m32 -o unknown_func_asm unknown_call.c unknown_asm.o
    
		gcc -c -m32 -o unknown_c.o unknown.c
		gcc -m32 -o unknown_func_c unknown_call.c unknown_c.o
