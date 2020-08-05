<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Editar Persona</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Editar Persona</h2>
  
  <form:form action="savePersona" method="post" modelAttribute="per">
  
	<div class="form-group">
      <label class="control-label col-sm-2" for="rutper">Rut Persona:</label>
      <div class="col-sm-10">
		${per.rutper} <form:hidden path="rutper" id="rutper" class="form-control"/><br/>	
      </div>   	
    </div> 	
    
  	<div class="form-group">
      <label class="control-label col-sm-2" for="nomper">Nombre Persona:</label>
      <div class="col-sm-10">
        <form:input path="nomper" class="form-control" id="nomper" value="${per.getNomper()}"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="nomper">Dirección Persona:</label>
      <div class="col-sm-10">
        <form:input path="dirper" class="form-control" id="dirper" value="${per.getDirper()}"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="nomper">Ciudad Persona:</label>
      <div class="col-sm-10">
        <form:input path="ciuper" class="form-control" id="ciuper" value="${per.getCiuper()}"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="nomper">Correo Persona:</label>
      <div class="col-sm-10">
        <form:input path="correoper" class="form-control" id="correoper" value="${per.getCorreoper()}"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="nomper">Tipo Persona:</label>
      <div class="col-sm-10">
        <form:input path="Tpersona.idtper" class="form-control" id="tpersona" value="${per.getTpersona().getIdtper()}"/>
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