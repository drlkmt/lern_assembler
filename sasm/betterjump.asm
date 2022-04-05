;betterloop.asm
extern printf
section .data
    fmstr db "Summ from 0 to %ld is %ld", 10, 0
    number dq 5
section .bss
section .text
    global main
main:
    mov rbp, rsp; for correct debugging
push rbp
mov rbp, rsp

    mov rcx, [number]
    xor rax, rax

bloop:
    add rax, rcx
    loop bloop
    
    mov rdi, fmstr
    mov rsi, [number]
    mov rdx, rax
    xor rax, rax
    call printf



mov rsp, rbp
pop rbp
ret