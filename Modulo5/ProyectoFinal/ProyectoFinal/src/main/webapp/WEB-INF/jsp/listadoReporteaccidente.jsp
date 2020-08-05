<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html> 
<html> 
<head>
<meta charset="utf-8">
<title>Reporte de Accidentes del Mes Anterior</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<div align="center">
	<h2>Consulta por Rut</h2>
	<form method="get" action="searchReporteaccidente">
		<input type="text" name="keyword" /> &nbsp;
		<input type="submit" value="Search" />
	</form>
	
</div>
<h1>Listado de Accidentes del Mes Anterior</h1>

<table class="table table-bordered">
	<tr class="thead-dark">
		<th scope="col">Id Accidente</th>		
		<th scope="col">Descripción Accidente</th>
		<th scope="col">Fecha Accidente</th>
		<th scope="col">Trabajadores Accidente</th>
		<th scope="col">Rut Cliente</th>
		<th scope="col">Nombre Cliente</th>
	</tr>
	<c:forEach items="${listReporteaccidente}" var="lista">
	<tr>
		<td scope="row">${lista.getIdacc()}</td>
		<td scope="row">${lista.getDescacc()}</td>
		<td scope="row">${lista.getFechaacc()}</td>
		<td scope="row">${lista.getTraacc()}</td>
		<td scope="row">${lista.getRutper()}</td>		
		<td scope="row">${lista.getNomper()}</td>
						
	</tr>
	</c:forEach>
</table>


</body>
</html>