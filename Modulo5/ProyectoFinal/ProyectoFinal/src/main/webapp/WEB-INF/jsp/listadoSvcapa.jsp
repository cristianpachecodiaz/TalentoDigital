<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html> 
<head>
<meta charset="ISO-8859-1">
<title>Listado de Capacitaciones</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   </head>
<body>

<div align="center">
	<h2>Búsqueda de Capacitaciones</h2>
	<form method="get" action="searchSvcapa">
		<div class="col-xs-6 col-xs-offset-3" align="center">
			<input type="text" class="form-control col-sm-2" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="keyword" /> &nbsp;
		</div>
		<input type="submit" class="btn btn-info" value="Buscar" />
	</form>
	<h6><a href="nuevoSvcapa" class="btn btn-dark">Nueva Capacitación</a></h6>
</div>

<h1>Listado de Capacitaciones</h1>

<div class="table-responsive-md">
<table class="table table-bordered">
	<thead class="thead-dark">
		<tr>
			<th scope="col" class="text-center">ID</th>
			<th scope="col" class="text-center">ID Contrato</th>
			<th scope="col" class="text-center">Cant Asistentes</th>
			<th scope="col" class="text-center">Fecha Servicio</th>
			<th scope="col" class="text-center">Hora Servicio</th>
			<th scope="col" class="text-center">Valor Servicio</th>
			<th scope="col" class="text-center">Trabajadores</th>
			<th scope="col" class="text-center">Estado Pago</th>
			<th scope="col" class="text-center">Editar</th>
			<th scope="col" class="text-center">Eliminar</th>			
		</tr>
	</thead>
	<tbody>
		
	<c:forEach items="${listSvcapa}" var="l">
	<tr> 
		<td scope="row" class="text-center">${l.getIdsvc()}</td>
		<td scope="row" class="text-center">${l.getContrato().getIdcon()}</td>
		<td scope="row" class="text-center">${l.getCantsvc()}</td>
		<td scope="row" class="text-center">${l.getFechasvc()}</td>
		<td scope="row" class="text-center">${l.getHorasvc()}</td>
		<td scope="row" class="text-center">${l.getValorsvc()}</td>
		<td scope="row" class="text-center">${l.getTracapa()}</td>
		<td scope="row" class="text-center">${l.getEstado()}</td>
		<td scope="row" class="text-center">			
			<a class="btn btn-warning" href="editSvcapa?id=${l.getIdsvc()}">Editar</a> 
		</td> 
		<td scope="row" class="text-center">			
			<a class="btn btn-danger" href="deleteSvcapa?id=${l.getIdsvc()}">Eliminar</a>
		</td> 
	</tr>
	</c:forEach>
	</tbody>
</table> 

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<a href="indexPro">
				<button class="btn btn-info">Volver</button>
			</a>
		</div>
	</div>

</div>

</body>
</html>