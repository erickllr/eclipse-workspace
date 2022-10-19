<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="nombredominio.modelsDAO.PeliculaDAO" %>
<%@page import="nombredominio.models.Pelicula" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%!
			PeliculaDAO peliculaDAO = new PeliculaDAO();
		%>
		
		<%= peliculaDAO.buscar((request.getParameter("id"))).getDirector() %>
	</body>
</html>