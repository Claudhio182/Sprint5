package modelo;

public class Administrativo {
	
	private int admin_id;
	private String nombre;
	private String contrasena;
	private String tipo;
	
	public Administrativo() {
		super();
	}

	public Administrativo(int admin_id, String nombre, String contrasena, String tipo) {
		super();
		this.admin_id = admin_id;
		this.nombre = nombre;
		this.contrasena = contrasena;
		this.tipo = tipo;
	}

	public int getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	@Override
	public String toString() {
		return "Administrativo [admin_id=" + admin_id + ", nombre=" + nombre + ", contrasena=" + contrasena + ", tipo="
				+ tipo + "]";
	}
	
	
}




