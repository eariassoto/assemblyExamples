	section .text

	global sumatoria
	global factorial

sumatoria:
	mov	edx,	[esp+4] ; guardo param
	
	cmp	edx,	1
	jg	recurSum	; si llegue a uno gg
	mov	eax,	1 
	ret

recurSum:
	mov	ecx,	edx	
	sub	ecx,	1	; n-1 para la recur

	push	edx	;guardo registros
	push	ecx
	call	sumatoria
	pop	ecx
	pop	edx

	add	edx,	eax
	mov	eax,	edx
	ret

factorial:
	mov	edx,	[esp+4]	; guardo param
	
	cmp	edx,	1 
	jle	salir	; caso 0 o 1

	mov	ecx,	edx	
	sub	ecx,	1	; n-1 para la recur

	push	edx	;guardo registros
	push	ecx
	call	factorial
	pop	ecx
	pop	edx

	imul	edx,	eax
	mov	eax,	edx
	ret

salir:
	mov	eax,	1 
	ret

	
