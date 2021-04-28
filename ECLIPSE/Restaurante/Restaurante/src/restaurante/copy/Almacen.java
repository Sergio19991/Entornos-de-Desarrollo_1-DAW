package restaurante.copy;

/**
 * Esta clase define objetos de contienen números decimales y expresiones
 * booleanas. Esta clase se encarga de definir la cantidad de cada ingrediente
 * (en este caso de los Kilos de Pasta y de los Kilos de Tomates) que se
 * guardarán en el Almacén
 * 
 * @author Sergio Bejarano Arroyo
 * @version 08/03/2021
 */

public class Almacen {

	// Variable de tipo decimal
	private double kilosPasta;
	// Variable de tipo decimal
	private double kilosTomate;
	// Variable de tipo booleana
	private boolean pastaMenu;

	/**
	 * Constructor para para la creación de los Kilos de Pasta y de los Kilos de
	 * Tomate
	 * 
	 * @param kilosPasta  El parámetro kilosPasta define la cantidad, en Kilos, de
	 *                    Pasta
	 * @param kilosTomate El parámetro kilosTomate define la cantidad, en Kilos, de
	 *                    Tomate
	 * @param pastaMenu   El parámetro pastaMenu define si hará fata pasta la
	 *                    presente semana en el menú
	 */
	public Almacen(boolean pastaMenu) {
		this.kilosPasta = 0;
		this.kilosTomate = 0;
		this.pastaMenu = pastaMenu;
	} // Cierre del Constructor

	public double getKilosPasta() {
		return kilosPasta;
	}

	/**
	 * Método que muestra los Kilos de Pasta en el caso de que el @param pastaMenu
	 * sea "true" y, en el caso de que sea "false" mostrará por pantalla un mensaje
	 * "No necesitamos pasta esta semana".
	 */
	public void setKilosPasta(double kilosPasta) {
		if (pastaMenu == true) {
			this.kilosPasta = kilosPasta;
		} else {
			System.out.println("No necesitamos pasta esta semana");
		}
	} // Cierre del constructor

	public double getKilosTomate() {
		return kilosTomate;
	}

	public void setKilosTomate(double kilosTomate) {
		this.kilosTomate = kilosTomate;
	}

	@Override
	public String toString() {
		return "Almacen [kilosPasta=" + kilosPasta + ", kilosTomate=" + kilosTomate + "]";
	}

}