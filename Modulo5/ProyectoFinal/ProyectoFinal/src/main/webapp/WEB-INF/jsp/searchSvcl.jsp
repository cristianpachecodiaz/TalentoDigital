<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Busqueda de Minuta - CheckList</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<body>
<div align="center">
	<h2>Resultado de la busqueda</h2>
	<table class="table table-bordered">
	<thead class="thead-dark">
		<tr>
			<th scope="col">ID</th>
			<th scope="col">Descripción de la minuta</th>
			<th scope="col">Estado de la minuta</th>
			<th scope="col">Rut</th>

		</tr>
	</thead>
	<tbody>		
	<c:forEach items="${result}" var="lista">
	<tr> 
		<td>${lista.getIdsvcl()}</td>		
		<td>${lista.getDescsvcl()}</td>
		<td>${lista.getEstsvcl()}</td>
		<td>${lista.getPersona().getRutper()}</td>
	</tr>
	</c:forEach>
	</tbody>
</table> 
</div>

	<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
		<a href="listadoCheck">
		    <button class="btn btn-default">Volver</button>
		</a>        
      </div> 
    </div>
</body>
</html>