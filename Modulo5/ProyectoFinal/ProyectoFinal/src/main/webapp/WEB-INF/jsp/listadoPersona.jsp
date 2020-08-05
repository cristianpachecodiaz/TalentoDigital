<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html> 
<html> 
<head>
<meta charset="utf-8">
<title>Listado de Personas</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<div align="center">
	<h2>Listado de Personas</h2>
	<form method="get" action="searchPer">
		<input type="text" name="keyword" /> &nbsp;
		<input type="submit" value="Search" />
	</form>
	<h3><a href="nuevoPersona">Crear una Persona</a></h3>
</div>
<h1>Listado de Personas</h1>

<table class="table table-bordered">
	<thead class="thead-dark">
	<tr>
		<th scope="col">Rut</th>
		<th scope="col">Nombre</th>
		<th scope="col">Dirección</th>
		<th scope="col">Ciudad</th>
		<th scope="col">Correo</th>
		<th scope="col">Tipo Persona</th>
		<th scope="col">Acciones</th>
</tr>

<c:forEach items="${listaPersona}" var="lista">

<tr>
	<td scope="row">${lista.getRutper()}</td>
	<td scope="row">${lista.getNomper()}</td>
	<td scope="row">${lista.getDirper()}</td>
	<td scope="row">${lista.getCiuper()}</td>
	<td scope="row">${lista.getCorreoper()}</td>
	<td scope="row">${lista.getTpersona().getIdtper()}</td>	
	<td scope="row">
			<a href="deletePersona?rutper=${lista.getRutper()}">Eliminar</a> &nbsp;
			<a href="editPersona?rutper=${lista.getRutper()}">Editar</a> &nbsp;			
		
	</td>
	

</tr>

</c:forEach>


</table>

</body>
</html>