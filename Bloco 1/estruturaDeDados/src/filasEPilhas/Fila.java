package filasEPilhas;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class Fila {
	
	    public static void main(String[] args) {
	        Queue<String> fila = new LinkedList<>();
	        Scanner leia = new Scanner(System.in);
	        boolean menu = true;

	        while (menu) {
	            System.out.println("****************************************************");
	            System.out.println("1: Adicionar um novo Cliente na fila.");
	            System.out.println("2: Listar todos os Clientes na fila");
	            System.out.println("3: Chamar (retirar) uma pessoa da fila");
	            System.out.println("0: Finalizar o programa");
	            System.out.println("****************************************************");

	            int opcao = leia.nextInt();

	            switch (opcao) {
	                case 0:
	                    menu = false;
	                    System.out.println("Programa finalizado.");
	                    break;

	                case 1:
	                    System.out.println("Digite o nome do cliente:");
	                    fila.add(leia.nextLine());
	                    System.out.println("Cliente adicionado à fila!");
	                    break;

	                case 2:
	                    if (fila.isEmpty()) {
	                        System.out.println("A fila está vazia.");
	                    } else {
	                        System.out.println("Clientes na fila:");
	                        for (String cliente : fila) {
	                            System.out.println(cliente);
	                        }
	                    }
	                    break;

	                case 3:
	                    if (fila.isEmpty()) {
	                        System.out.println("A fila está vazia. Nenhum cliente para chamar.");
	                    } else {
	                        String clienteChamado = fila.poll();
	                        System.out.println("Cliente chamado: " + clienteChamado);
	                    }
	                    break;

	                default:
	                    System.out.println("Opção inválida! Tente novamente.");
	                    break;    
	                    
	                    
	            }
	        }
	    }
	}


