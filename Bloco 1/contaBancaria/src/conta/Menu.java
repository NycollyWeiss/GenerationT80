package conta;

import java.io.IOException;
import java.util.InputMismatchException;
import java.util.Scanner;


import conta.controller.ContaController;
import conta.model.ContaCorrente;
import conta.model.ContaPoupanca;
import conta.util.Cores;

public class Menu {

	public static Scanner leia = new Scanner(System.in);

	public static void main(String[] args) {
		
	 ContaController contas = new ContaController();
	 
	 int opcao, numero, agencia,tipo, aniversario,numeroDestino;
	 String titular;
	 double saldo, limite, valor;	
		// Teste da Classe Conta Corrente
		ContaCorrente cc1 = new ContaCorrente(1, 123, 1, "Adriana", 10000.0f, 1000.0f);
		cc1.visualizar();
		cc1.sacar(12000.0f);
		cc1.visualizar();
		cc1.depositar(5000.0f);
		cc1.visualizar();

		// Teste da Classe Conta Poupança
		ContaPoupanca cp1 = new ContaPoupanca(2, 123, 2, "Victor", 100000.0f, 15);
		cp1.visualizar();
		cp1.sacar(1000.0f);
		cp1.visualizar();
		cp1.depositar(5000.0f);
		cp1.visualizar();

		while (true) {

			System.out.println(Cores.TEXT_YELLOW + Cores.ANSI_BLACK_BACKGROUND
					+ "*****************************************************");
			System.out.println("                                                     ");
			System.out.println("                BANCO DO BRAZIL COM Z                ");
			System.out.println("                                                     ");
			System.out.println("*****************************************************");
			System.out.println("                                                     ");
			System.out.println("            1 - Criar Conta                          ");
			System.out.println("            2 - Listar todas as Contas               ");
			System.out.println("            3 - Buscar Conta por Numero              ");
			System.out.println("            4 - Atualizar Dados da Conta             ");
			System.out.println("            5 - Apagar Conta                         ");
			System.out.println("            6 - Sacar                                ");
			System.out.println("            7 - Depositar                            ");
			System.out.println("            8 - Transferir valores entre Contas      ");
			System.out.println("            9 - Sair                                 ");
			System.out.println("                                                     ");
			System.out.println("*****************************************************");
			System.out.println("Entre com a opção desejada:                          ");
			System.out.println("                                                     " + Cores.TEXT_RESET);
			try {
				opcao = leia.nextInt();
			}catch(InputMismatchException e){
				System.out.println("\nDigite valores inteiros!");
				leia.nextLine();
				opcao=0;
			}
				
			if (opcao == 9) {
				System.out.println(Cores.TEXT_WHITE_BOLD + "\nBanco do Brazil com Z - O seu Futuro começa aqui!");
				sobre();
				leia.close();
				System.exit(0);
			}
				
			switch (opcao) {
				case 1:
					System.out.println(Cores.TEXT_WHITE + "Criar Conta\n\n");
				
					System.out.println("Digite o Numero da Agência: ");
					agencia = leia.nextInt();
					System.out.println("Digite o Nome do Titular: ");
					leia.skip("\\R?");
					titular = leia.nextLine();
					
					do {
						System.out.println("Digite o Tipo da Conta (1-CC ou 2-CP): ");
						tipo = leia.nextInt();
					}while(tipo < 1 && tipo > 2);
						
					System.out.println("Digite o Saldo da Conta (R$): ");
					saldo = leia.nextDouble();
					
					switch(tipo) {
						case 1 -> {
							System.out.println("Digite o Limite de Crédito (R$): ");
							limite = leia.nextDouble();
							contas.cadastrar(new ContaCorrente(contas.gerarNumero(), agencia, tipo, titular, saldo, limite));
						}
						case 2 -> {
							System.out.println("Digite o dia do Aniversario da Conta: ");
							aniversario = leia.nextInt();
							contas.cadastrar(new ContaPoupanca(contas.gerarNumero(), agencia, tipo, titular, saldo, aniversario));
						}
					}

                    keyPress();
					break;
					case 2:
					System.out.println(Cores.TEXT_WHITE + "Listar todas as Contas\n\n");
					
					contas.listarTodas();

                    keyPress();
					break;
					case 3:
					System.out.println(Cores.TEXT_WHITE + "Buscar Conta por número\n\n");
	
					System.out.println("Digite o número da conta: ");
					numero = leia.nextInt();
					
					contas.procurarPorNumero(numero);

                    keyPress();
					break;
					case 4:
					System.out.println(Cores.TEXT_WHITE + "Atualizar dados da Conta\n\n");
					
						System.out.println("Digite o número da conta: ");
						numero = leia.nextInt();
					
						var buscaConta = contas.buscarNaCollection(numero);

						if (buscaConta != null) {
						
						System.out.println("Digite o Numero da Agência: ");
						agencia = leia.nextInt();
						System.out.println("Digite o Nome do Titular: ");
						leia.skip("\\R?");
						titular = leia.nextLine();
							
						System.out.println("Digite o Saldo da Conta (R$): ");
						saldo = leia.nextDouble();
						
						tipo = buscaConta.getTipo();
						
						switch(tipo) {
								case 1 -> {
								System.out.println("Digite o Limite de Crédito (R$): ");
								limite = leia.nextFloat();
								contas.atualizar(new ContaCorrente(numero, agencia, tipo, titular, saldo, limite));
							}
								case 2 -> {
								System.out.println("Digite o dia do Aniversario da Conta: ");
								aniversario = leia.nextInt();
								contas.atualizar(new ContaPoupanca(numero, agencia, tipo, titular, saldo, aniversario));
							}
								default ->{
								System.out.println("Tipo de conta inválido!");
							}
						}
						
					}else
						System.out.println("\nConta não encontrada!");

                    keyPress();
					break;
					case 5:
					System.out.println(Cores.TEXT_WHITE + "Apagar a Conta\n\n");
		
					System.out.println("Digite o número da conta: ");
					numero = leia.nextInt();
						
					contas.deletar(numero);

                    keyPress();
					break;
					case 6:
					System.out.println(Cores.TEXT_WHITE + "Sacar\n\n");
					System.out.println("Digite o Numero da conta: ");
					numero = leia.nextInt();

					do {
						System.out.println("Digite o Valor do Saque (R$): ");
						valor = leia.nextDouble();
					} while (valor <= 0);

					contas.sacar(numero, valor);


                    keyPress();
					break;
			     	case 7:
					System.out.println(Cores.TEXT_WHITE + "Depositar\n\n");

					System.out.println("Digite o Numero da conta: ");
					numero = leia.nextInt();

					do {
						System.out.println("Digite o Valor do Depósito (R$): ");
						valor = leia.nextDouble();
					} while (valor <= 0);

					contas.depositar(numero, valor);
                    keyPress();
					break;
				    case 8:
					System.out.println(Cores.TEXT_WHITE + "Transferência entre Contas\n\n");
					System.out.println(Cores.TEXT_WHITE + "Transferência entre Contas\n\n");

					System.out.println("Digite o Numero da Conta de Origem: ");
					numero = leia.nextInt();
					System.out.println("Digite o Numero da Conta de Destino: ");
					numeroDestino = leia.nextInt();

					do {
						System.out.println("Digite o Valor da Transferência (R$): ");
						valor = leia.nextDouble();
					} while (valor <= 0);

					contas.transferir(numero, numeroDestino, valor);

                    keyPress();
					break;
					
					
				    default:
					System.out.println(Cores.TEXT_RED_BOLD + "\nOpção Inválida!\n" + Cores.TEXT_RESET);
					
                    keyPress();
					break;
			}
		}	
    }

	public static void sobre() {
		System.out.println("\n*********************************************************");
		System.out.println("Projeto Desenvolvido por: Nycolly Weiss ");
		System.out.println("Generation Brasil - generation@generation.org");
		System.out.println("https://github.com/NycollyWeiss/GenerationT80/tree/master/Bloco%201/contaBancaria");
		System.out.println("*********************************************************");
	}

    
	public static void keyPress() {

		try {

			System.out.println(Cores.TEXT_RESET + "\n\nPressione Enter para Continuar...");
			System.in.read();

		} catch (IOException e) {

			System.out.println("Você pressionou uma tecla diferente de enter!");

		}
	}
}
    
	