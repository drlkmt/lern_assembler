; hello3.asm
section .data
	msg db "hello, durka", 0xA, 0
section .bss
section .text
	global main
main:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 13
	syscall
	mov rax, 60
	mov rdi, 0
	syscall
