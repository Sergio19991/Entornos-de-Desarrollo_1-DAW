package banco;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class CuentaTest {

	@Test
	void testIngresarDinero() {
		Cuenta c = new Cuenta("100", "Veigar");
		double saldoInicial = c.getSaldo();
		c.ingresarDinero(50);
		assertEquals(saldoInicial+50, c.getSaldo(), 0.01);
	}

	/*@Test
	void testRetirarDinero() {
		fail("Not yet implemented");
	}*/

}
