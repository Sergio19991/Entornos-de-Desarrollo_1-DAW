package banco;

/**
 * Esta clase define objetos que contienen enteros, expresiones booleanas y
 * n�meros decimales.
 * 
 * @author Sergio Bejarano Arroyo
 * @version 22/02/2021
 */

public class Cuenta {

	// Variables de tipo Cadena
	private String numero;
	private String titular;
	// Variable de tipo decimal
	private double saldo;
	// Variable de tipo boolena
	private boolean bloqueada;

	/**
	 * Constructor para para la creaci�n del titular junto a su N�mero de Cuenta
	 * 
	 * @param numero  El par�metro numero define N�mero de la Cuenta.
	 * @param titular El par�metro titular define el Titular correspondiente al
	 *                N�mero de la Cuenta
	 */
	public Cuenta(String numero, String titular) {
		this.numero = numero;
		this.titular = titular;
		this.saldo = 0;
		this.bloqueada = false;
	} // Cierre del constructor

	/**
	 * M�todo que comprueba si el Dinero que se Quiere ingresar es mayor que 0 y si
	 * no es as� devolver� el dinero pasado con el par�metro @param dineroIngresado,
	 * de lo contrario aparecer� un mensaje diciendo "El dinero ingresado debe ser
	 * mayor que 0"
	 * 
	 * @return Devuelve la cantidad que se ha ingresado
	 */
	protected double ingresarDinero(double dineroIngresado) {
		if (dineroIngresado > 0) {
			this.saldo = this.saldo + dineroIngresado;
			comprobarBloqueo();
			return dineroIngresado;
		} else {
			System.out.println("El dinero ingresado debe ser mayor que 0");
			return 0;
		}

	} // Cierre del constructor

	/**
	 * M�todo que permite retirar dinero, es decir, restar una cantidad al saldo.
	 * Para ello, hace uso del par�metro @param dineroRetirado. Si el dinero a
	 * retirar es mayor que 0 y menor que 500 har� la recta, de lo contrario
	 * mostrar� un mensaje diciendo "El dinero retirado debe ser mayor que 0 y menor
	 * o igual que 500"
	 * 
	 * @return Devuelve la cantidad de dinero a retirar
	 * @param comprobarBloqueo utiliza el m�todo "comprobarBloqueo()"
	 */
	protected double retirarDinero(double dineroRetirado) {
		if (dineroRetirado > 0 && dineroRetirado <= 500) {
			this.saldo = this.saldo - dineroRetirado;
			comprobarBloqueo();
			return dineroRetirado;
		} else {
			System.out.println("El dinero retirado debe ser mayor que 0 y menor o igual que 500");
			return 0;
		}

	}

	/**
	 * M�todo que comprueba la restricci�n del m�todo "ingresarDinero(), ya que si
	 * el dinero a retirar es menor o igual que 0, no se permitir� sacar dinero y lo
	 * que provocar� que en el m�todo "retirarDinero" aparezca el mensaje "El dinero
	 * retirado debe ser mayor que 0 y menor o igual que 500""
	 * 
	 * @return Devuelve tru o false seg�n la condici�n del m�todo "comprobarBloqueo"
	 */
	protected boolean comprobarBloqueo() {
		if (this.saldo <= 0) {
			bloquearCuenta();
			return true;
		} else {
			return false;
		}
	}

	/**
	 * M�todo que bloquear� la cuenta con una expresi�n booleana
	 * 
	 * @return devolver� true para que la Cuenta quede bloqueada junto a un mensaje
	 *         "La cuenta ha sido bloqueada". O en otro caso false para que la
	 *         cuenta no quede bloqueada
	 */
	protected boolean bloquearCuenta() {
		this.bloqueada = true;
		System.out.println("La cuenta ha sido bloqueada");
		return true;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getTitular() {
		return titular;
	}

	public void setTitular(String titular) {
		this.titular = titular;
	}

	public double getSaldo() {
		return saldo;
	}

	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}

	public boolean isBloqueada() {
		return bloqueada;
	}

	public void setBloqueada(boolean bloqueada) {
		this.bloqueada = bloqueada;
	}
}
