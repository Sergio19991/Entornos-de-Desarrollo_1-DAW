package EjmplosRefactorizacion;

public class RenombradoMetodo {
	public static void main(String[] args) {
		/* multiplicar(8); */
		// Antiguo nombre del M�todo

		/** Nuevo nombre del M�todo: **/
		multiplicarPorDos(8);
	}

	/**
	 * El Antiguo nombre es: public static void multiplicar(int numero) {
	 * System.out.print(2 * numero); }
	 **/

	public static void multiplicarPorDos(int numero) {
		System.out.print(2 * numero);
	}
}