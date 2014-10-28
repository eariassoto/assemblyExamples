#include <stdio.h>

extern int sumatoria(int);
extern int factorial(int);

int main(){
	int n;
	printf("Ingresa un numero entero positivo: ");
	scanf("%d", &n);
	if(n >= 0){
		printf("La sumatoria de 1 a %d es %d\n", n, sumatoria(n));
		printf("El factorial de %d es %d\n", n, factorial(n));
	}
	return 0;
}
