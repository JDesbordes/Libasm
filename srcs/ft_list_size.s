section .text
    global _ft_list_size
_ft_list_size:
    cmp     rdi, 0
    je      .return
    push    rdi
    push    rsi
    sub     rsp, 8
    mov     rdi, rsi
    call    _ft_create_elem
    add     rsp, 8
    pop     rsi
    pop     rdi
    cmp     rax, 0
    je      .return
    mov     rdx, qword [rdi]
    cmp     rdx, 0
    je      .empty_list
    mov     qword [rax + 8], rdx
.empty_list:
    mov     qword [rdi], rax
.return:
    ret