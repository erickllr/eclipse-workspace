package nombredominio.controllers;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import nombredominio.models.Pelicula;
import nombredominio.modelsDAO.PeliculaDAO;

import java.io.IOException;

/**
 * Servlet implementation class PeliculaController
 */
public class PeliculaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String acceso; // Variable que distingue entre las vistas a las que tengo que redireccionar
	String action; // Variable que recibo por URLy que me enlaza con el método/vista
					// correspondiente

	Pelicula pelicula;
	PeliculaDAO peliculaDAO;

	String nombre, director, genero;
	Integer id;

	String index = "peliculas/index.jsp";
	String edit = "peliculas/edit.jsp";
	String create = "peliculas/edit.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		acceso = "";
		action = request.getParameter("action"); // valor que recojo por URL

		switch (action) {
		case "index":
			acceso = "index";
			break;

		case "create":
			acceso = "create";
			break;
		case "edit":
			// recojo el ID por el URL
			id = Integer.parseInt(request.getParameter("id"));
			
			// Envío ID recogido por URL
			request.setAttribute("id_pelicula", id);
			acceso = "edit";
			break;
		}
		
		case "delete":
			id = Integer.parseInt(request.getParameter("id"));
			peliculaDAO.delete(id);
			
			acceso = "index";
			break;
			
		default:
			break;

		// Lanzar la vista en función del del action recibido
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
