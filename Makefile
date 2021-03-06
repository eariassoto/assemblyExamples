torvalds:
	nasm -felf godIsNotDead.asm
	ld godIsNotDead.o -o god.out
	./god.out

mainTest:
	nasm -felf mainInAsm.asm
	gcc mainInAsm.o -o mainInAsm
	./mainInAsm

numeros:
	nasm -felf numeros.asm
	gcc -c numerosMain.c
	gcc numeros.o numerosMain.o -o numeros
	./numeros

r:
	nasm -felf robotasm.asm
	gcc -c robotarm.c -lGL -lGLU -lglut
	gcc robotarm.o robotasm.o -lGL -lGLU -lglut -o robotarm
	./robotarm
