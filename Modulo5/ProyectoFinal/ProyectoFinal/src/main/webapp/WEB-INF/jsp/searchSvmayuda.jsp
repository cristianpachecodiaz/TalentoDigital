<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Busqueda de Capacitación</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<body>
<div align="center">
	<h2>Resultado de la busqueda</h2>
	<table class="table table-bordered">
	<thead class="thead-dark">
		<tr>
			<th scope="col">ID</th>
			<th scope="col">Descripción de la solicitud</th>
			<th scope="col">Fecha Servicio</th>
			<th scope="col">Valor Servicio</th>
			<th scope="col">Duración del Servicio</th>
			<th scope="col">ID Contrato</th>
			<th scope="col">Estado - Pago de Servicio</th>
		</tr>
	</thead>
	<tbody>		
	<c:forEach items="${result}" var="lista">
	<tr> 
		<td scope="row">${lista.getIdsvm()}</td>
		<td scope="row">${lista.getDescsvm()}</td>
		<td scope="row">${lista.getFechasvm()}</td>
		<td scope="row">${lista.getValorsvm()}</td>
		<td scope="row">${lista.getDurasvm()}</td>
		<td scope="row">${lista.getContrato().getIdcon()}</td>
		<td scope="row">${lista.getEstado()}</td>
	</tr>
	</c:forEach>
	</tbody>
</table> 
</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<a href="listadoSvmayuda">
				<button class="btn btn-default">Volver</button>
			</a>
		</div>
	</div>
</body>
</html>