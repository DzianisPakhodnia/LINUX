	.file	"writer.c"
	.text
	.section	.rodata
.LC0:
	.string	"w"
.LC1:
	.string	"output.txt"
	.align 8
.LC2:
	.string	"\320\236\321\210\320\270\320\261\320\272\320\260 \320\276\321\202\320\272\321\200\321\213\321\202\320\270\321\217 \321\204\320\260\320\271\320\273\320\260"
	.align 8
.LC3:
	.string	"\320\237\321\200\320\270\320\262\320\265\321\202 \320\270\320\267 \320\277\321\200\320\276\321\206\320\265\321\201\321\201\320\260 \320\267\320\260\320\277\320\270\321\201\320\270!\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	movl	$1, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4: