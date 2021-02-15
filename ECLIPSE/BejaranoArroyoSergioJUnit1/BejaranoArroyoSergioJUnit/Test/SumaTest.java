import junit.framework.TestCase;

public class SumaTest extends TestCase {

	@Test
	public void testGetSuma() {
		Suma suma = new Suma();
		double resultado = suma.getSuma(1.0, 1.0);
		assertEquals(2.0, resultado);
	}

}