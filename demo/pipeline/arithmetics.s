	.file	"arithmetics.c"
	.text
	.p2align 4
	.globl	init_int
	.type	init_int, @function
init_int:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	rand@PLT
	testl	%ebx, %ebx
	jle	.L1
	leal	-1(%rbx), %edx
	cmpl	$2, %edx
	jbe	.L6
	movl	%ebx, %esi
	movd	%eax, %xmm7
	pxor	%xmm4, %xmm4
	movq	%rbp, %rcx
	shrl	$2, %esi
	movdqa	.LC0(%rip), %xmm1
	pshufd	$0, %xmm7, %xmm6
	movdqa	.LC1(%rip), %xmm5
	salq	$5, %rsi
	addq	%rbp, %rsi
	.p2align 4,,10
	.p2align 3
.L4:
	movdqa	%xmm1, %xmm0
	movdqa	%xmm4, %xmm2
	paddd	%xmm5, %xmm1
	addq	$32, %rcx
	paddd	%xmm6, %xmm0
	pcmpgtd	%xmm0, %xmm2
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm2, %xmm3
	punpckhdq	%xmm2, %xmm0
	movups	%xmm3, -32(%rcx)
	movups	%xmm0, -16(%rcx)
	cmpq	%rsi, %rcx
	jne	.L4
	movl	%ebx, %edx
	andl	$-4, %edx
	testb	$3, %bl
	je	.L1
.L3:
	leal	(%rax,%rdx), %ecx
	movslq	%edx, %rsi
	movslq	%ecx, %rcx
	movq	%rcx, 0(%rbp,%rsi,8)
	leal	1(%rdx), %ecx
	cmpl	%ecx, %ebx
	jle	.L1
	movslq	%ecx, %rsi
	addl	%eax, %ecx
	addl	$2, %edx
	movslq	%ecx, %rcx
	movq	%rcx, 0(%rbp,%rsi,8)
	cmpl	%edx, %ebx
	jle	.L1
	movslq	%edx, %rcx
	addl	%eax, %edx
	movslq	%edx, %rdx
	movq	%rdx, 0(%rbp,%rcx,8)
.L1:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	xorl	%edx, %edx
	jmp	.L3
	.cfi_endproc
.LFE39:
	.size	init_int, .-init_int
	.p2align 4
	.globl	init_int_mul
	.type	init_int_mul, @function
init_int_mul:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	rand@PLT
	testl	%ebx, %ebx
	jle	.L10
	leal	-1(%rbx), %edx
	cmpl	$3, %edx
	jbe	.L15
	movd	%eax, %xmm5
	movl	%ebx, %esi
	movq	%rbp, %rcx
	movdqa	.LC0(%rip), %xmm2
	pshufd	$0, %xmm5, %xmm4
	shrl	$2, %esi
	pxor	%xmm5, %xmm5
	movdqa	.LC1(%rip), %xmm7
	salq	$5, %rsi
	movdqa	%xmm4, %xmm6
	addq	%rbp, %rsi
	psrlq	$32, %xmm6
	.p2align 4,,10
	.p2align 3
.L13:
	movdqa	%xmm2, %xmm1
	addq	$32, %rcx
	paddd	%xmm7, %xmm2
	movdqa	%xmm1, %xmm0
	psrlq	$32, %xmm1
	pmuludq	%xmm4, %xmm0
	pmuludq	%xmm6, %xmm1
	pshufd	$8, %xmm0, %xmm0
	pshufd	$8, %xmm1, %xmm1
	punpckldq	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm1, %xmm3
	punpckhdq	%xmm1, %xmm0
	movups	%xmm3, -32(%rcx)
	movups	%xmm0, -16(%rcx)
	cmpq	%rsi, %rcx
	jne	.L13
	movl	%ebx, %edx
	andl	$-4, %edx
	testb	$3, %bl
	je	.L10
.L12:
	movl	%eax, %ecx
	movslq	%edx, %rsi
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	movq	%rdi, 0(%rbp,%rsi,8)
	leal	1(%rdx), %esi
	cmpl	%esi, %ebx
	jle	.L10
	addl	%eax, %ecx
	movslq	%esi, %rsi
	movslq	%ecx, %rdi
	movq	%rdi, 0(%rbp,%rsi,8)
	leal	2(%rdx), %esi
	cmpl	%esi, %ebx
	jle	.L10
	addl	%eax, %ecx
	movslq	%esi, %rsi
	addl	$3, %edx
	movslq	%ecx, %rdi
	movq	%rdi, 0(%rbp,%rsi,8)
	cmpl	%edx, %ebx
	jle	.L10
	addl	%ecx, %eax
	movslq	%edx, %rdx
	cltq
	movq	%rax, 0(%rbp,%rdx,8)
.L10:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L15:
	.cfi_restore_state
	xorl	%edx, %edx
	jmp	.L12
	.cfi_endproc
.LFE40:
	.size	init_int_mul, .-init_int_mul
	.p2align 4
	.globl	init_int_memory
	.type	init_int_memory, @function
init_int_memory:
.LFB41:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	call	rand@PLT
	testl	%ebp, %ebp
	jle	.L18
	leaq	15(%rbx), %rcx
	movslq	%eax, %rdx
	leal	-1(%rbp), %eax
	subq	%r12, %rcx
	cmpq	$30, %rcx
	jbe	.L20
	cmpl	$3, %eax
	jbe	.L20
	movl	%ebp, %ecx
	movq	%rdx, %xmm1
	xorl	%eax, %eax
	shrl	%ecx
	punpcklqdq	%xmm1, %xmm1
	salq	$4, %rcx
	.p2align 4,,10
	.p2align 3
