; jumploop.asm
extern printf
 
section .data
	counter dq 5
    mstr db "The sum form 0 to %ld is %ld", 10, 0
    
section .bss
section .text
	global main
main:
    mov rbp, rsp; for correct debugging
push rbp
mov rbp, rsp

    mov rbx, 0      ; counter
    mov rax, 0      ; summ

jloop:
    add rax, rbx
    inc rbx
    cmp rbx, [counter]
    jle jloop
    mov rdi, mstr
    mov rsi, [counter]
    mov rdx, rax
    xor rax, rax
    call printf
    

mov rsp, rbp
pop rbp
ret