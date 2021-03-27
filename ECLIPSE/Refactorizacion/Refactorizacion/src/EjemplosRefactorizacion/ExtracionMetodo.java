package EjemplosRefactorizacion;

import java.util.Scanner;

public class ExtracionMetodo {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numeroInicio, numeroFin;

		System.out.print("Introduce el Número del Inicial: ");
		numeroInicio = sc.nextInt();
		System.out.print("introduce el Número del Fianal: ");
		numeroFin = sc.nextInt();

		System.out.println(numeroAleatorioEntreDosNumeros(numeroInicio, numeroFin));
	}

	public static int numeroAleatorioEntreDosNumeros(int numeroInicio, int numeroFin) {
		int resultado = (int) (Math.random() * (numeroFin - numeroInicio) + numeroInicio);

		return resultado;
	}
}