package exercicios;

import java.util.Scanner;

public class Exercicio2 {

	public static void main(String[] args) {
		
		
   /* 2) Escreva um algoritmo em Java, que leia um número inteiro via teclado e mostre na tela uma mensagem indicando se 
    este número é par ou ímpar e se o número é positivo ou negativo. */
		
		Scanner leia = new Scanner(System.in);
		
		int numero;

	
		System.out.println("Digite um número: ");
		
		numero = leia.nextInt();
		
		
		if(numero > 0 && numero % 2 == 0) {
			System.out.println("O numero é positivo e é par ");
		} 
		
		else if (numero > 0 && numero % 2 == 0){ 
			System.out.println("O numero é positivo e é impar");

		}
		
		else if(numero < 0 && numero % 2 != 0) {
			System.out.println("O numero é negativo e é impar ");
		} 
		
		else if (numero < 0 && numero % 2 == 0) {
            System.out.println("O numero é negativo e é par");
	
	}
	
	}
}
