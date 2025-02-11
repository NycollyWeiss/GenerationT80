package exercicios;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class Exercicio1 {

	public static void main(String[] args) {
		
		ArrayList<String> cores = new ArrayList<String>();
		
		Scanner leia = new Scanner(System.in);
		
	
		for(int i = 0; i < 5; i ++) {
			System.out.println("Digite a " + (i+1) +  " cor ");
			cores.add(leia.nextLine());
		}
		
		
		System.out.print("Listar todas as cores:\n" );
		
		for(String corees : cores) {
			System.out.print(cores);
		}
		
		cores.sort(null);
		
		System.out.println("Ordenar as cores:\n");
		
		Iterator <String> icores = cores.iterator();
		while(icores.hasNext()) {
			System.out.println(icores.next());
		}
		
		
	}

}
