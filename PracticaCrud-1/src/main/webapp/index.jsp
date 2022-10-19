<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX PRINCIPAL</title>
<link href="./Resources/styles.css" type="text/css" rel="stylesheet">
</head>
<body>
	<h1>BIENVENIDO A TU BIBLIOTECA</h1>
	<!--  <a href="UsuariosController?action=index">Bienvenido a tu
		biblioteca</a> -->
	<!-- <a href="AuthController?action=login">Login</a> -->
	<h3>Loggeate para gestionar tus películas</h3>
	<form action="">
		<label for="email"><strong>EMAIL</strong></label> 
		<input type="text" name="email" id="email" placeholder="ejemplo@ejemplo.com"> <br> 
			<label for="password"><strong>CONTRASEÑA</strong></label>
		<input type="text" id="claveUno"
			placeholder="Contraseña" /> <br> <input
			type="submit" id="boton" value="ENVIAR">
	</form>
</body>
</html>