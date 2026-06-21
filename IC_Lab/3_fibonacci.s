	.file	"3_fibonacci.c"
	.text
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "How many numbers of fibonacci series need to be printed? \0"
.LC1:
	.ascii " %d\0"
.LC2:
	.ascii "Fibonacci Series: \0"
.LC3:
	.ascii "%d\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	movl	$1, -4(%rbp)
	movl	$1, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-20(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rax, %rdx
	call	scanf
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, -12(%rbp)
	jmp	.L2
.L6:
	cmpl	$0, -12(%rbp)
	jne	.L3
	movl	-4(%rbp), %eax
	leaq	.LC3(%rip), %rcx
	movl	%eax, %edx
	call	printf
	jmp	.L4
.L3:
	cmpl	$1, -12(%rbp)
	jne	.L5
	movl	-8(%rbp), %eax
	leaq	.LC1(%rip), %rcx
	movl	%eax, %edx
	call	printf
	jmp	.L4
.L5:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leaq	.LC1(%rip), %rcx
	movl	%eax, %edx
	call	printf
.L4:
	addl	$1, -12(%rbp)
.L2:
	movl	-20(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L6
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
