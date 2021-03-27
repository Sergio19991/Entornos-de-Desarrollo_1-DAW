package EjemplosRefactorizacion;

public class RenombradoMetodo {
	public static void main(String[] args) {
		multiplarPorDos(8);
	}

	/*
	 * ANTIGUO MÉTODO: public static void sumarNumero(int numero) { int sumarDos =
	 * 2; System.out.print(numero + sumarDos); }
	 */

	public static void multiplarPorDos(int numero) {
		System.out.print(numero * 2);
	}
}