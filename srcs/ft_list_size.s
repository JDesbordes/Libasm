section .text
    global _ft_list_size
_ft_list_size:
	xor		rax, rax
    cmp     rdi, 0
    je      .return

.loopsize:
	cmp 	rdi,	0
	je 		.return
	INC 	rax
	mov 	rdi,	qword [rdi + 8]
	jmp		.loopsize
.return:
    ret