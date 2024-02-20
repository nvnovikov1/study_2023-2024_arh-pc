%include 'in_out.asm'
SECTION .data
msg: DB 'Введите х:  ',0
rem: DB 'Ответ:  ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x ;
call atoi ;
mov ebx, eax
mul ebx
mov eax, ebx
mul eax
mov ebx, eax
mov eax, 3
div eax
mov eax, ebx
add eax, 21
mov edi, eax
mov eax, rem
call sprint
mov eax,edi
call iprintLF
call quit
