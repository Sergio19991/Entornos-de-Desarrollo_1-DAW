package examenUd5;

public class Revista extends Publicacion {
	private int anio;
	private int mes;
	public Revista(String nombre, String editorial, int anio, int mes) {
		super(nombre, editorial);
		this.anio = anio;
		this.mes = mes;
	}
	public int getAnio() {
		return anio;
	}
	public void setAnio(int anio) {
		this.anio = anio;
	}
	public int getMes() {
		return mes;
	}
	public void setMes(int mes) {
		this.mes = mes;
	}
	@Override
	public String toString() {
		return "Revista [anio=" + anio + ", mes=" + mes + "]";
	}
	
	

}
