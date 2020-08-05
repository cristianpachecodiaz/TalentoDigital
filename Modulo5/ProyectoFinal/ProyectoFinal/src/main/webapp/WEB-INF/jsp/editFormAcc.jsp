<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>  
<html lang="es">
<head>
<title>Editar Accidente</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<h1>Editar Accidente</h1>

  <form:form action="saveAcc" method="post"  modelAttribute="acc">
	
	<div class="form-group">
      <div class="col-sm-10">
		Id Accidente: ${acc.idacc} <form:hidden path="idacc" id="idacc" class="form-control"/><br/>	
      </div>   	
    </div> 
    <div class="form-group">
      <div class="col-sm-10">
		Fecha Accidente: ${acc.getFechaacc()}<form:hidden path="fechaacc" id="fechaacc" class="form-control" /><br/>
      </div>   	
    </div>	
    <div class="form-group">
      <div class="col-sm-10">
		Rut Cliente: ${acc.getPersona().getRutper()}<form:hidden path="Persona.Rutper" id="rutper" class="form-control"/><br/><br/>	
      </div>   	
    </div>
	<div class="form-group">
      <div class="col-sm-10">
       Descripción Accidente: <form:input path="descacc" class="form-control" id="descacc" value="${acc.getDescacc()}"/><br/>
      </div>
    </div>		
	<div class="form-group">
      <div class="col-sm-10">
       Trabajadores: <form:textarea path="traacc" class="form-control" id="traacc" value="${acc.getTraacc()}"/><br/>
      </div>
    </div>		
	
	<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" value="save" class="btn btn-default">Guardar cambios</button>
		<a href="#">
		    <button class="btn btn-default">Volver</button>
		</a>        
      </div> 	
     </div>
     
	</form:form>
  </div>
</body>
</html>