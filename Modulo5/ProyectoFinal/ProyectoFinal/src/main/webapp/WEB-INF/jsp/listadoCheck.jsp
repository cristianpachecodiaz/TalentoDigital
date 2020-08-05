<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html> 
<html> 
<head>
<meta charset="utf-8">
<title>Minutas - CheckList</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<div align="center">
	<h2>Búsqueda de Minuta</h2>
	<form method="get" action="searchSvcl">
		<input type="text" name="keyword" /> &nbsp;
		<input type="submit" value="Search" />
	</form>
	<h3><a href="nuevoSvcl">Nueva Minuta</a></h3>
</div>
<h1>Registro de minuta para organizar visita</h1>

<table class="table table-bordered">
	<thead class="thead-dark">
		<tr>
			<th scope="col">ID</th>
			<th scope="col">Descripción de los temas a tratar en la visita</th>
			<th scope="col">Estado de la minuta</th>
			<th scope="col">Ingrese su rut</th>
			<th scope="col">Editar</th>
			<th scope="col">Eliminar</th>			
		</tr>
	</thead>
	<tbody>
		
	<c:forEach items="${listaSvcl}" var="lista">
	<tr> 
		<td>${lista.getIdsvcl()}</td>		
		<td>${lista.getDescsvcl()}</td>
		<td>${lista.getEstsvcl()}</td>
		<td>${lista.getPersona().getRutper()}</td>
		<td scope="row">			
			<a href="editSvcl?id=${lista.getIdsvcl()}">Editar</a> 
		</td> 
		<td scope="row">			
			<a href="deleteSvcl?id=${lista.getIdsvcl()}">Eliminar</a>
		</td> 
	</tr>
	</c:forEach>
	</tbody>
</table> 

	<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
		<a href="indexPro">
		    <button class="btn btn-default">Volver</button>
		</a>        
      </div> 
    </div>

</body>
</html>