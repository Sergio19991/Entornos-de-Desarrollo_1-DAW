package examenUd5;

public class Usuario {
	private String nombre;

	public Usuario(String nombre) {
		this.nombre = nombre;

	}

	public String alquilarPublicacion(Publicacion publi) {
		String msg = "";
		if (!publi.isAlquilado()) {
			publi.setAlquilado(true);
			msg = /*
					 * "La publicaci�n " + publi.getNombre() +
					 * " ha sido alquilada con �xito. Gracias " + this.getNombre();
					 */ "La Publicaci�n se ha Alquilado.";
		} else {
			msg = "La publicación " + publi.getNombre() + " no está disponible. ";
		}
		return msg;
	}

	public String devolverPublicacion(Publicacion publi) {
		String msg = "";
		if (publi.isAlquilado()) {
			publi.setAlquilado(false);
			msg = "La publicación " + publi.getNombre() + " ha sido devuelta con éxito. Gracias " + this.getNombre();
		} else {
			msg = /*
					 * "La publicaci�n " + publi.getNombre() +
					 * " no est� disponible para devolver. ";
					 */ "La Publicaci�n no est� disponible para Devolver.";
		}
		return msg;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Override
	public String toString() {
		return "Usuario [nombre=" + nombre + "]";
	}
}