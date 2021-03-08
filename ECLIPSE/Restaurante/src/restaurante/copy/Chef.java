package restaurante.copy;

/**
 * Esta clase define objetos que continen números enteros y cadenas. Esta clase
 * se encarga de construir el nombre del Chef y sus años de experiencia
 * 
 * @author Sergio Bejarano Arroyo
 * @version 08/03/2021
 */

public class Chef {
	private String nombre;
	private int anyosExpriencia;

	/**
	 * Constructor para para la creación de los Kilos de Pasta y de los Kilos de
	 * Tomate
	 * 
	 * @param nombre          El parámetro nombre define el nombre del chef
	 * @param anyosExpriencia El parámetro anyosExpriencia define los años de
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
	 * Método que devuelve la cantidad de Pasta y Tomates menos la cantidad de Pasta
	 * o Tomates pasados por consola, según la cantidad de Comensales pasado con el
	 * parámetro @param cantComensales También devuelve un mensaje por
	 */
	protected void elaborarRecetaMacarronesConTomate(int cantComensales, Almacen alm, Recetario rec) {
		System.out.println("El chef está elaborando macarrones con tomate");
		alm.setKilosPasta(alm.getKilosPasta() - (rec.getKilosPastaNecesarios() * cantComensales));
		alm.setKilosTomate(alm.getKilosTomate() - (rec.getKilosTomateNecesarios() * cantComensales));
	}

}
