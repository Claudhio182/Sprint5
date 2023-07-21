package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import conexion.ConexionBD;

public class SrvListarCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SrvListarCapacitacion() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName(ConexionBD.driver);
		} catch (Exception e) {
			System.out.println("no existe driver" + e);
		}
		try {
			
			int usuario_id = 0;
			String nombre = "", detalle = "", cantidad = "";

			Connection conexion = DriverManager.getConnection(ConexionBD.url, ConexionBD.user, ConexionBD.password);
			System.out.println("conexion exito");
			
			PreparedStatement sentencia = conexion.prepareStatement("select * from listacapacitaciones where usuario_id=?");
			sentencia.setInt(1, Integer.valueOf(request.getParameter("usuario_id")));
			
			ResultSet resultado = sentencia.executeQuery();
			while (resultado.next()) {
				usuario_id = resultado.getInt(1);
				nombre = resultado.getString(2);
				detalle = resultado.getString(3);
				cantidad = resultado.getString(4);

			}
			resultado.close();
			sentencia.close();
			conexion.close();

			response.sendRedirect(
					"./jsp/listaCapacitacion.jsp?usuario_id=" + usuario_id + "&nombre=" + nombre  + 
													 "&detalle=" + detalle  + "&cantidad=" + cantidad);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
