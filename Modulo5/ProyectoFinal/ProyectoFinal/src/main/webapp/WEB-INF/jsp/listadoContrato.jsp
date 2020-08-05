<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html> 
<head>
<meta charset="ISO-8859-1">
<title>Listado de Contrato</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>

<div align="center">
	<h2>Búsqueda de Contratos</h2>
	<form method="get" action="searchContrato">
		<input type="text" name="keyword" /> &nbsp;
		<input type="submit" value="Buscar" />
	</form>
	<h3><a href="nuevoContrato">Nuevo Contrato</a></h3>
</div>

<h1>Listado de Contratos</h1>

<table class="table table-bordered">
	<thead class="thead-dark">
		<tr>
			<th scope="col">ID Contrato</th>
			<th scope="col">Rut Persona</th>
			<th scope="col">Valor Pago</th>
			<th scope="col">Detalle Pago</th>
			<th scope="col">Valor Extra Pago</th>
			<th scope="col">Estado Contrato</th>
			<th scope="col">Editar</th>
			<th scope="col">Eliminar</th>			
		</tr>
	</thead>
	<tbody>
		
	<c:forEach items="${listContrato}" var="l">
	<tr> 
		<td scope="row">${l.getIdcon()}</td>
		<td scope="row">${l.getPersona().getRutper()}</td>
		<td scope="row">${l.getValorpag()}</td>
		<td scope="row">${l.getDetpag()}</td>
		<td scope="row">${l.getValorextpag()}</td>
		<td scope="row">${l.getEstado()}</td>
		<td scope="row">			
			<a href="editContrato?id=${l.getIdcon()}">Editar</a> 
		</td> 
		<td scope="row">			
			<a href="deleteContrato?id=${l.getIdcon()}">Eliminar</a>
		</td> 
	</tr>
	</c:forEach>
	</tbody>
</table> 



</body>
</html>