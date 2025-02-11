package exercicios;
import java.util.Scanner;

public class Exercicio1 {

	public static void main(String[] args) {
		
	double num = 0;
	double media = 0 , cont = 1;
	
	
	Scanner leia = new Scanner(System.in);
	do {
		
		
		System.out.println("Digite um número: ");
		num = leia.nextDouble();
		
		if(num % 3 == 0) {
			media+=num;
			cont++;
		}
		
	} while(num != 0);
	
	double multiplo = media/cont;
	
	System.out.println("A média de todos os números múltiplos de 3 é: " + multiplo);
		
	}

}
