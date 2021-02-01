import java.util.Scanner;

public class PruebaCondicion {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int respuestaUsuario, respuestaCorrecta = 3;

		System.out.println("¿Cuál es la Capital de España?");
		System.out.println("1) Sevilla.");
		System.out.println("2) Barcelona.");
		System.out.println("3) Madrid.");

		System.out.println();

		System.out.print("Escribe tu Respuesta: ");
		respuestaUsuario = sc.nextInt();

		if (respuestaUsuario != respuestaCorrecta) {
			System.out.println("INCORRECTO. La respuesta correcta es Madrid.");
		} else {
			System.out.println("¡¡¡CORRECTO!!!");
		}
	}
}