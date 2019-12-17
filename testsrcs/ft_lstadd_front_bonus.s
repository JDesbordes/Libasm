	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.intel_syntax noprefix
	.globl	_ft_lstadd_front
	.p2align	4, 0x90
_ft_lstadd_front:                       ## @ft_lstadd_front
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], rsi
	pop	rbp
	ret
	.cfi_endproc


.subsections_via_symbols
