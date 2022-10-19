<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Mis Películas</title>
	</head>
	<body>
		<h1>AGREGA UNA PELÍCULA</h1>
		<form action="recogedatos.jsp">
			<p>NOMBRE</p>
			<input type="text" name="nombre">
			
			<p>DIRECTOR</p>
			<input type="text" name="director">
			
			<p>AÑO</p>
			<input type="text" name="anio">
			
			<p>GÉNERO</p>
			<input type="text" name="genero">
			<button type="submit">GUARDAR</button>
		</form>
	</body>
</html>