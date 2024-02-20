%include 'in_out.asm'
section .data
msg2 db "Наименьшее число:  ",0h
    a: dd 95
    b: dd 2
    c: dd 61
section .bss
min resb 10
section .text
global _start
_start:
    global main
main:
    mov eax, [a]
    mov ebx, [b]
    cmp eax, ebx
    jl min1
min2:
    mov eax, [c]
    cmp eax, ebx
    jl min3
    jmp end
min3:
    mov ebx, eax
min1:
    mov eax, [c]
    cmp eax, ebx
    jl min4
    jmp end
min4:
    mov ebx, eax
end:
    mov [min], ebx
    mov eax, msg2
    call sprint
    mov eax,[min]
    call iprintLF
    call quit
    
 
