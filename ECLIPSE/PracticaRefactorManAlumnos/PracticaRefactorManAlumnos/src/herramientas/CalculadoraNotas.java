package herramientas;

import java.util.Scanner;

public class CalculadoraNotas {
	private double[] notas;
	private double mediaClase;
	private int notaMasAlta;
	private int notaMasBaja;

	public CalculadoraNotas() {
		notas = new double[5];
	}

	public void calculos() {
		double media = 0;
		double mayor = notas[0];
		double menor = notas[0];
		int totalNotas = 5;

		Scanner teclado = new Scanner(System.in);
		System.out.println("Introduce la nota del alumno nº" + 1);
		notas[0] = teclado.nextDouble();
		System.out.println("Introduce la nota del alumno nº" + 2);
		notas[1] = teclado.nextDouble();
		System.out.println("Introduce la nota del alumno nº" + 3);
		notas[2] = teclado.nextDouble();
		System.out.println("Introduce la nota del alumno nº" + 4);
		notas[3] = teclado.nextDouble();
		System.out.println("Introduce la nota del alumno nº" + 5);
		notas[4] = teclado.nextDouble();

		for (int i = 0; i < totalNotas; i++) {
			media += notas[i];
		}

		media = media / totalNotas;

		System.out.println("La media es: " + media);

		for (int i = 1; i < totalNotas - 1; i++) {
			if (notas[i] > mayor) {
				mayor = notas[i];
			}
		}

		System.out.println("La nota más alta es de: " + mayor);

		for (int i = 1; i < totalNotas - 1; i++) {
			if (notas[i] < menor) {
				menor = notas[i];
			}
		}

		System.out.println("La nota más baja es de: " + menor);

	}

	public CalculadoraNotas(int numMaxAlumnos) {
		notas = new double[numMaxAlumnos];
	}

	public double[] getNotas() {
		return notas;
	}

	public void setNotas(double[] notas) {
		notas = notas;
	}

	public double getMediaClase() {
		return mediaClase;
	}

	public void setMediaClase(double mediaClase) {
		this.mediaClase = mediaClase;
	}

	public int getNotaMasAlta() {
		return notaMasAlta;
	}

	public void setNotaMasAlta(int notaMasAlta) {
		this.notaMasAlta = notaMasAlta;
	}

	public int getNotaMasBaja() {
		return notaMasBaja;
	}

	public void setNotaMasBaja(int notaMasBaja) {
		this.notaMasBaja = notaMasBaja;
	}
}