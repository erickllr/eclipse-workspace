<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="nombredominio.config.Conexion"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recoge Datos</title>
</head>
<body>
	<h1>INTRODUCE UNA PELÍCULA</h1>
	<p>
		Nombre:
		<%=request.getParameter("nombre")%></p>
	<p>
		Director:
		<%=request.getParameter("director")%></p>
	<p>
		Año:
		<%=request.getParameter("anio")%></p>
	<p>
		Género:
		<%=request.getParameter("genero")%></p>

	<%
	/* Enviar datos recibidos del formulario
	a mi base de datos (usuario)*/

	Conexion conexion = new Conexion();
	String sql = "INSERT INTO pelicula_tabla (nombre, director, anio, genero) VALUES ('" + request.getParameter("nombre")
			+ "', '" + request.getParameter("director") + "', " + request.getParameter("anio") + ", '"
			+ request.getParameter("genero") + "')";

	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/crudUno", "root", "");

	java.sql.Statement statement = conn.createStatement();
	statement.executeUpdate(sql);
	%>

</body>
</html>