package exercicios;

import java.util.Random;

public class Exercicio3 {
	/*Elabore um algoritmo que leia uma Matriz 3x3 de números inteiros e em seguida, mostre na tela:
		Todos os elementos da Diagonal Principal
		Todos os elementos da Diagonal Secundária
		A Soma de todos os elementos da Diagonal Principal
		A Soma de todos os elementos da Diagonal Secundária*/
	
	public static void main(String[] args) {
	
	byte matriz [][] = new byte [3][3];
	byte somaPri = 0;
    byte somaSec = 0;
	
	matriz[0][0]= 1;
	matriz[0][1]= 2;
	matriz[0][2]= 3;
	matriz[1][0]= 4;
	matriz[1][1]= 5;
	matriz[1][2]= 6;
	matriz[2][0]= 7;
	matriz[2][1]= 8;
	matriz[2][2]= 9;
 
	
	System.out.println("Elementos da Diagonal Principal:");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            if (i == j) {
                System.out.print(matriz[i][j] + " ");
                somaPri += matriz[i][j];  
            }
        }
    }

    
    System.out.println("\nElementos da Diagonal Secundária:");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            if ((i == 0 && j == 2) || (i == 2 && j == 0)) {
                System.out.print(matriz[i][j] + " ");
                somaSec += matriz[i][j];  
            }
        }
    }


    System.out.println("\nSoma dos Elementos da Diagonal Principal: " + somaPri);
    System.out.println("Soma dos Elementos da Diagonal Secundária: " + somaSec);
}
}

