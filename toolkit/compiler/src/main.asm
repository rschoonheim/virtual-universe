section .data

section .bss

section .text
    global _start

_start:

    jmp _stop

_stop:
    mov rax, 60
    xor rdi, rdi
    syscall