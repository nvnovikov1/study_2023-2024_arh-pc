%include 'in_out.asm'
section .data
msg1 db 'Введите X:',0h
msg2 db 'Введите A:',0h
msg3 db 'Результат:',0h
section .bss
x resb 10
a resb 10
f resb 10
section .text
global _start
_start:
mov eax,msg1
call sprint
mov ecx,x
mov edx,10
call sread
mov eax,msg2
call sprint
mov ecx,a
mov edx,10
call sread
mov eax,x
call atoi
mov [x],eax
mov eax,a
call atoi
mov [a],eax
mov edi,[x]
mov ecx,edi
mov ecx,5
mov [f],ecx
cmp edi,[a]
jl fin
mov ebx,[x]
mov edi,[a]
sub ebx, edi
mov [f],eax
fin:
mov eax,msg3
call sprint
mov eax,[f]
call iprintLF
call quit
