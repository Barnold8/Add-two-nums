section .data

	num1 db 1
	num2 db 6


section .bss


	data resb 1

section .text


	global _start


_start:


	mov rcx, 0
	add rcx, num1
	add rcx, num2

	mov [data], rcx
	mov rcx, 48

	add [data], rcx

	mov rax, 1
	mov rdi, 1
	mov rsi, data
	mov rdx, 1
	syscall

	mov rax, 60
	mov rdi, 0

	syscall

	


