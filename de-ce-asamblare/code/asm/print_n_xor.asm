    extern printf

%define LIMIT   15
%define OPERAND 0xAA

    section .rodata

format: db "%d", 10, 0

    section .text

    global main

main:
    ; function prologue
    push ebp
    mov ebp, esp

    mov eax, 1

print_num:
    mov ecx, eax
    xor ecx, OPERAND

    push eax
    push ecx
    push format
    call printf
    pop eax
    pop eax
    pop eax

    inc eax
    cmp eax, LIMIT
    jbe print_num

    ; function epilogue
    leave
    ret
