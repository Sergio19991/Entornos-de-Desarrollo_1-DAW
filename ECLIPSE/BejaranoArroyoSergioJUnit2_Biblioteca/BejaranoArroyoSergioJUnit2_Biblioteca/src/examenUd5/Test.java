package examenUd5;

public class Test {

	public static void main(String[] args) {
		// TEST 1. Se crean correctamente usuarios y libros
		Usuario usuario1 = new Usuario("Sergio");
		Usuario usuario2 = new Usuario("Bejarano");

		Libro libro1 = new Libro("El Lazarillo de Tormes", "Anaya", "An�nimo");
		Libro libro2 = new Libro("El Quijote", "Francisco de Robles", "Miguel de Cervantes");

		// TEST 2. Se puede alquilar uno de los libros creados en el apartado 1
		usuario1.alquilarPublicacion(libro1);
		libro1.isAlquilado();

		// TEST 3. Se puede devolver el libro que se ha alquilado en el apartado 2
		usuario1.devolverPublicacion(libro1);
		libro1.isAlquilado();

		// TEST 4. No se puede devolver un libro que no ha sido alquilado
		usuario2.devolverPublicacion(libro2);
		libro2.isAlquilado();

		// TEST 5. No se puede alquilar un libro que ya ha sido alquilado
		usuario2.alquilarPublicacion(libro1);
		usuario1.alquilarPublicacion(libro1);
		libro1.isAlquilado();
	}
}