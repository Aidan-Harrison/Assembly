global _start
section .data
    msg db 'Test, Message!', 0x80
    len equ $ - msg

section .text
_start:         ; Entry point
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80
    mov eax, 1  ; sys_exit
    mov ebx, 0  ; Exit status
    int 0x80