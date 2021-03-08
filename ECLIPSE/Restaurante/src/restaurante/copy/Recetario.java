package restaurante.copy;

/**
 * Esta clase define objetos que continen n�meros decimales. Esta clase se
 * encarga de definir la cantidad de Pasta y Tomates necesarios
 * 
 * @author Sergio Bejarano Arroyo
 * @version 08/03/2021
 */

public class Recetario {

	// Variable de tipo decimal
	private double kilosPastaNecesarios;
	// Variable de tipo decimal
	private double kilosTomateNecesarios;

	public Recetario() {

	}

	/**
	 * Constructor para para la creaci�n de los Kilos de Pasta y de los Kilos de
	 * Tomate necesarios
	 * 
	 * @param kilosPastaNecesarios  El par�metro kilosPastaNecesarios define la
	 *                              cantidad, en Kilos, de Pasta necesarios. Por
	 *                              defecto ser� 0.25
	 * @param kilosTomateNecesarios El par�metro kilosTomateNecesarios define la
	 *                              cantidad, en Kilos, de Tomate necesarios. Por
	 *                              defecto ser� 0.25
	 */
	public void recetaMacarronesConTomate() {
		System.out.println(
				"Para preparar una raci�n de macarrones con tomate, se necesitan 250 gramos de macarrones y 250 gramos de tomate");
		this.setKilosPastaNecesarios(0.25);
		this.setKilosTomateNecesarios(0.25);
	} // Cierre del constructor

	public double getKilosPastaNecesarios() {
		return kilosPastaNecesarios;
	}

	public void setKilosPastaNecesarios(double kilosPastaNecesarios) {
		this.kilosPastaNecesarios = kilosPastaNecesarios;
	}

	public double getKilosTomateNecesarios() {
		return kilosTomateNecesarios;
	}

	public void setKilosTomateNecesarios(double kilosTomateNecesarios) {
		this.kilosTomateNecesarios = kilosTomateNecesarios;
	}

}
