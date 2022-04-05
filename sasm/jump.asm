; jump.asm
extern printf
 
section .data
	fmstr1 db "Num1 >= Num2", 10, 0
	fmstr2 db "Num1 < Num2", 10, 0
	Num1   dq -1488
	Num2   dq -1337	
section .bss
section .text
	global main
main:
    mov rbp, rsp; for correct debugging
push rbp
mov rbp, rsp
	mov rax, [Num1]
	mov rbx, [Num2]
	cmp rax, rbx
	jl lower
	mov rdi, fmstr1
	xor rax, rax
	call printf
	jmp exit
lower:
	mov rdi, fmstr2
	xor rax, rax
	call printf
	
exit:
	mov rsp, rbp
	pop rbp
	ret
