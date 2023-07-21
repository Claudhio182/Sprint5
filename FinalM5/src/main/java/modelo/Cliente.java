package modelo;

public class Cliente {
	
	private int usuario_id;
	private String nombre;
	private String contrasena;
	private String tipo;
	
	public Cliente() {
		
	}

	public Cliente(int usuario_id, String nombre, String contrasena, String tipo) {
		super();
		this.usuario_id = usuario_id;
		this.nombre = nombre;
		this.contrasena = contrasena;
		this.tipo = tipo;
	}

	public int getUsuario_id() {
		return usuario_id;
	}

	public void setUsuario_id(int usuario_id) {
		this.usuario_id = usuario_id;
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
		return "Cliente [usuario_id=" + usuario_id + ", nombre=" + nombre + ", contrasena=" + contrasena + ", tipo="
				+ tipo + "]";
	}

	
}
