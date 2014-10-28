	section .text

	global _start

_start:
	mov	eax, 4
	mov	ebx, 1
	mov	ecx, message
	mov	edx, 22
	int	80h

	mov	eax, 1
	mov	ebx, 0
	int	80h

message:
	db	 "Torvalds is not dead!", 10
