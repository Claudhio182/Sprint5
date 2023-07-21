package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexion.ConexionBD;

public class SrvLoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SrvLoginAdmin() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Obtengo los parámetros del formulario de inicio de sesión
		String adminId = request.getParameter("admin_id");
		String contrasena = request.getParameter("contrasena");

		// Valido las credenciales del usuario en la base de datos
		if (validarCredenciales(adminId, contrasena)) {
			// Si las credenciales son válidas, creo una sesión para el usuario
			HttpSession session = request.getSession(); // aqui estamos creando una session
			// el primer argumento indica el valor en mi base de datos y el segundo indica
			// el valor que yo ingrese por jsp
			session.setAttribute("admin_id", adminId); // si tienen mismo dato se validan
			session.setAttribute("contrasena", obtenerContrasenaAdmin(adminId));

			System.out.println(adminId);
			System.out.println(obtenerContrasenaAdmin(adminId));
			
			if (obtenerContrasenaAdmin(adminId).equals("1234") || obtenerContrasenaAdmin(adminId).equals("12345")) {
				response.sendRedirect("./jsp/hojaAdmin.jsp");
			} else {
				// Redirigir al usuario a la página de inicio después del inicio de sesión
				response.sendRedirect("./jsp/login.jsp");
			}
		} else {
			// Si las credenciales no son válidas, mostrar un mensaje de error y redirigir a
			// login
			request.setAttribute("errorMensaje", "Credenciales inválidas. Inténtalo nuevamente.");
			request.getRequestDispatcher("./jsp/login.jsp").forward(request, response);
		}
	}

	// Método para validar las credenciales del usuario en la base de datos
	private boolean validarCredenciales(String adminId, String contrasena) {
		// Aquí realizas la conexión a la base de datos y la consulta para verificar las
		// credenciales

		try {
			// instanciar la base de datos
			Class.forName(ConexionBD.driver);
			Connection conexion = DriverManager.getConnection(ConexionBD.url, ConexionBD.user, ConexionBD.password);
			System.out.println("conectado a la base de datos exitosamente 1 ");

			// hacemos la peticion a la base de datos para obtener sus datos
			String query = "SELECT * FROM administradores WHERE admin_id = ? AND contrasena = ?";

			PreparedStatement sentencia = conexion.prepareStatement(query);
			// transformamos el parametro del usuario_id en numero.
			sentencia.setInt(1, Integer.parseInt(adminId));
			sentencia.setString(2, contrasena);
			// si es valido ,executamos la query y la guarda en una variable resultado
			ResultSet resultado = sentencia.executeQuery();
			// transforma el resultado en true o false y lo guarda en la variable
			// credencialesValidas
			boolean credencialesValidas = resultado.next();

			resultado.close();
			sentencia.close();
			conexion.close();

			return credencialesValidas;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	// Método para obtener el tipo de usuario desde la base de datos
	private String obtenerContrasenaAdmin(String adminId) {
		// Aquí realizas la conexión a la base de datos y la consulta para obtener el
		// tipo de usuario conexión y consulta a la base de datos

		try {
			Class.forName(ConexionBD.driver);
			Connection conexion = DriverManager.getConnection(ConexionBD.url, ConexionBD.user, ConexionBD.password);
			System.out.println("conectado a la base de datos exitosamente 2 ");

			String query = "SELECT contrasena FROM administradores WHERE admin_id = ?";

			PreparedStatement sentencia = conexion.prepareStatement(query);
			sentencia.setInt(1, Integer.parseInt(adminId));
			ResultSet resultado = sentencia.executeQuery();

			String contrasenaAdmin = "";

			if (resultado.next()) {
				contrasenaAdmin = resultado.getString("contrasena");
			}

			resultado.close();
			sentencia.close();
			conexion.close();
			
			System.out.println(contrasenaAdmin);
			return contrasenaAdmin;
			
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}

	}
	
}