package restaurante.copy;

/**
 * Esta clase define objetos que continen n�meros enteros y cadenas. Esta clase
 * se encarga de construir el nombre del Chef y sus a�os de experiencia
 * 
 * @author Sergio Bejarano Arroyo
 * @version 08/03/2021
 */

public class Chef {
	private String nombre;
	private int anyosExpriencia;

	/**
	 * Constructor para para la creaci�n de los Kilos de Pasta y de los Kilos de
	 * Tomate
	 * 
	 * @param nombre          El par�metro nombre define el nombre del chef
	 * @param anyosExpriencia El par�metro anyosExpriencia define los a�os de
	 *                        experiencias que tiene el chef
	 */
	public Chef(String nombre) {
		this.nombre = nombre;
		this.anyosExpriencia = 0;
	} // Cierre del constructor

	public Chef(String nombre, int anyosExperiencia) {
		this.nombre = nombre;
		this.anyosExpriencia = anyosExperiencia;
	}

	/**
	 * M�todo que devuelve la cantidad de Pasta y Tomates menos la cantidad de Pasta
	 * o Tomates pasados por consola, seg�n la cantidad de Comensales pasado con el
	 * par�metro @param cantComensales Tambi�n devuelve un mensaje por
	 */
	protected void elaborarRecetaMacarronesConTomate(int cantComensales, Almacen alm, Recetario rec) {
		System.out.println("El chef est� elaborando macarrones con tomate");
		alm.setKilosPasta(alm.getKilosPasta() - (rec.getKilosPastaNecesarios() * cantComensales));
		alm.setKilosTomate(alm.getKilosTomate() - (rec.getKilosTomateNecesarios() * cantComensales));
	}

}
