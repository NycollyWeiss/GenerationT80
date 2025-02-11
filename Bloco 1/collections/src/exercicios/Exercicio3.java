package exercicios;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Scanner;
import java.util.Set;

public class Exercicio3 {

	public static void main(String[] args) {
		
	Set <Integer> numeros = new HashSet<Integer>();
	
	Scanner leia = new Scanner(System.in);
	
	System.out.println("Digtte 10 valores inteiros não repetidos");
	for(int i = 0; i < 10 ; i ++) {
		numeros.add(leia.nextInt());
	}
	
	    System.out.println("Listar dados do Set:\n");
	    
	Iterator <Integer> inumeros = numeros.iterator();
		while(inumeros.hasNext()){
			System.out.println(inumeros.next());
		}
		
		System.out.println("Listar dados do Set:\n");
		for(Integer nums: numeros) {
			if(nums>= 2 && nums <= 5 || nums == 10) {
				System.out.println(nums);
			}
		
		}

	}
}
