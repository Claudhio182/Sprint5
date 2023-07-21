package implementacion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import interfaces.ICapacitacion;
import modelo.Capacitacion;

public class ImpCapacitacion implements ICapacitacion{
	
	private Connection conexion;
	
	public ImpCapacitacion(Connection conexion) {
		this.conexion = conexion;
	}

	@Override
	public List<Capacitacion> obtenerCapacitaciones() {
		Capacitacion capacitaciones = null;

		try (PreparedStatement st = conexion.prepareStatement("Select * from listacapacitaciones where usuario_id=?");
				ResultSet resultado = st.executeQuery()) {
			while (resultado.next()) {
				int id = resultado.getInt("usuario_id");
				String nombre = resultado.getString("nombre");
				String detalle = resultado.getString("detalle");
				String cantidad = resultado.getString("cantidad");

				Capacitacion capacitacion = new Capacitacion();
				capacitacion.setUsuario_id(id);
				capacitacion.setNombre(nombre);
				capacitacion.setDetalles(detalle);
				capacitacion.setCantidad(cantidad);
				
				capacitaciones.add(capacitacion);
			}
			
			} catch (SQLException e) {
			e.printStackTrace();
		}

		return (List<Capacitacion>) capacitaciones;
	}
	

	@Override
	public Capacitacion obtenerCapacitacionPorId(int id) {
		
		return null;
	}


	

}
