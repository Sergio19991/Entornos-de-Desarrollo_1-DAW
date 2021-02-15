import junit.framework.TestCase;

public class RestaTest extends TestCase {

	@Test // Correcto
	public void testdecrementa() {
		Resta r1 = new Resta();
		double resultado = 0;
		resultado = r1.decrementa(6);
		assertEquals(5.0, resultado, 0.01);
	}

}
