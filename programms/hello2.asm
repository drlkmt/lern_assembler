; hello2.asm
section .data
	msg db "hello, durka", 0
	n db 0xa
section .bss
section .text
	global main
main:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 12
	syscall
	mov rax, 1
	mov rdi, 1
	mov rsi, n
	mov rdx, 1
	syscall
	mov rax, 60
	mov rdi, 0
	syscall
