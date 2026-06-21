	.file	"4_prime.c"
	.text
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Enter a number to see if it's prime or not? \0"
.LC1:
	.ascii " %d\0"
.LC2:
	.ascii "%d is not a prime number\0"
.LC3:
	.ascii "%d is a prime number\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movb	$0, -1(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-12(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rax, %rdx
	call	scanf
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L2
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	jne	.L3
.L2:
	movl	-12(%rbp), %eax
	leaq	.LC2(%rip), %rcx
	movl	%eax, %edx
	call	printf
	jmp	.L4
.L3:
	movl	$2, -8(%rbp)
	jmp	.L5
.L8:
	movl	-12(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L6
	movb	$1, -1(%rbp)
	jmp	.L7
.L6:
	addl	$1, -8(%rbp)
.L5:
	movl	-12(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L8
.L7:
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L9
	movl	-12(%rbp), %eax
	leaq	.LC3(%rip), %rcx
	movl	%eax, %edx
	call	printf
	jmp	.L4
.L9:
	movl	-12(%rbp), %eax
	leaq	.LC2(%rip), %rcx
	movl	%eax, %edx
	call	printf
.L4:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
