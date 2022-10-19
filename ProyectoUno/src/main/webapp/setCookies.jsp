<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>INSERTANDO LA COOKIE</p>
	<% 
	//1. RECOGER EL ELEMENTO DEL SELECT
	String deporte = request.getParameter("favorito");
	
	//2. CREO LA COOKIE (CLAVE, VALOR)
	//VER API COOKIE
	
	Cookie cookie = new Cookie("deporte_favorito", deporte);
	//3. ESTABLECER VIDA DE LA COOKIE, SIEMPRE EN SEGUNDOS
	//cookie.setMaxAge(60*60); // 60*60 <-- Una hora
	cookie.setMaxAge(5);
	//4. ENVIAR LA COOKIE
	response.addCookie(cookie);
	%>
	
	<a href="getCookies.jsp">Ver Deportes</a>
</body>
</html>