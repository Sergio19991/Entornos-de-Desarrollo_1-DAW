
public class Refactorizar {
	int edad;
	private String nombre;
	private String apellidos;
	private String dni;
	private int id;
	private String unidad;
	private static int generadorId = 1;

	public Refactorizar(String nombre, String apellidos, String dni, String unidad) {
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.dni = dni;
		this.unidad = unidad;
		this.id = Refactorizar.generadorId;
		Refactorizar.generadorId++;
	}

	public void sumarId(int id) {
		System.out.println(id + 1);
	}
}


