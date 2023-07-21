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

public class SrvLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SrvLogin() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		 //request.getRequestDispatcher("./jsp/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Obtengo los parámetros del formulario de inicio de sesión
		String usuarioId = request.getParameter("usuario_id");
		String contrasena = request.getParameter("contrasena");

		// Valido las credenciales del usuario en la base de datos
		if (validarCredenciales(usuarioId, contrasena)) {
			// Si las credenciales son válidas, creo una sesión para el usuario
			HttpSession session = request.getSession(); // aqui estamos creando una session
			// el primer argumento indica el valor en mi base de datos y el segundo indica
			// el valor que yo ingrese por jsp
			session.setAttribute("usuario_id", usuarioId); // si tienen mismo dato se validan
			session.setAttribute("tipo", obtenerTipoUsuario(usuarioId));

			if (usuarioId != null && obtenerTipoUsuario(usuarioId).equals("Profesional")) {
				response.sendRedirect("./jsp/hojaProfesional.jsp");
			} else {
				// Redirigir al usuario a la página de inicio después del inicio de sesión
				response.sendRedirect("./jsp/hojaCliente.jsp");
			}
		} else {
			// Si las credenciales no son válidas, mostrar un mensaje de error y redirigir a
			// login
			request.setAttribute("errorMensaje", "Credenciales inválidas. Inténtalo nuevamente.");
			request.getRequestDispatcher("./jsp/login.jsp").forward(request, response);
		}
	}

	// Método para validar las credenciales del usuario en la base de datos
	private boolean validarCredenciales(String usuarioId, String contrasena) {
		// Aquí realizas la conexión a la base de datos y la consulta para verificar las
		// credenciales

		try {
			// instanciar la base de datos
			Class.forName(ConexionBD.driver);
			Connection conexion = DriverManager.getConnection(ConexionBD.url, ConexionBD.user, ConexionBD.password);

			// hacemos la peticion a la base de datos para obtener sus datos
			String query = "SELECT * FROM usuarios WHERE usuario_id = ? AND contrasena = ?";

			PreparedStatement sentencia = conexion.prepareStatement(query);
			// transformamos el parametro del usuario_id en numero.
			sentencia.setInt(1, Integer.parseInt(usuarioId));
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
	private String obtenerTipoUsuario(String usuarioId) {
		// Aquí realizas la conexión a la base de datos y la consulta para obtener el
		// tipo de usuario conexión y consulta a la base de datos

		try {
			Class.forName(ConexionBD.driver);
			Connection conexion = DriverManager.getConnection(ConexionBD.url, ConexionBD.user, ConexionBD.password);

			String query = "SELECT tipo FROM usuarios WHERE usuario_id = ?";

			PreparedStatement sentencia = conexion.prepareStatement(query);
			sentencia.setInt(1, Integer.parseInt(usuarioId));
			ResultSet resultado = sentencia.executeQuery();

			String tipoUsuario = "";

			if (resultado.next()) {
				tipoUsuario = resultado.getString("tipo");
			}

			resultado.close();
			sentencia.close();
			conexion.close();

			return tipoUsuario;
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}
}
