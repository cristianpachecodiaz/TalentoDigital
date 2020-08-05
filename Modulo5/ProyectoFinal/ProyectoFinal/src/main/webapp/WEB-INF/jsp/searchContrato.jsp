<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Busqueda de Contratos</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<body>
<div align="center">
	<h2>Resultado de la búsqueda</h2>
	<table class="table table-bordered">
	<thead class="thead-dark">
		<tr>
			<th scope="col">ID Contrato</th>
			<th scope="col">ID Tcontrato</th>
			<th scope="col">Rut Persona</th>
			<th scope="col">Valor Pago</th>
			<th scope="col">Detalle Pago</th>
			<th scope="col">Valor Ext Pago</th>
			<th scope="col">Estado Contrato</th>
		</tr>
	</thead>
	<tbody>		
	<c:forEach items="${result}" var="l">
	<tr> 
		<td scope="row">${l.getIdcon()}</td>
		<td scope="row">${l.getTcontrato().getIdtcon()}</td>
		<td scope="row">${l.getPersona().getRutper()}</td>
		<td scope="row">${l.getValorpag()}</td>
		<td scope="row">${l.getDetpag()}</td>
		<td scope="row">${l.getValorextpag()}</td>
		<td scope="row">${l.getEstado()}</td>
	</tr>
	</c:forEach>
	</tbody>
</table> 
</div>	
</body>
</html>