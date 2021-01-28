package examenUd5;

public class Usuario {
	private String nombre;
	
	
	public Usuario(String nombre) {
		this.nombre = nombre;
		
	}
	
	protected String alquilarPublicacion(Publicacion publi) {
		String msg = "";
		if (!publi.isAlquilado()) {
			publi.setAlquilado(true);
			msg = "La publicación " + publi.getNombre() + " ha sido alquilada con éxito. Gracias " + this.getNombre();
		}else {
			msg = "La publicación " + publi.getNombre() + " no está disponible. ";
		}
		return msg;
	}
	
	protected String devolverPublicacion(Publicacion publi) {
		String msg = "";
		if (publi.isAlquilado()) {
			publi.setAlquilado(false);
			msg = "La publicación " + publi.getNombre() + " ha sido devuelta con éxito. Gracias " + this.getNombre();
		}else {
			msg = "La publicación " + publi.getNombre() + " no está disponible para devolver. ";
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
