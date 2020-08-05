package SistemaAdoptaUnPerrito;

public class Persona {
	
	public String Rut;
	public String Nombre;
	public String Apellido;
	public String Direccion;
	public String Ciudad;
	public Perro perro;

	public Persona(String rut, String nombre, String apellido, String direccion, String ciudad) {
		super();
		Rut = rut;
		Nombre = nombre;
		Apellido = apellido;
		Direccion = direccion;
		Ciudad = ciudad;
	}
}
