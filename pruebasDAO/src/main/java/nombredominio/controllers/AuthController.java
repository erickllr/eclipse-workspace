package nombredominio.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import nombredominio.models.Usuario;
import nombredominio.modelsDAO.UsuarioDAO;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class AuthController
 */
public class AuthController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String action, acceso;
	
	Usuario usuario;
	UsuarioDAO usuarioDAO = new UsuarioDAO();
	
	String email, password;
	
	String login = "login.jsp";
	String home = "home.jsp";
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		action = request.getParameter("action");
		
		switch (action) {
		case "login":
			acceso = login;
			
			break;
			
		case "home":
			acceso = home;
			
			break;
			
		case "logout":
			request.getSession().removeAttribute("usuario");
			acceso = login;
			break;

		default:
			break;
		}
		
		// Lanzar la vista en funcion del action recibido
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		action = request.getParameter("action");
		
		switch (action) {
		case "login":
			/*
			 * Realizo el login de mi aplicacion
			 * */
			
			/*COMENTARIO*/
			email = request.getParameter("email");
			password = request.getParameter("password");
			
			if(usuarioDAO.validate(email, password)) {
				// Correcto, usuario existe con email y password correctos
				/* Debo guardar en sesion mi objeto Usuario con los datos correspondientes*/
				request.getSession().setAttribute("usuario", usuarioDAO.getUsuario(email, password));
				ArrayList<Usuario> usuarios = usuarioDAO.all();
				request.getSession().setAttribute("usuarios", usuarios);
				acceso = home;
			}else {
				acceso = login;
				// Al ser un error, puedo enviar un mensaje con setAttribute
			}
			break;

		default:
			break;
		}
		
		// Lanzar la vista en funcion del action recibido
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
	}

}
