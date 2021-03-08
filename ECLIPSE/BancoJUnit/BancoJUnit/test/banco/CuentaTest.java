package banco;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class CuentaTest {

	@Test
	void testIngresarDinero() {
		Cuenta cuenta1 = new Cuenta("100", "CUENTA 1");
		double saldoInicial = cuenta1.getSaldo();
		cuenta1.ingresarDinero(50);
		assertEquals(saldoInicial + 50, cuenta1.getSaldo(), 0.01);
	}

	@Test
	void testRetirarDinero() {
		Cuenta cuenta2 = new Cuenta("100", "CUENTA 2");
		double saldoFinal = cuenta2.getSaldo();
		cuenta2.retirarDinero(75);
		assertEquals(saldoFinal - 75, cuenta2.getSaldo(), 0.01);
	}
}