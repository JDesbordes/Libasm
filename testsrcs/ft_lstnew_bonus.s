	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.intel_syntax noprefix
	.globl	_ft_lstnew
	.p2align	4, 0x90
_ft_lstnew:                             ## @ft_lstnew
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi2:
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	eax, 16
	mov	ecx, eax
	mov	qword ptr [rbp - 16], rdi
	mov	rdi, rcx
	call	_malloc
	mov	qword ptr [rbp - 24], rax
	cmp	rax, 0
	jne	LBB0_2
## BB#1:
	mov	qword ptr [rbp - 8], 0
	jmp	LBB0_3
LBB0_2:
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 24]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 8], rax
LBB0_3:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc


.subsections_via_symbols
