	.file	"1_calculator.c"
	.text
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "This is a calculator. Please enter one of the  operations (+, -, *, /): \0"
.LC1:
	.ascii " %c\0"
.LC2:
	.ascii "Enter number 1: \0"
.LC3:
	.ascii "%d\0"
.LC4:
	.ascii "Enter number 2: \0"
.LC5:
	.ascii "%d + %d: %d\0"
	.align 8
.LC6:
	.ascii "Incorrect operator. Ending program.\0"
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
	movl	$1, -4(%rbp)
	jmp	.L2
.L7:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-5(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rax, %rdx
	call	scanf
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-12(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rax, %rdx
	call	scanf
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rax, %rdx
	call	scanf
	movzbl	-5(%rbp), %eax
	movsbl	%al, %eax
	cmpl	$47, %eax
	je	.L3
	cmpl	$47, %eax
	jg	.L4
	cmpl	$45, %eax
	je	.L5
	cmpl	$45, %eax
	jg	.L4
	cmpl	$42, %eax
	je	.L6
	cmpl	$43, %eax
	jne	.L4
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	leal	(%rdx,%rax), %r8d
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	leaq	.LC5(%rip), %rcx
	movl	%r8d, %r9d
	movl	%edx, %r8d
	movl	%eax, %edx
	call	printf
	jmp	.L2
.L5:
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	leaq	.LC5(%rip), %rcx
	movl	%r8d, %r9d
	movl	%edx, %r8d
	movl	%eax, %edx
	call	printf
	jmp	.L2
.L6:
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	imull	%eax, %edx
	movl	%edx, %r8d
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	leaq	.LC5(%rip), %rcx
	movl	%r8d, %r9d
	movl	%edx, %r8d
	movl	%eax, %edx
	call	printf
	jmp	.L2
.L3:
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, %r8d
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	leaq	.LC5(%rip), %rcx
	movl	%r8d, %r9d
	movl	%edx, %r8d
	movl	%eax, %edx
	call	printf
	jmp	.L2
.L4:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, -4(%rbp)
	nop
.L2:
	cmpl	$0, -4(%rbp)
	jne	.L7
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
