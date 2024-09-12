	.file	"test.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
	.section	.text.unlikely,"x"
LCOLDB1:
	.section	.text.startup,"x"
LHOTB1:
	.p2align 4,,15
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	movl	$9, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	xorl	%eax, %eax
	leave
	ret
	.section	.text.unlikely,"x"
LCOLDE1:
	.section	.text.startup,"x"
LHOTE1:
	.ident	"GCC: (i686-posix-sjlj, built by strawberryperl.com project) 4.9.2"
	.def	_printf;	.scl	2;	.type	32;	.endef
