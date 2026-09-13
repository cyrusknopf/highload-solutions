	.file	"solution.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"0x"
.LC1:
	.string	" <- "
#NO_APP
	.text
	.p2align 4
	.globl	_Z10print_m128Dv2_xPKc
	.type	_Z10print_m128Dv2_xPKc, @function
_Z10print_m128Dv2_xPKc:
.LFB11626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$2, %edx
	leaq	.LC0(%rip), %rsi
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	.cfi_offset 15, -24
	movq	%rdi, %r15
	pushq	%r14
	.cfi_offset 14, -32
	vpextrd	$3, %xmm0, %r14d
	pushq	%r13
	.cfi_offset 13, -40
	vpextrd	$2, %xmm0, %r13d
	pushq	%r12
	.cfi_offset 12, -48
	leaq	_ZSt4cout(%rip), %r12
	movq	%r12, %rdi
	pushq	%rbx
	.cfi_offset 3, -56
	vmovd	%xmm0, %ebx
	subq	$40, %rsp
	vpextrd	$1, %xmm0, -68(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	movl	%r14d, %esi
	movq	%r12, %rdi
	movq	-24(%rax), %rdx
	addq	%r12, %rdx
	movl	24(%rdx), %eax
	movq	$16, 16(%rdx)
	andl	$-75, %eax
	orl	$8, %eax
	movl	%eax, 24(%rdx)
	movl	$304, %eax
	movw	%ax, 224(%rdx)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movb	$32, -49(%rbp)
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%r14,%rax)
	je	.L2
	movq	%r14, %rdi
	leaq	-49(%rbp), %rsi
	movl	$1, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %r14
.L3:
	movq	(%r14), %rax
	movl	%r13d, %esi
	movq	%r14, %rdi
	movq	-24(%rax), %rax
	movq	$16, 16(%r14,%rax)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movb	$32, -49(%rbp)
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%r13,%rax)
	je	.L4
	movq	%r13, %rdi
	leaq	-49(%rbp), %rsi
	movl	$1, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %r13
.L5:
	movq	0(%r13), %rax
	movl	-68(%rbp), %esi
	movq	%r13, %rdi
	movq	-24(%rax), %rax
	movq	$16, 16(%r13,%rax)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movb	$32, -49(%rbp)
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%r13,%rax)
	je	.L6
	movq	%r13, %rdi
	leaq	-49(%rbp), %rsi
	movl	$1, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %r13
.L7:
	movq	0(%r13), %rax
	movl	%ebx, %esi
	movq	%r13, %rdi
	movq	-24(%rax), %rax
	movq	$16, 16(%r13,%rax)
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	(%rax), %rdx
	addq	-24(%rdx), %rax
	movl	24(%rax), %edx
	andl	$-75, %edx
	orl	$2, %edx
	movl	%edx, 24(%rax)
	testq	%r15, %r15
	je	.L8
	movl	$4, %edx
	leaq	.LC1(%rip), %rsi
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r15, %rdi
	call	strlen@PLT
	movq	%r15, %rsi
	movq	%r12, %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L8:
	movb	$10, -49(%rbp)
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%r12,%rax)
	je	.L9
	leaq	-49(%rbp), %rsi
	movq	%r12, %rdi
	movl	$1, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	.cfi_restore_state
	movl	$32, %esi
	movq	%r13, %rdi
	call	_ZNSo3putEc@PLT
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L9:
	movq	%r12, %rdi
	movl	$10, %esi
	call	_ZNSo3putEc@PLT
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
	movl	$32, %esi
	movq	%r13, %rdi
	call	_ZNSo3putEc@PLT
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L2:
	movl	$32, %esi
	movq	%r14, %rdi
	call	_ZNSo3putEc@PLT
	jmp	.L3
	.cfi_endproc
.LFE11626:
	.size	_Z10print_m128Dv2_xPKc, .-_Z10print_m128Dv2_xPKc
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB11627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$49154, %ecx
	movl	$1, %edx
	movl	$550000000, %esi
	xorl	%edi, %edi
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	mmap@PLT
	vmovdqu	(%rax), %xmm1
	vpcmpeqb	_ZL7NEWLINE(%rip), %xmm1, %xmm0
	vpmovmskb	%xmm0, %eax
	tzcntl	%eax, %eax
	vmovd	%eax, %xmm0
	movl	$-791621424, %eax
	vpbroadcastb	%xmm0, %xmm0
	vmovd	%eax, %xmm2
	xorl	%eax, %eax
	vpcmpgtb	_ZL4IDXS(%rip), %xmm0, %xmm0
	vpbroadcastd	%xmm2, %xmm2
	vpaddb	%xmm2, %xmm1, %xmm1
	vpxor	%xmm2, %xmm2, %xmm2
	vpand	%xmm1, %xmm0, %xmm0
	vpmovzxbw	%xmm0, %xmm1
	vpunpckhbw	%xmm2, %xmm0, %xmm0
	vpmaddwd	_ZL7FST_MUL(%rip), %xmm0, %xmm0
	vpmaddwd	_ZL7FST_MUL(%rip), %xmm1, %xmm1
	vphaddd	%xmm0, %xmm1, %xmm1
	vpmulld	_ZL7SND_MUL(%rip), %xmm1, %xmm1
	vmovdqa	%xmm1, -16(%rbp)
	vmovdqa	-16(%rbp), %xmm0
	vmovdqa	-16(%rbp), %xmm1
	vpshufd	$238, %xmm0, %xmm0
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, -16(%rbp)
	vmovdqa	-16(%rbp), %xmm0
	vmovdqa	-16(%rbp), %xmm1
	vpshufd	$85, %xmm0, %xmm0
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovdqa	%xmm0, -16(%rbp)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11627:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z10print_m128Dv2_xPKc, @function
_GLOBAL__sub_I__Z10print_m128Dv2_xPKc:
.LFB13741:
	.cfi_startproc
	movl	$168430090, %eax
	vmovd	%eax, %xmm0
	vpbroadcastd	%xmm0, %xmm0
	vmovdqa	%xmm0, _ZL7NEWLINE(%rip)
	vmovdqa	.LC5(%rip), %xmm0
	vmovdqa	%xmm0, _ZL4IDXS(%rip)
	vmovdqa	.LC6(%rip), %xmm0
	vmovdqa	%xmm0, _ZL7FST_MUL(%rip)
	vmovdqa	.LC7(%rip), %xmm0
	vmovdqa	%xmm0, _ZL7SND_MUL(%rip)
	ret
	.cfi_endproc
.LFE13741:
	.size	_GLOBAL__sub_I__Z10print_m128Dv2_xPKc, .-_GLOBAL__sub_I__Z10print_m128Dv2_xPKc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z10print_m128Dv2_xPKc
	.local	_ZL7SND_MUL
	.comm	_ZL7SND_MUL,16,16
	.local	_ZL7FST_MUL
	.comm	_ZL7FST_MUL,16,16
	.local	_ZL4IDXS
	.comm	_ZL4IDXS,16,16
	.local	_ZL7NEWLINE
	.comm	_ZL7NEWLINE,16,16
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC5:
	.quad	506097522914230528
	.quad	1084818905618843912
	.align 16
.LC6:
	.quad	281475406208040961
	.quad	281475406208040961
	.align 16
.LC7:
	.quad	42949672960001
	.quad	100000000
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
