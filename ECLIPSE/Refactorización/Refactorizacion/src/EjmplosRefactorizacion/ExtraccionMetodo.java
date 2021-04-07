package EjmplosRefactorizacion;

import java.util.Scanner;

public class ExtraccionMetodo {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numeroInicial, numeroFinal;
		
		System.out.print("Introduce el N�mero Inicial: ");
		numeroInicial = sc.nextInt();
		System.out.print("Introduce el N�mero Final: ");
		numeroFinal = sc.nextInt();
		
		System.out.println(numeroAleatorioEntreDosNumeros(numeroInicial, numeroFinal));
		
		/** Antes el M�todo estaba en el propio "Main":
		public static int numeroAleatorioEntreDosNumeros(int numeroInicial, in numeroFinal) {
			int resultado = (int) (Math.random() * (numeroFinal - numeroInicial) + numeroInicial);
			
			return resultado;
		}**/
	}
	
	public static int numeroAleatorioEntreDosNumeros(int numeroInicial, int numeroFinal) {
		int resultado = (int) (Math.random() * (numeroFinal - numeroInicial) + numeroInicial);
		
		return resultado;
	}
}