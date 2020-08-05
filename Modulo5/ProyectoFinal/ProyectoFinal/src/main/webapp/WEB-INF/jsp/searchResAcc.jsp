<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Resultado Acc</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<div align="center">
	<h2>Resultado de la búsqueda</h2>
	<table class="table table-bordered">
	<thead class="thead-dark">
		<tr>
			<th scope="col">ID</th>
			<th scope="col">Descripción</th>
			<th scope="col">Fecha</th>
			<th scope="col">Rut Cliente</th>
		</tr>
		<c:forEach items="${result}" var="acc">
		<tr>
			<td scope="row">${acc.getIdacc()}</td>
			<td scope="row">${acc.getDescacc()}</td>
			<td scope="row">${acc.getFechaacc()}</td>
			<td scope="row">${acc.getPersona().getRutper()}</td>
		</tr>
		</c:forEach>
	</table>
</div>	
</body>
</html>