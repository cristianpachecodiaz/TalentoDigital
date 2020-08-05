<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Editar Visita</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Editar Visita</h2>
  
  <form:form action="saveSvvisi" method="post" modelAttribute="svvisi">
  
	<div class="form-group row">
      <label class="col-sm-2 col-form-label" for="idsvvis">ID:</label>
      <fieldset disabled>
      <p class="form-control">${svvisi.idsvvis}</p>
      </fieldset>
		<form:hidden path="idsvvis" id="idsvvis" class="form-control form-control-sm"/><br/>	
    </div>
      	
     <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="contrato">Contrato:</label>
      <form:input path="Contrato.Idcon" type="number" class="form-control form-control-sm" id="contrato" value="${svvisi.getContrato().getIdcon()}"/>
     </div>
      	
  	<div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="descsvv">Descripción:</label>
        <form:textarea path="descsvv" class="form-control form-control-sm" id="descsvv" value="${svvisi.getDescsvv()}"/>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="fechasvv">Fecha:</label>
        <form:input path="fechasvv" type="text" class="form-control form-control-sm" id="fechasvv" value="${svvisi.getFechasvv()}"/>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="horasvv">Hora:</label>
      <form:select path="horasvv" class="form-control form-control-sm" selected="${svvisi.getHorasvv()}" id="horasvv" >
	    <option value="09:00 AM - 10:00 AM">09:00 AM - 10:00 AM</option>
	    <option value="10:00 AM - 11:00 PM">10:00 AM - 11:00 PM</option>
	    <option value="11:00 AM - 12:00 PM">11:00 AM - 12:00 PM</option>
	    <option value="12:00 PM - 13:00 PM">12:00 PM - 13:00 PM</option>
	    <option value="15:00 PM - 16:00 PM">15:00 PM - 16:00 PM</option>
	    <option value="16:00 PM - 17:00 PM">16:00 PM - 17:00 PM</option>
	  </form:select>
    </div>
        
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="valorsvv">Valor:</label>
        <form:input path="valorsvv" type="number" class="form-control form-control-sm" id="valorsvv" value="${svvisi.getValorsvv()}"/>
    </div>
    
   <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="estado">Estado Pago:</label>
      <form:select path="estado" id="estado" name="estado" class="form-control form-control-sm">
	    <option value="Pagado">Pagado</option>
	    <option value="Pendiente" selected>Pendiente</option>
	  </form:select>
    </div> 
   
         <input type="submit" class="btn btn-dark" value="Guardar" />    
    
  </form:form>
  <br>
  	<a href="listaSvvisi">
		<button type="button" class="btn btn-info">Volver</button>
	</a>
</div>

</body>
</html>