.section .rodata
label_C0:
	.string "%d\n"
	.text
	.globl unknown_func
unknown_func:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
	movl $0, -12(%ebp)
    addl $13, %edx
	jmp label_2
label_5:
	movl 8(%ebp), %eax
	movzbl (%eax), %eax
	cmpb $101, %al
	jne label_3
	jmp label_4
label_3:
	addl $1, -12(%ebp)
	addl $1, 8(%ebp)
label_2:
	movl 8(%ebp), %eax
	movzbl (%eax), %eax
	testb %al, %al
	jne label_5
label_4:
	movl -12(%ebp), %eax
	movl %eax, 4(%esp)
	movl $label_C0, (%esp)
	call printf
	leave
    ret
