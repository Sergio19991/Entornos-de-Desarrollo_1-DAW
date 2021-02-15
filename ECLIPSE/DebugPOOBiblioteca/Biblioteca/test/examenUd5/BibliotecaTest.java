package examenUd5;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class BibliotecaTest {

	@Test
	void testAgregarPublicacion() {
		Biblioteca biblioteca1 = new Biblioteca();
		Publicacion publicacion1 = new Publicacion("PUBLICACIÓN 1", "EDITORIAL 1");
		int longitud = biblioteca1.getPublicaciones().size();
		biblioteca1.agregarPublicacion(null);
		assertEquals(longitud + 1, biblioteca1.getPublicaciones().size());
		assertSame(publicacion1, biblioteca1.getPublicaciones().get(0));
	}
}