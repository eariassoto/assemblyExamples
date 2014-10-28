	section .text
	
	extern	shoulderAngle
	extern	elbowAngle
	extern	glutPostRedisplay

	global	specialKey

specialKey:
	mov	edx,	[esp+4] ; guardo param
	
	cmp	edx,	64h
	jne	case2
	
	;caso left
	mov	ecx,	[elbowAngle]
	add	ecx,	5

	cmp	ecx,	360
	jl	mover1
	sub	ecx,	360
mover1:
	mov	[elbowAngle],	ecx
	jmp	sal
case2:
	cmp	edx,	66h
	jne	case3
	
	; caso right
	mov	ecx,	[elbowAngle]
	sub	ecx,	5
	mov	[elbowAngle],	ecx

	jmp	sal
case3:
	cmp	edx,	65h
	jne	case4
	
	;caso up
	mov	ecx,	[shoulderAngle]
	add	ecx,	5
	mov	[shoulderAngle],	ecx

	jmp	sal
case4:
	cmp	edx,	67h
	jne	def
	
;case down
	mov	ecx,	[shoulderAngle]
	sub	ecx,	5
	mov	[shoulderAngle],	ecx

	jmp	sal
def:
	mov	eax,	0
	ret
sal:
	call	glutPostRedisplay
	mov	eax,	0
	ret
