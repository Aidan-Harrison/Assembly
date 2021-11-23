section .text
global_start

section .data
msg db 'Displaying 9 stars', 0xa
len equ $ - msg
s2 times 9 db '*'

_start:
mov edx, len
mov ecx, msg
mov ebx, 1
mov eax, 1
int 0x80

mov edx, 9
moc ecx, s2
mov ebx, 1
mov eax, 4
int 0x80

mov eax, 1
int 0x80