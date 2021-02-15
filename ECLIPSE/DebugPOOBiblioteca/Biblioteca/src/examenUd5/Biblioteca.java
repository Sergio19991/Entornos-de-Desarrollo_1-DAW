package examenUd5;

import java.util.ArrayList;

public class Biblioteca {
	private ArrayList<Publicacion> publicaciones;
	
	public Biblioteca() {
		publicaciones = new ArrayList<Publicacion>();
	}
	
	public void agregarPublicacion(Publicacion l1) {
		this.publicaciones.add(l1);
	}
	
	public void mostrarCatalogo() {
		System.out.println("CAT�LOGO");
		int i=0;
		for(Publicacion p:publicaciones) {
			i++;
			System.out.println(i+"-"+p.getNombre());
		}
	}

	public ArrayList<Publicacion> getPublicaciones() {
		return publicaciones;
	}

	public void setPublicaciones(ArrayList<Publicacion> publicaciones) {
		this.publicaciones = publicaciones;
	}
	
	
}
