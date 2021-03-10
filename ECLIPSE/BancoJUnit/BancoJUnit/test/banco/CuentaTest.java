package banco;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class CuentaTest {

	/**
	 * Test1a: Comprobar que hace lo correcto cuando ingrsamos un cantidad mayor que
	 * 0.
	 */
	@Test
	void testIngresarDineroMayorCero() {
		Cuenta c = new Cuenta("100", "CUENTA");
		double saldoInicial = c.getSaldo();
		c.ingresarDinero(50);
		assertEquals(saldoInicial + 50, c.getSaldo(), 0.01);
	}

	/**
	 * Test2a: Comprobar que hace lo correcto cuando se ingresa una cantidad menor
	 * que 0.
	 */
	@Test
	void testIngresarDineroMenorCero() {
		Cuenta c = new Cuenta("100", "CUENTA");
		c.ingresarDinero(-50);
		assertEquals(0, c.getSaldo(), 0.01);
	}

	/**
	 * Test1c: Comprobar que no permita ingresar una cantidad menor que 0.
	 */
	@Test
	void testIngresarDineroCero() {
		Cuenta c = new Cuenta("100", "CUENTA");
		c.ingresarDinero(-50);
		assertEquals(0, c.getSaldo(), 0.01);
	}

	/**
	 * Test2a: Comprobar que se puede retirar 500 euro como máximo.
	 */
	@Test
	void testIngresarDineroMaximo() {
		Cuenta c = new Cuenta("100", "CUENTA");
		c.ingresarDinero(600);
		assertEquals(0, c.retirarDinero(501), 0.01);
	}

	/**
	 * Test2b: Comprbar que la cuenta se bloquea si el saldo es 0.
	 */
	@Test
	void testBloquearCuenta() {
		Cuenta c = new Cuenta("100", "CUENTA");
		c.ingresarDinero(400);
		c.retirarDinero(401);
		assertTrue(c.comprobarBloqueo());
	}

	/**
	 * Test2c: Comprobar que la cuenta no se bloquea si el saldo es 0
	 */
	@Test
	void bloquearComprobarBloqueoSaldoCero() {
		Cuenta c = new Cuenta("100", "CUENTA");
		c.ingresarDinero(400);
		c.retirarDinero(400);
		assertFalse(c.comprobarBloqueo());
	}
}