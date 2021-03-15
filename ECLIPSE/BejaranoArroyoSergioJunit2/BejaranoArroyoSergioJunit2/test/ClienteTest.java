import static org.junit.jupiter.api.Assertions.*; 

import org.junit.jupiter.api.Test;

class ClienteTest {

	/**
	 * En este test se ha comprobado que el cliente puede pagar una cuantía mayor
	 * que 0. Se ha utilizado el método de JUnit "assertEquals", ya que estoy
	 * comparando que el cliente paga una cuantía de 20 y, por lo tanto, se permite,
	 * ya que es mayor que 0.
	 */
	@Test
	void testPuedePagarCuotaMayorQueCero() {
		Cliente c = new Cliente("1", "Sergio");
		double cuantiaInicial = c.getCuantia();
		c.pagarCuota(20);
		assertEquals(cuantiaInicial + 20, c.getCuantia(), 0.01);
	}

	/**
	 * En este test se ha comprobado que cliente solo puede pagar una cuantía mayor
	 * que 0. Se ha utilizado el método de JUnit "assertEquals", ya que estoy
	 * comprobando que el cliente paga una cuantía de -20 y, por lo tanto, se
	 * permite, ya que es menor que 0.
	 */
	@Test
	void testSoloPagarCuotaMayorQueCero() {
		Cliente c = new Cliente("1", "Sergio");
		c.pagarCuota(-20);
		assertEquals(0, c.getCuantia(), 0.01);
	}

	/**
	 * En este test se ha comprobado que el cliente puede obtener una cuente premium
	 * si aún no está suscrito. Se ha utlizado el método de JUnit "assertTrue", ya
	 * que estoy comparando que el cliente no era premum antes y puede suscribirse.
	 */
	@Test
	void testSubcripcionSiNoEstaSuscrito() {
		Cliente c = new Cliente("1", "Sergio");
		c.setPremium(true);
		assertTrue(c.obtenerCuentaPremium());
	}

	/**
	 * En este test se ha comprobado que el cliente no puede obtener una cuenta
	 * premium porque ya está suscrito. Se ha utlizado el método de JUnit
	 * "assertTrue", ya que estoy comparando que el cliente era premium y ya no
	 * puede suscribirse.
	 */
	@Test
	void testSubcripcionSiYaEstaSuscrito() {
		Cliente c = new Cliente("1", "Sergio");
		c.setPremium(false);
		assertTrue(c.obtenerCuentaPremium());
	}
}