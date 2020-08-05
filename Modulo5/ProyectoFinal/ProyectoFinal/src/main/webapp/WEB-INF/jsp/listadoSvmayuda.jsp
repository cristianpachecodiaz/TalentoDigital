<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html> 
<head>
<meta charset="ISO-8859-1">
<title>Servicio Mesa de Ayuda</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>

<div align="center">
	<h2>Busqueda de Solicitud de Servicio</h2>
	<form method="get" action="searchSvmayuda">
		<input type="text" name="keyword" /> &nbsp;
		<input type="submit" value="Buscar" />
	</form>
	<h3><a href="nuevoSvmayuda">Nuevo Ingreso de Solicitud de Servicio</a></h3>
</div>

<h1>Bienvenido a la Mesa de Ayuda</h1>

<table class="table table-bordered">
	<thead class="thead-dark">
		<tr>
			<th scope="col">ID</th>
			<th scope="col">Descripción de la Solicitud</th>
			<th scope="col">Fecha Servicio</th>
			<th scope="col">Valor Servicio</th>
			<th scope="col">Duración del Servicio</th>
			<th scope="col">ID Contrato</th>
			<th scope="col">Estado - Pago de Servicio</th>
			<th scope="col">Editar</th>
			<th scope="col">Eliminar</th>			
		</tr>
	</thead>
	<tbody>
		
	<c:forEach items="${listaSvmayuda}" var="lista">
	<tr> 
		<td scope="row">${lista.getIdsvm()}</td>
		<td scope="row">${lista.getDescsvm()}</td>
		<td scope="row">${lista.getFechasvm()}</td>
		<td scope="row">${lista.getValorsvm()}</td>
		<td scope="row">${lista.getDurasvm()}</td>
		<td scope="row">${lista.getContrato().getIdcon()}</td>
		<td scope="row">${lista.getEstado()}</td>
		<td scope="row">			
			<a href="editSvmayuda?id=${lista.getIdsvm()}">Editar</a> 
		</td> 
		<td scope="row">			
			<a href="deleteSvmayuda?id=${lista.getIdsvm()}">Eliminar</a>
		</td> 
	</tr>
	</c:forEach>
	</tbody>
</table> 

<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<a href="indexAdm">
				<button class="btn btn-default">Volver</button>
			</a>
		</div>
	</div>



</body>
</html>