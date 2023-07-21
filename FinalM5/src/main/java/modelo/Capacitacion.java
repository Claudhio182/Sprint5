package modelo;

public class Capacitacion {
	
	private int usuario_id;
	private String nombre;
	private String detalle;
	private String cantidad;
	
	public Capacitacion() {

	}
	public Capacitacion(int usuario_id, String nombre, String detalle, String cantidad) {
		super();
		this.usuario_id = usuario_id;
		this.nombre = nombre;
		this.detalle = detalle;
		this.cantidad = cantidad;
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
	public String getDetalles() {
		return detalle;
	}
	public void setDetalles(String detalle) {
		this.detalle = detalle;
	}
	public String getCantidad() {
		return cantidad;
	}
	public void setCantidad(String cantidad) {
		this.cantidad = cantidad;
	}
	@Override
	public String toString() {
		return "Capacitacion [usuario_id=" + usuario_id + ", nombre=" + nombre + ", detalle=" + detalle
				+ ", cantidad=" + cantidad + "]";
	}
	
	public void add(Capacitacion capacitacion) {
		// TODO Auto-generated method stub
		
	}
	
	
}
