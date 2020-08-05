<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>reportesvas</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<body>
<div align="center">
	<h2>Resultado de la busqueda</h2>
	<table class="table table-bordered">
	<thead class="thead-dark">
	<tr class="thead-dark">
		<th scope="col">Id Servicio Asesoría</th>	
		<th scope="col">Id Contrato</th>	
		<th scope="col">Descripción Servicio Asesoría</th>
		<th scope="col">Fecha Servicio Asesoría</th>
		<th scope="col">Valor Servicio Asesoría</th>
		<th scope="col">Estado de Pago</th>
		<th scope="col">Rut Cliente</th>
		<th scope="col">Nombre Cliente</th>
	</tr>
	</thead>
	<tbody>		
	<c:forEach items="${result}" var="lista">
	<tr> 
		<td scope="row">${lista.getIdsva()}</td>
		<td scope="row">${lista.getIdcon()}</td>
		<td scope="row">${lista.getDescsva()}</td>
		<td scope="row">${lista.getFechasva()}</td>
		<td scope="row">${lista.getValorsva()}</td>
		<td scope="row">${lista.getEstado()}</td>
		<td scope="row">${lista.getRutper()}</td>		
		<td scope="row">${lista.getNomper()}</td>
	</tr>
	</c:forEach>
	</tbody>
</table> 
</div>	
</body>
</html>