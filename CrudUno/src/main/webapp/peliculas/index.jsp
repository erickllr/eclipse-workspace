<%@page import="nombredominio.models.Pelicula"%>
<%@page import="nombredominio.modelsDAO.PeliculaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="nombredominio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX | PELICULAS</title>
</head>
<body>
	<h1>PELÍCULAS INDEX</h1>
	<a href="PeliculaController?action=create">CREATE PELICULAS</a>
	<table>
		<div class="row">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Nombre</th>
							<th scope="col">Director</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody class="table-group-divider">
						<%
						PeliculaDAO peliculaDAO = new PeliculaDAO();
						ArrayList<Pelicula> peliculas = PeliculaDAO.all();

						for (int i = 0; i < peliculas.size(); i++) {
							Pelicula pelicula = peliculas.get(i);
						%>
						<tr>
							<td><%=peliculas.getId()%></td>
							<td><%=peliculas.getNombre()%></td>
							<td><%=peliculas.getDirector()%></td>
							<td><a
								href="PeliculaController?action=edit&id=<%=peliculas.getId()%>">Edit</a>
								<a
								href="PeliculaController?action=delete&id=<%=peliculas.getId()%>">Delete</a>
							</td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
			<div class="col-lg-4"></div>
		</div>
	</table>
</body>
</html>