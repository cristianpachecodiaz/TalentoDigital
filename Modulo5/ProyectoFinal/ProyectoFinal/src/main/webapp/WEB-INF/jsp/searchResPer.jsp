<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Busqueda de Personas</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<body>
<div align="center">
	<h2>Resultado de la busqueda</h2>
	<table class="table table-bordered">
	<thead class="thead-dark">
		<tr>
			<th scope="col">Rut</th>
			<th scope="col">Nombre Persona</th>
			<th scope="col">Dirección Persona</th>
			<th scope="col">Ciudad Persona</th>
			<th scope="col">Correo Persona</th>
			<th scope="col">ID Tipo Persona</th>
		</tr>
	</thead>
	<tbody>		
	<c:forEach items="${result}" var="l">
	<tr> 
		<td scope="row">${l.getRutper()}</td>
		<td scope="row">${l.getNomper()}</td>
		<td scope="row">${l.getDirper()}</td>
		<td scope="row">${l.getCiuper()}</td>
		<td scope="row">${l.getCorreoper()}</td>
		<td scope="row">${l.getTpersona().getIdtper()}</td>
	</tr>
	</c:forEach>
	</tbody>
</table> 
</div>	
</body>
</html>