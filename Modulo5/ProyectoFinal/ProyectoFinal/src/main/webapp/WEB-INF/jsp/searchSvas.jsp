<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Busqueda de Asesoría</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<body>

	<h2>Resultado de la busqueda</h2>
	
<div class="table-responsive-md">
<table class="table table-bordered">
	<thead class="thead-dark">
		<tr>
			<th scope="col" class="text-center">ID</th>
			<th scope="col" class="text-center">ID Contrato</th>
			<th scope="col" class="text-center">Descripción</th>
			<th scope="col" class="text-center">Fecha Servicio</th>
			<th scope="col" class="text-center">Hora Servicio</th>
			<th scope="col" class="text-center">Valor Servicio</th>
			<th scope="col" class="text-center">Estado Pago</th>
			
		</tr>
	</thead>
	<tbody>
		
	<c:forEach items="${result}" var="l">
	<tr> 
		<td scope="row" class="text-center">${l.getIdsva()}</td>
		<td scope="row" class="text-center">${l.getContrato().getIdcon()}</td>
		<td scope="row" class="text-center">${l.getDescsva()}</td>
		<td scope="row" class="text-center">${l.getFechasva()}</td>
		<td scope="row" class="text-center">${l.getHorasva()}</td>
		<td scope="row" class="text-center">${l.getValorsva()}</td>
		<td scope="row" class="text-center">${l.getEstado()}</td>

	</tr>
	</c:forEach>
	</tbody>
</table> 
<br>
  	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<a href="listaSvas">
				<button class="btn btn-info">Volver</button>
			</a>
		</div>
	</div>
	
</div>
</body>
</html>