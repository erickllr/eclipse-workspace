package nombredominio.controllers;
import nombredominio.models.*;
import nombredominio.modelsDAO.*;
import jakarta.servlet.*;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;

public class AuthController extends HttpServlet {
	private static final long servialVersionUID = 1L;
	String action, acceso;
	Pelicula pelicula;
	PeliculaDAO peliculaDAO = new PeliculaDAO();
}

