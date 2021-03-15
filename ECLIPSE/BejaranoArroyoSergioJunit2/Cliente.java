/**
 * Clase que representa a un cliente de la clínica veterinaria. 
 * @author reyes
 *
 */
public class Cliente {
	
	private String id;
	private String nombre;
	/**
	 * Cantidad que ha pagado el cliente desde que se hizo socio
	 */
	private double cuantia;
	private boolean premium;

	public Cliente(String id, String nombre) {
		this.id = id;
		this.nombre = nombre;
		this.cuantia = 0;
	}

	protected double pagarCuota(double cuota) {
		if (cuota > 0) {
			this.cuantia = this.cuantia + cuota;
		} else {
			System.out.println("La cuota debe ser mayor que 0");
			cuota = 0;
		}
		return cuota;
	}
	
	protected boolean obtenerCuentaPremium() {
		boolean suscrito = true;
		if (this.premium == false) {
			this.premium = true;
		}else {
			suscrito = true;
		}
		return suscrito;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public double getCuantia() {
		return cuantia;
	}

	public void setCuantia(double cuantia) {
		this.cuantia = cuantia;
	}

	public boolean isPremium() {
		return premium;
	}

	public void setPremium(boolean premium) {
		this.premium = premium;
	}
	
}

