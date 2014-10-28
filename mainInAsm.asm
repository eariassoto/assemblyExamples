	extern printf
	global main

	section .data

format:	db	"%s", 10, 0
message:	db	"Hello World!"

	section .text
main:
	push	message
	push	format
	call	printf
	add	esp,	8

	mov	eax,	0 ; return 0
	ret

