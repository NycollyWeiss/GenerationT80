package filasEPilhas;

import java.util.Scanner;
import java.util.Stack;

public class Pilha {
	public static void main(String[] args) {
	      Scanner leia = new Scanner(System.in);
	        Stack<String> pilha = new Stack<>();
	        boolean menu = true;

	        while (menu) {
	            System.out.println("***************************************");
	            System.out.println("1: Adicionar um novo livro na pilha.");
	            System.out.println("2: Listar todos os livros da Pilha");
	            System.out.println("3: Retirar um livro da pilha");
	            System.out.println("0: Sair");
	            System.out.println("***************************************");

	            int opcao = leia.nextInt();
	            leia.nextLine(); 

	            switch (opcao) {
	                case 0:
	                    menu = false;
	                    System.out.println("Programa finalizado.");
	                    break;

	                case 1:
	                    System.out.println("Digite o título do livro:");
	                    String livro = leia.nextLine();
	                    pilha.push(livro);
	                    System.out.println("Livro adicionado à pilha!");
	                    break;

	                case 2:
	                    if (pilha.isEmpty()) {
	                        System.out.println("A pilha está vazia.");
	                    } else {
	                        System.out.println("Livros na pilha:");
	                        for (String l : pilha) {
	                            System.out.println(l);
	                        }
	                    }
	                    break;

	                case 3:
	                    if (pilha.isEmpty()) {
	                        System.out.println("A pilha está vazia, não tem o que tirar!");
	                    } else {
	                        String livroRemovido = pilha.pop();
	                        System.out.println("Livro removido: " + livroRemovido);
	                    }
	                    break;

	                default:
	                    System.out.println("Opção inválida! Tente novamente.");
	                    break;
	            }
	        }
	
	
	
	}
}
	

