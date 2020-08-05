<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html> 
<head>
<meta charset="ISO-8859-1">
<title>Listado de Capacitaciones</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>

<div align="center">
	<h2>Busqueda de Capacitaciones</h2>
	<form method="get" action="searchSvas">
		<div class="col-xs-6 col-xs-offset-3" align="center">
			<input type="text" class="form-control col-sm-2" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="keyword" /> &nbsp;
		</div>
		<button type="submit" class="btn btn-info">Buscar</button>
	</form>
	<h6><a href="nuevoSvas" class="btn btn-dark">Ingrese Nueva Capacitación</a></h6>
</div>

<h1>Listado de Capacitaciones</h1>

<div class="table-responsive-md">
<table class="table table-bordered">
	<thead class="thead-dark">
		<tr>
			<th scope="col" class="text-center">ID</th>
			<th scope="col" class="text-center">Descripción</th>
			<th scope="col" class="text-center">Fecha Servicio</th>
			<th scope="col" class="text-center">Hora Servicio</th>
			<th scope="col" class="text-center">Valor Servicio</th>
			<th scope="col" class="text-center">ID Contrato</th>
			<th scope="col" class="text-center">Editar</th>
			<th scope="col" class="text-center">Eliminar</th>			
		</tr>
	</thead>
	<tbody>
		
	<c:forEach items="${listSvas}" var="l">
	<tr> 
		<td scope="row" class="text-center">${l.getIdsva()}</td>
		<td scope="row" class="text-center">${l.getDescsva()}</td>
		<td scope="row" class="text-center">${l.getFechasva()}</td>
		<td scope="row" class="text-center">${l.getHorasva()}</td>
		<td scope="row" class="text-center">${l.getValorsva()}</td>
		<td scope="row" class="text-center">${l.getContrato().getIdcon()}</td>
		<td scope="row" class="text-center">			
			<a class="btn btn-warning" href="editSvas?id=${l.getIdsva()}">Editar</a> 
		</td> 
		<td scope="row" class="text-center">			
			<a class="btn btn-danger" href="deleteSvas?id=${l.getIdsva()}">Eliminar</a>
		</td> 
	</tr>
	</c:forEach>
	</tbody>
</table> 
</div>



</body>
</html>