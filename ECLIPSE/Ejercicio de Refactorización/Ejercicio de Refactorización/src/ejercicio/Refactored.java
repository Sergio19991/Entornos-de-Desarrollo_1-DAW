package ejercicio;

import java.util.Scanner;

/* *
 * @author DavidCesarAliseda
 */

public class Refactored {

	// Ser�a interesante disponer de un programa que pida como entrada un n�mero
	// decimal y lo muestre redondeando al entero m�s pr�ximo. ej: 2,3 -> 2 4,8 -> 5

	public static void main(String args[]) {
		Scanner teclado = new Scanner(System.in);
		double numDecimal;
		double parteDecimal;
		double parteEntera;
		double numComparar;
		int num;

		System.out.print("Introduzca el n�mero decimal a redondear: ");
		numDecimal = teclado.nextDouble();

		parteDecimal = obtenerParteDecimal(numDecimal);
		numComparar = compararNumeroDecimal(parteDecimal);
		parteEntera = obtenerParteEntera(numDecimal, parteDecimal);
		num = (int) (parteEntera + 1);

		if (parteDecimal >= 5) {
			System.out.println("Al redondear " + numDecimal + " obtenemos: " + num + ".");
		} else {
			System.out.println("Al redondear " + numDecimal + " obtenemos: " + (int) parteEntera + ".");
		}
	}

	public static double compararNumeroDecimal(double parteDecimal) {
		return parteDecimal * 10;
	}

	public static double obtenerParteEntera(double numDecimal, double parteDecimal) {
		return numDecimal - parteDecimal;
	}

	public static double obtenerParteDecimal(double numDecimal) {
		return numDecimal % 1;
	}
}