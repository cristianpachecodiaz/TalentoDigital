<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Crear Contrato</title>
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
  <h2 class="text-center">Crear Contrato</h2>
  
  <form:form action="saveFormContrato" method="post" modelAttribute="con" class="was-validated">
  
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="idtper">Tipo de Contrato</label>      
      	<form:select path="Tcontrato.idtcon" id="idtcon" name="idtcon" class="form-control form-control-sm" required="required">
	    	<option value="1">Base</option>
	    	<option value="2">Base + Capacitacion</option>	    
	  	</form:select>      
    </div>
      
	<div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="rutper">Rut</label>
      <form:input path="Persona.rutper" id="rutper" placeholder="Ingrese Rut sin puntos ni guión" class="form-control form-control-sm" required="required"/><br/>	
      <div class="valid-feedback">Es válido.</div>
      <div class="invalid-feedback">Por favor complete el campo.</div>
    </div>      	  	   
        
    <div class="form-group row">
      <label class="control-label col-sm-2" for="valorpag">Valor Pago</label>      
        <form:input path="valorpag" type="number" class="form-control form-control-sm" id="valorpag" placeholder="Ingrese Valor de Pago" required="required"/>
      
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="detpag">Detalle Pago</label>
      <form:input path="detpag" type="text" class="form-control form-control-sm" id="detpag" placeholder="Ingrese Detalle de Pago" required="required"/>
      <div class="valid-feedback">Es válido.</div>
      <div class="invalid-feedback">Por favor complete el campo.</div>      
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="valorextpag">Valor Extra Pago</label>      
        <form:input path="valorextpag" type="number" class="form-control form-control-sm" id="valorextpag" placeholder="Ingrese Valor Extra de Pago" required="required"/>
      
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="idtper">Estado Contrato</label>
      	<form:select path="estado" id="estado" name="estado" class="form-control">
	    	<option value="1">Activo</option>
	    	<option value="2">Inactivo</option>	    
	  	</form:select>      
    </div>   
        
        <input type="submit" class="btn btn-dark" value="Guardar" />
		<button type="reset" class="btn btn-warning">Borrar</button>
         
 </form:form>
     
</div>

</body>
</html>