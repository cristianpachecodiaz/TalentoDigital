<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html> 
<html> 
<head>
<meta charset="utf-8">
<title>Reporte de SVAS</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<div align="center">
	<h2>Consulta por Rut</h2>
	<form method="get" action="searchReportesvas">
		<input type="text" name="keyword" /> &nbsp;
		<input type="submit" value="Search" />
	</form>
	
</div>
<h1>Reporte de Servicios Asesorias</h1>

<table class="table table-bordered">
	<tr class="thead-dark">
		<th scope="col">Id Servicio Asesoría</th>	
		<th scope="col">Id Contrato</th>	
		<th scope="col">Descripción Servicio Asesoría</th>
		<th scope="col">Fecha Servicio Asesoría</th>
		<th scope="col">Valor Servicio Asesoría</th>
		<th scope="col">Estado de Pago</th>
		<th scope="col">Rut Cliente</th>
		<th scope="col">Nombre Cliente</th>
	</tr>
	<c:forEach items="${listReportesvas}" var="lista">
	<tr>
		<td scope="row">${lista.getIdsva()}</td>
		<td scope="row">${lista.getIdcon()}</td>
		<td scope="row">${lista.getDescsva()}</td>
		<td scope="row">${lista.getFechasva()}</td>
		<td scope="row">${lista.getValorsva()}</td>
		<td scope="row">${lista.getEstado()}</td>
		<td scope="row">${lista.getRutper()}</td>		
		<td scope="row">${lista.getNomper()}</td>
						
	</tr>
	</c:forEach>
</table>


</body>
</html>