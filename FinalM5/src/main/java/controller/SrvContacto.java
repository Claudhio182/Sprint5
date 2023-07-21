package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class SrvContacto extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SrvContacto() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false); // Obtener la sesión actual, si existe

		if (session != null) {
			// La sesión existe, redireccionar al servlet de Contacto
			RequestDispatcher dispatcher = request.getRequestDispatcher("./html/contacto.jsp");
			dispatcher.forward(request, response);
		} else {
			// La sesión no existe, redireccionar al login
			response.sendRedirect("./html/login.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
