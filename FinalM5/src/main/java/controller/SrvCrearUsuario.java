package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import conexion.ConexionBD;

public class SrvCrearUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SrvCrearUsuario() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Class.forName(ConexionBD.driver);
		} catch (ClassNotFoundException e) {
			System.out.println("no conectado a la base de datos" + e);
		}

		try {
			//conexion a base de datos
			Connection conexion = DriverManager.getConnection(ConexionBD.url, ConexionBD.user, ConexionBD.password);
			System.out.println("conectado a la base de datos exitosamente");
			
			//sentencia
			PreparedStatement sentencia = conexion
					.prepareStatement("insert into usuarios (usuario_id, nombre, contrasena, tipo) values(?,?,?,?)");
			sentencia.setInt(1, Integer.valueOf(request.getParameter("usuario_id")));
			sentencia.setString(2, request.getParameter("nombre"));
			sentencia.setString(3, request.getParameter("contrasena"));
			sentencia.setString(4, request.getParameter("tipo"));

			int lineasAceptadas = sentencia.executeUpdate();

			if (lineasAceptadas > 0) {
				response.sendRedirect("./jsp/login.jsp");
			}

			sentencia.close();
			conexion.close();

		} catch (Exception e) {
			System.out.println("No se a agregado");
			e.printStackTrace();
		}
	}

}
