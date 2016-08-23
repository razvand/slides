    extern printf

    section .rodata

format: db "%d", 10, 0
limit: dd 15

    section .text

    global main

main:
    ; function prologue
    push ebp
    mov ebp, esp

    mov eax, 1
    mov ebx, [limit]

print_num:
    mov ecx, eax
    add ecx, 10

    push eax
    push ecx
    push format
    call printf
    pop eax
    pop eax
    pop eax

    inc eax
    cmp eax, ebx
    jbe print_num

    ; function epilogue
    leave
    ret
