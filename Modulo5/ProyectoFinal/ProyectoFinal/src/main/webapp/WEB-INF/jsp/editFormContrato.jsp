<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Editar Contrato</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Editar Contrato</h2>
  
  <form:form action="saveContrato" method="post" modelAttribute="con">
  <div class="form-group">
      <label class="control-label col-sm-2" for="idsvc">ID Contrato:</label>
      <div class="col-sm-10">
		${con.idcon} <form:hidden path="idcon" id="idcon" class="form-control"/><br/>	
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="tcontrato">Tipo de Contrato:</label>
      <div class="col-sm-10">
      	<form:input path="Tcontrato.idtcon" id="tcontrato" name="tcontrato" value="${con.getTcontrato().getIdtcon()}" class="form-control"/>
	    	
      </div>
    </div>
      
	<div class="form-group">
      <label class="control-label col-sm-2" for="persona">Rut:</label>
      <div class="col-sm-10">
		<form:input path="Persona.rutper" id="persona" value="${con.getPersona().getRutper()}" class="form-control"/><br/>	
      </div>
    </div>      	  	   
        
    <div class="form-group">
      <label class="control-label col-sm-2" for="valorpag">Valor Pago:</label>
      <div class="col-sm-10">
        <form:input path="valorpag" type="number" class="form-control" id="valorpag" value="${con.getValorpag()}"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="detpag">Detalle Pago:</label>
      <div class="col-sm-10">
        <form:input path="detpag" type="text" class="form-control" id="detpag" value="${con.getDetpag()}"/>
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="valorextpag">Valor Extra Pago:</label>
      <div class="col-sm-10">
        <form:input path="valorextpag" type="number" class="form-control" id="valorextpag" value="${con.getValorextpag()}"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="estado">Estado Contrato:</label>
      <div class="col-sm-10">
      	<form:input path="estado" id="estado" name="estado" value="${con.getEstado()}" class="form-control"/>
	    	
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