<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Formulario Ingreso Minutas - CheckList</title>
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
  <h2 class="text-center">Formulario Ingreso de Minuta</h2>
  <form:form action="saveFormSvcl" method="post" modelAttribute="svcl" class="was-validated">
  
	<div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="descsvcl">Descripción minuta</label>
      <form:input path="descsvcl" class="form-control form-control-sml" placeholder="Ingrese descripción de la minuta" required="required"/><br/>      
      <div class="valid-feedback">Es válido.</div>
      <div class="invalid-feedback">Por favor complete el campo.</div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="estsvcl">Estado minuta</label>
      <form:select path="estsvcl" id="estsvcl" name="estsvcl" class="form-control form-control-sml" required="required"><br/>
	    <option value="Ok">Ok</option>
	    <option value="Pen">Pendiente</option>
	  </form:select>
	</div>
	  
	<div class="form-group row">
      <label for="rut" class="col-sm-2 col-form-label col-form-label-lg">RUT</label>
		<form:input path="Persona.Rutper" id="rut" placeholder="Ingrese Rut sin puntos ni guión" class="form-control form-control-sm" required="required"/><br/>
		<div class="valid-feedback">Es válido.</div>
      	<div class="invalid-feedback">Por favor complete el campo.</div>
	</div>
    	<input type="submit" class="btn btn-dark" value="Guardar" />
		<button type="reset" class="btn btn-warning">Borrar</button>	
		
	</form:form>
</div>
</body>
</html>