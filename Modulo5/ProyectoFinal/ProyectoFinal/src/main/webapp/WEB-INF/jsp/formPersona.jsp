<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Formulario ingreso personas</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script><!-- nuevo -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2 class="text-center">Formulario Ingreso de Personas</h2>
  <form:form action="saveFormPer" method="post" modelAttribute="per" class="was-validated">
		
	<div class="form-group row">
		<label class="col-sm-2 col-form-label col-form-label-lg" for="rutper">Rut Persona:</label>
		<form:input path="rutper" placeholder="Ingrese Rut sin puntos ni guión" class="form-control form-control-sm" required="required" /><br/>
		<div class="valid-feedback">Es válido.</div>
      	<div class="invalid-feedback">Por favor complete el campo.</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2 col-form-label col-form-label-lg" for="nomper">Nombre Persona:</label>		
		<form:input path="nomper" placeholder="Ingrese Nombre" class="form-control form-control-sm" required="required"/><br/>
		<div class="valid-feedback">Es válido.</div>
      	<div class="invalid-feedback">Por favor complete el campo.</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2 col-form-label col-form-label-lg" for="dirper">Dirección Persona:</label>		
		<form:input path="dirper" placeholder="Ingrese Dirección" class="form-control form-control-sm" required="required" /><br/>
		<div class="valid-feedback">Es válido.</div>
      	<div class="invalid-feedback">Por favor complete el campo.</div>
	</div>
    
    <div class="form-group row">
    	<label class="col-sm-2 col-form-label col-form-label-lg" for="ciuper">Ciudad Persona:</label>
		<form:input path="ciuper" placeholder="Ingrese Ciudad" class="form-control form-control-sm" required="required" /><br/>
		<div class="valid-feedback">Es válido.</div>
      	<div class="invalid-feedback">Por favor complete el campo.</div>
	</div>
	
	<div class="form-group row">
	  	<label class="col-sm-2 col-form-label col-form-label-lg" for="correoper">Correo Persona:</label>
		<form:input path="correoper" placeholder="Ingrese Correo" class="form-control form-control-sm" required="required" /><br/>
		
	</div>
	<div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="idtper">Tipo de Persona:</label>
      
      <form:select path="Tpersona.idtper" id="idtper" name="idtper" class="form-control form-control-sm" required="required">
	    <option value="1">Profesional</option>
	    <option value="2">Cliente</option>	    
	  </form:select>      
    </div> 
	
	<input type="submit" class="btn btn-dark" value="Guardar" />
	<button type="reset" class="btn btn-warning">Borrar</button>
    
	</form:form>
</div>

</body>
</html>