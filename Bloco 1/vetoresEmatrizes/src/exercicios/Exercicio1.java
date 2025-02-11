package exercicios;

import java.util.Random;
import java.util.Scanner;

;

public class Exercicio1 {

	public static void main(String[] args) {
		
		/*dado um vetor contendo 10 números inteiros não ordenados e não repetidos, construa um algoritmo que consiga pesquisar dados no vetor,
		onde o usuário irá digitar um número e o programa deve exibir na tela a posição deste número no vetor. 
		Caso o número não seja encontrado, a mensagem: “Não foi encontrado!” deve ser exibida na tela.*/
		
		Scanner leia = new Scanner(System.in);
		
		int pesquisa;
		
		boolean achou = false;
		
		Random aleatorio = new Random();
		
		
		int vetor [] = new int [10];
		
		for(int i = 0 ; i < 10; i++) {
			vetor[i] = aleatorio.nextInt(30);
		}
		
		for(int i = 0 ; i < 10; i++) {
			System.out.println(vetor[i]);
		}
		
		System.out.println("Digite o numero que deseja encontrar: ");
		pesquisa = leia.nextInt();
		
		for(int i = 0 ; i < 10; i++) {
			if(vetor[i]==pesquisa) {
				System.out.println("O número "+ pesquisa + " está localizado na posição: " + i);
				achou = true;
				break;
			}
			
		}
		
		if (achou == false){
			System.out.println("O número " + pesquisa + " nao foi localizado!");
		}
		
		
		 
		 }
		 
		
	}

