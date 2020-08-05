<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html> 
<html> 
<head>
<meta charset="utf-8">
<title>Listado de Accidentes</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<div align="center">
	<h2>Busqueda de Accidentes</h2>
	<form method="get" action="searchAcc">
		<div class="col-xs-6 col-xs-offset-3" align="center">
			<input type="text" class="form-control col-sm-2" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="keyword" /> &nbsp;
		</div>
		<button type="submit" class="btn btn-info">Buscar</button>
	</form>
	<br>
	<h6><a href="nuevoAcc" class="btn btn-success">Ingrese Nuevo Accidente</a></h6>
</div>
<h1>Listado de Accidentes</h1>

<div class="table-responsive-md">
<table class="table table-bordered">
	<thead class="thead-light">
		<tr>
			<th scope="col" class="text-center">ID</th>
			<th scope="col" class="text-center">Descripción</th>
			<th scope="col" class="text-center">Fecha Accidente</th>
			<th scope="col" class="text-center">Rut Cliente</th>
			<th scope="col" class="text-center">Trabajadores</th>
			<th scope="col" class="text-center">Editar</th>
			<th scope="col" class="text-center">Eliminar</th>
		</tr>
	</thead>
	
	<tbody>
	<c:forEach items="${listAcc}" var="lista">
		<tr>
			<td scope="row" class="text-center">${lista.getIdacc()}</td>		
			<td scope="row" class="text-center">${lista.getDescacc()}</td>
			<td scope="row" class="text-center">${lista.getFechaacc()}</td>
			<td scope="row" class="text-center">${lista.getPersona().getRutper()}</td>
			<td scope="row" class="text-center">${lista.getTraacc()}</td>
			<td scope="row" class="text-center">
				<a class="btn btn-warning" href="editAcc?id=${lista.getIdacc()}">Editar</a>
			</td>
			<td scope="row" class="text-center">			
				<a class="btn btn-danger" href="deleteAcc?id=${lista.getIdacc()}">Eliminar</a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
	
</table>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<a href="indexCli">
				<button class="btn btn-info">Volver</button>
			</a>
		</div>
	</div>

</div>

</body>
</html>