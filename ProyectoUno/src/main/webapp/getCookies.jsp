<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String dep_favorito = null;

	// 1. LEER LA COOKIE DEL NAVEGADOR
	// Array de todas las cookies que hay
	// Pero solo me interesa la de "deporte_favorito"
	Cookie[] cookies = request.getCookies();

	// 2. Buscamos la cookie con el nombre que queremos
	// En este caso "deporte_favorito"

	// Recorremos el Array para ver todas las cookies
	if (cookies != null) {
		for (Cookie cookie_temporal : cookies) {
			if ("deporte_favorito".equals(cookie_temporal.getName()))
		;
			dep_favorito = cookie_temporal.getValue();
			out.print("UBICACIÓN: " + cookie_temporal.getPath());
		}

	} else {
		dep_favorito = "NO EXISTE";
	}
	%>

	<p>
		DEPORTE FAVORITO
		<%=dep_favorito%></p>

</body>
</html>