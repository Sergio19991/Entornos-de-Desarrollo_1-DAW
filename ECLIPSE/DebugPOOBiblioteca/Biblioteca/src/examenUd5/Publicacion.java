package examenUd5;

public class Publicacion {
	protected String nombre;
	protected String editorial;
	protected boolean alquilado; // No indicar, ellos deben implementarlo pues es necesario

	public Publicacion(String nombre, String editorial) {
		this.nombre = nombre;
		this.editorial = editorial;
		this.alquilado = false;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getEditorial() {
		return editorial;
	}

	public void setEditorial(String editorial) {
		this.editorial = editorial;
	}

	public boolean isAlquilado() {
		return alquilado;
	}

	public void setAlquilado(boolean alquilado) {
		this.alquilado = alquilado;
	}

	@Override
	public String toString() {
		return "Publicacion [nombre=" + nombre + ", editorial=" + editorial + "]";
	}
}