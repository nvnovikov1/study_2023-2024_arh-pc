%include 'in_out.asm'
SECTION .data
msg db "Результат: ",0
SECTION .text
global _start
_start:
pop ecx
pop edx
sub ecx,1
mov esi,0
mov edi,3
next1:
cmp ecx,0h
jz _end
pop eax
call atoi
call _f
add esi, eax
loop next1
push edx
_end:
mov eax, msg
call sprint
mov eax, esi
call iprintLF
call quit
_f:
add eax,10
mul edi
ret
