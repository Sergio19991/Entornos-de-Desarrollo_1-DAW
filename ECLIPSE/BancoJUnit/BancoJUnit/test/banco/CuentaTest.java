package banco;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class CuentaTest {

	@Test
	void testIngresarDinero() {
		Cuenta cuenta1 = new Cuenta("321465978", "TITULAR 1");
		Cuenta cuenta2 = new Cuenta("465798321", "TITULAR 2");

		cuenta1.ingresarDinero(26.74);
		equals(26.74);
		
		cuenta2.ingresarDinero(-12.74);
		equals("El dinero ingresado debe ser mayor que 0");
	}
	
	@Test
	void retirarDinero() {
		Cuenta cuenta1 = new Cuenta("312455587", "TITULAR 1");
		Cuenta cuenta2 = new Cuenta("984744552", "TITULAR 2");
		
		cuenta1.ingresarDinero(125.50);
		cuenta1.retirarDinero(25.50);
		equals(25.50);
		
		cuenta2.ingresarDinero(100.25);
		cuenta2.retirarDinero(100.25);
		cuenta2.retirarDinero(25.50);
		cuenta2.bloquearCuenta();
		equals(true);
	}
}