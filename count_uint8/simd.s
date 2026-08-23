	.file	"simd.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.zero	32,127
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_1:
	.zero	4,127
	.text
	.globl	main
	.p2align	4
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$250000000, %esi                # imm = 0xEE6B280
	xorl	%edi, %edi
	movl	$1, %edx
	movl	$49154, %ecx                    # imm = 0xC002
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	mmap@PLT
	cmpq	$-1, %rax
	je	.LBB0_10
# %bb.1:
	testq	%rax, %rax
	je	.LBB0_11
# %bb.2:
	movq	%rax, %rcx
	subq	$-128, %rcx
	vpxor	%xmm2, %xmm2, %xmm2
	xorl	%edx, %edx
	vpbroadcastd	.LCPI0_1(%rip), %ymm1   # ymm1 = [127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127]
	vpxor	%xmm0, %xmm0, %xmm0
	.p2align	4
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	xorl	%esi, %esi
	vpxor	%xmm3, %xmm3, %xmm3
	.p2align	4
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpcmpeqb	-128(%rcx,%rsi), %ymm1, %ymm4
	vpsubb	%ymm4, %ymm3, %ymm3
	vpcmpeqb	-96(%rcx,%rsi), %ymm1, %ymm4
	vpsubb	%ymm4, %ymm3, %ymm3
	vpcmpeqb	-64(%rcx,%rsi), %ymm1, %ymm4
	vpsubb	%ymm4, %ymm3, %ymm3
	vpcmpeqb	-32(%rcx,%rsi), %ymm1, %ymm4
	vpsubb	%ymm4, %ymm3, %ymm3
	vpcmpeqb	(%rcx,%rsi), %ymm1, %ymm4
	vpsubb	%ymm4, %ymm3, %ymm3
	addq	$160, %rsi
	cmpq	$8160, %rsi                     # imm = 0x1FE0
	jne	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	vpsadbw	%ymm2, %ymm3, %ymm3
	vpaddq	%ymm0, %ymm3, %ymm0
	addq	$8160, %rcx                     # imm = 0x1FE0
	cmpq	$249983680, %rdx                # imm = 0xEE672C0
	leaq	8160(%rdx), %rdx
	jb	.LBB0_3
# %bb.6:
	vpxor	%xmm2, %xmm2, %xmm2
	movl	$249997760, %ecx                # imm = 0xEE6A9C0
	.p2align	4
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	vpcmpeqb	160(%rax,%rcx), %ymm1, %ymm3
	vpsubb	%ymm3, %ymm2, %ymm2
	vpcmpeqb	192(%rax,%rcx), %ymm1, %ymm3
	vpsubb	%ymm3, %ymm2, %ymm2
	vpcmpeqb	224(%rax,%rcx), %ymm1, %ymm3
	vpsubb	%ymm3, %ymm2, %ymm2
	vpcmpeqb	256(%rax,%rcx), %ymm1, %ymm3
	vpsubb	%ymm3, %ymm2, %ymm2
	vpcmpeqb	288(%rax,%rcx), %ymm1, %ymm3
	vpsubb	%ymm3, %ymm2, %ymm2
	addq	$160, %rcx
	cmpq	$249999840, %rcx                # imm = 0xEE6B1E0
	jb	.LBB0_7
# %bb.8:
	vpxor	%xmm1, %xmm1, %xmm1
	vpsadbw	%ymm1, %ymm2, %ymm1
	vpaddq	%ymm0, %ymm1, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rsi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	vzeroupper
	callq	_ZNSo9_M_insertImEERSoT_@PLT
	movb	$10, -1(%rbp)
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	cmpq	$0, 16(%rax,%rcx)
	je	.LBB0_12
# %bb.9:
	leaq	-1(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_12:
	.cfi_def_cfa %rbp, 16
	movq	%rax, %rdi
	movl	$10, %esi
	callq	_ZNSo3putEc@PLT
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_10:
	.cfi_def_cfa %rbp, 16
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__.main(%rip), %rcx
	movl	$32, %edx
	callq	__assert_fail@PLT
.LBB0_11:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__.main(%rip), %rcx
	movl	$33, %edx
	callq	__assert_fail@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in != MAP_FAILED"
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"simd.cpp"
	.size	.L.str.1, 9

	.type	.L__PRETTY_FUNCTION__.main,@object # @__PRETTY_FUNCTION__.main
.L__PRETTY_FUNCTION__.main:
	.asciz	"int main()"
	.size	.L__PRETTY_FUNCTION__.main, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"in"
	.size	.L.str.2, 3

	.ident	"clang version 21.1.8"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZSt4cout
