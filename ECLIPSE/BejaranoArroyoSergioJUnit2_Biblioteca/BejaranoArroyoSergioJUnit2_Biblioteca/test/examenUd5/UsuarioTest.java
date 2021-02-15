package examenUd5;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class UsuarioTest {

	@Test
	void testAlquilarPublicacion() {
		Usuario usuario1 = new Usuario("usuario 1");
		Publicacion publicacion1 = new Publicacion("PUBLICACACIÓN 1", "EDITORIAL 1");
		assertEquals("La Publicación se ha Alquilado.", usuario1.alquilarPublicacion(publicacion1));
	}

	@Test
	void testDevolverPublicacion() {
		Usuario usuario1 = new Usuario("usuario 1");
		Publicacion publicacion1 = new Publicacion("PUBLICACACIÓN 1", "EDITORIAL 1");
		assertEquals("La Publicación no está disponible para Devolver.", usuario1.devolverPublicacion(publicacion1));
	}
}