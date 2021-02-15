package examenUd5;

public class Main {

	public static void main(String[] args) {
		Usuario usuario1 = new Usuario("USUARIO 1");
		Usuario usuario2 = new Usuario("USUARIO 2");

		Libro libro1 = new Libro("LIBRO 1", "EDITORIAL_LIBRO 1", "AUTOR_LIBRO 1");
		Libro libro2 = new Libro("LIBRO 2", "EDITORIAL_LIBRO 2", "AUTOR_LIBRO 2");

		Revista revista1 = new Revista("REVISTA 1", "EDITORIAL_REVISTA 1", 2001, 1);
		Revista revista2 = new Revista("REVISTA 2", "EDITORIAL_REVISTA 2", 2002, 2);

		usuario1.alquilarPublicacion(libro1);
		libro1.isAlquilado();

		usuario1.devolverPublicacion(libro1);
		libro1.isAlquilado();

		usuario2.devolverPublicacion(libro2);
		libro2.isAlquilado();

		usuario2.alquilarPublicacion(libro1);
		usuario1.alquilarPublicacion(libro1);
		libro1.isAlquilado();
	}
}