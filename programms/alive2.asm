; main.asm
extern printf
section .data
	msg1 	db "Mamaebka", 0 
	msg2 	db "Alive and kickin", 0
	fmtstr  db "%s", 10, 0
	fmtflt  db "%lf", 10, 0
	fmtint  db "%d", 10, 0
	radius  dd 1488
	pi 	dq 3.14
	
section .bss
section .text
	global main
main:
	push rbp
	mov rbp, rsi
;msg1
	mov rax, 0
	mov rdi, fmtstr
	mov rsi, msg1
	call printf
;msg2
	mov rax, 0
	mov rdi, fmtstr
	mov rsi, msg2
	call printf
;radius
	mov rax, 0
	mov rdi, fmtint
	mov rsi, [radius]
	call printf
;pi
	mov rax, 1
	movq xmm0, [pi]
	mov rdi, fmtflt
	call printf
	
	mov rsi, rbp
	pop rbp
	
	ret
