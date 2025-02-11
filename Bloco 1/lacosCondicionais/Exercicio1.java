package exercicios;

import java.util.Scanner;

public class Exercicio1 {

	public static void main(String[] args) {
		
    /* 1) Faça um algoritmo em Java que leia 3 valores inteiros A, B e C 
	   e imprima na tela se a soma de A + B é maior, menor ou igual a C.*/
		
		
		int a, b , c;
		
		Scanner leia = new Scanner(System.in);
		
		do {
		System.out.println("Digite tres valores inteiros: ");
		
		System.out.println("Digite o valor de A: ");
		
		a = leia.nextInt();
		
		System.out.println("Digite o valor de B: ");
		
		b = leia.nextInt();
		
		System.out.println("Digite o valor de C: ");
		
		c = leia.nextInt();
		
		
		if(a+b > c) {
			System.out.println("A soma de A + B é maior");
		}
		
		else if(a+b < c) {
			System.out.println("A soma de A + B é menor");
		}
		
		else {
			
			System.out.println("A soma de A + B é igual! ");
		}
		} while(a+b !=c);
	}
	
	/*OBS: Utilizei do while para poder validar as 3 condicoes*/

}
