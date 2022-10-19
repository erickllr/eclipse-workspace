<%@page import="nombredominio.models.Pelicula"%>
<%@page import="nombredominio.modelsDAO.PeliculaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PELICULAS | EDIT</title>
</head>
<body>
	<h1>PELÍCULAS EDIT</h1>
	<%
	PeliculaDAO peliculaDAO = new PeliculaDAO();
	int id = Integer.parseInt(request.getAttribute("id_pelicula").toString());
	Pelicula pelicula = new Pelicula();
	pelicula = peliculaDAO.find(id);
	%>

	<form method="POST" action="PeliculaController?action=update">
		<input type="hidden" name="id" value="<%=pelicula.getId()%>">
		<p>NOMBRE:</p>
		<input type="text" name="nombre" value="<%=pelicula.getNombre()%>">
		<br>
		<p>DIRECTOR:</p>
		<input type="text" name="director" value="<%=pelicula.getDirector()%>">
		<br>
		<button type="submit">Actualizar</button>
	</form>

</body>
</html>