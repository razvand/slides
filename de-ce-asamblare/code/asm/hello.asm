    extern puts

    section .rodata

msg: db "Hello, World!", 0

    section .text

    global main

main:
    ; function prologue
    push ebp
    mov ebp, esp

    push msg
    call puts
    pop eax

    ; function epilogue
    leave
    ret