.L21:
	movdqu	(%r12,%rax), %xmm0
	paddq	%xmm1, %xmm0
	movups	%xmm0, (%rbx,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rax
	jne	.L21
	movl	%ebp, %eax
	andl	$-2, %eax
	andl	$1, %ebp
	je	.L18
	addq	(%r12,%rax,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
.L18:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	.cfi_restore_state
	movl	%eax, %ecx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L25:
	movq	(%r12,%rax,8), %rsi
	addq	%rdx, %rsi
	movq	%rsi, (%rbx,%rax,8)
	movq	%rax, %rsi
	addq	$1, %rax
	cmpq	%rsi, %rcx
	jne	.L25
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	init_int_memory, .-init_int_memory
	.p2align 4
	.globl	init_double
	.type	init_double, @function
init_double:
.LFB42:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	rand@PLT
	movl	%eax, %edx
	cltq
	imulq	$1374389535, %rax, %rax
	sarl	$31, %edx
	sarq	$37, %rax
	subl	%edx, %eax
	testl	%ebx, %ebx
	jle	.L36
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
	leal	-1(%rbx), %eax
	cmpl	$2, %eax
	jbe	.L41
	movl	%ebx, %ecx
	movapd	%xmm3, %xmm4
	movq	%rbp, %rax
	movdqa	.LC0(%rip), %xmm2
	shrl	$2, %ecx
	movdqa	.LC1(%rip), %xmm5
	unpcklpd	%xmm4, %xmm4
	salq	$5, %rcx
	addq	%rbp, %rcx
	.p2align 4,,10
	.p2align 3
.L39:
	movdqa	%xmm2, %xmm0
	addq	$32, %rax
	paddd	%xmm5, %xmm2
	cvtdq2pd	%xmm0, %xmm1
	mulpd	%xmm4, %xmm1
	pshufd	$238, %xmm0, %xmm0
	cvtdq2pd	%xmm0, %xmm0
	mulpd	%xmm4, %xmm0
	movups	%xmm1, -32(%rax)
	movups	%xmm0, -16(%rax)
	cmpq	%rcx, %rax
	jne	.L39
	movl	%ebx, %eax
	andl	$-4, %eax
	testb	$3, %bl
	je	.L36
.L38:
	pxor	%xmm0, %xmm0
	movslq	%eax, %rdx
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, 0(%rbp,%rdx,8)
	leal	1(%rax), %edx
	cmpl	%edx, %ebx
	jle	.L36
	pxor	%xmm0, %xmm0
	movslq	%edx, %rcx
	addl	$2, %eax
	cvtsi2sdl	%edx, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, 0(%rbp,%rcx,8)
	cmpl	%eax, %ebx
	jle	.L36
	pxor	%xmm0, %xmm0
	movslq	%eax, %rdx
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, 0(%rbp,%rdx,8)
.L36:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L41:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L38
	.cfi_endproc
.LFE42:
	.size	init_double, .-init_double
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"data[rand()] = %d\n"
.LC4:
	.string	"Initialization %lf seconds\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB43:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jg	.L63
	movl	$1048576, %edi
	movl	$131072, %ebp
	call	malloc@PLT
	movl	$1048576, %edi
	movq	%rax, %r13
	call	malloc@PLT
	movq	%rax, %r12
	leaq	init_double(%rip), %rax
	movq	%rax, arithmetrics(%rip)
.L48:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L51:
	call	rand@PLT
	cltq
	movq	%rax, (%r12,%rbx,8)
	addq	$1, %rbx
	cmpl	%ebx, %ebp
	ja	.L51
.L49:
	xorl	%esi, %esi
	movq	%rsp, %rdi
	call	gettimeofday@PLT
	leal	-1(%rbp), %edx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	*arithmetrics(%rip)
	xorl	%esi, %esi
	leaq	16(%rsp), %rdi
	call	gettimeofday@PLT
	call	rand@PLT
	xorl	%edx, %edx
	movl	$1, %esi
	movq	stderr(%rip), %rdi
	divl	%ebp
	xorl	%eax, %eax
	movq	0(%r13,%rdx,8), %rcx
	leaq	.LC2(%rip), %rdx
	call	__fprintf_chk@PLT
	movq	stderr(%rip), %rdi
	pxor	%xmm0, %xmm0
	imulq	$1000000, 16(%rsp), %rax
	imulq	$1000000, (%rsp), %rdx
	addq	24(%rsp), %rax
	movl	$1, %esi
	addq	8(%rsp), %rdx
	subq	%rdx, %rax
	leaq	.LC4(%rip), %rdx
	cvtsi2sdq	%rax, %xmm0
	movl	$1, %eax
	divsd	.LC3(%rip), %xmm0
	call	__fprintf_chk@PLT
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L64
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L63:
	.cfi_restore_state
	movl	%edi, %ebx
	movq	8(%rsi), %rdi
	movl	$10, %edx
	movq	%rsi, %r14
	xorl	%esi, %esi
	call	strtol@PLT
	movl	%eax, %r12d
	movq	%rax, %r15
	movl	%eax, %ebp
	salq	$3, %r12
	movq	%r12, %rdi
	call	malloc@PLT
	movq	%r12, %rdi
	movq	%rax, %r13
	call	malloc@PLT
	movq	%rax, %r12
	cmpl	$2, %ebx
	je	.L46
	movq	16(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	call	strtol@PLT
	subl	$1, %eax
	je	.L65
	movq	16(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	call	strtol@PLT
	cmpl	$2, %eax
	je	.L66
	movq	16(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	call	strtol@PLT
	cmpl	$3, %eax
	je	.L67
.L46:
	leaq	init_double(%rip), %rax
	movq	%rax, arithmetrics(%rip)
.L50:
	testl	%r15d, %r15d
	jne	.L48
	jmp	.L49
.L66:
	leaq	init_int_mul(%rip), %rax
	movq	%rax, arithmetrics(%rip)
	jmp	.L50
.L67:
	leaq	init_int_memory(%rip), %rax
	movq	%rax, arithmetrics(%rip)
	jmp	.L50
.L65:
	leaq	init_int(%rip), %rax
	movq	%rax, arithmetrics(%rip)
	jmp	.L50
.L64:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE43:
	.size	main, .-main
	.comm	arithmetrics,8,8
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC1:
	.long	4
	.long	4
	.long	4
	.long	4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
