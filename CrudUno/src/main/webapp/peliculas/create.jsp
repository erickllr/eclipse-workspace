<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="nombredominio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PELÍCULAS | CREATE</title>
</head>
<body>
	<h1>PELÍCULAS CREATE</h1>
	<form method="POST" action="PeliculaController?action=create">

		<input type="hidden" name="id">
		<p>NOMBRE:</p>
		<input type="text" name="nombre"> <br>
		<p>DIRECTOR:</p>
		<input type="text" name="director"> <br>

		<button type="submit">Enviar</button>
	</form>


</body>
</html>