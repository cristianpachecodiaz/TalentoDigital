<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Formulario Ingreso Accidentes</title>
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
  <h2 class="text-center">Formulario Ingreso de Accidentes</h2>
  <form:form action="saveFormAcc" method="post" modelAttribute="acc" class="was-validated">
  
 	 <div class="form-group row">
    	<label for="desc" class="col-sm-2 col-form-label col-form-label-lg">Descripcion</label>
		<form:input path="descacc" placeholder="Ingrese descripci�n del accidente" class="form-control form-control-sm" id="desc" required="required"/><br/>
		<div class="valid-feedback">Es v�lido.</div>
      	<div class="invalid-feedback">Por favor complete el campo.</div>
	</div>
	
	<div class="form-group row">
    <label for="rut" class="col-sm-2 col-form-label col-form-label-lg">RUT</label>
		<form:input path="Persona.Rutper" id="rut" placeholder="Ingrese Rut sin puntos ni gui�n" class="form-control form-control-sm" required="required"/><br/>
		<div class="valid-feedback">Es v�lido.</div>
      	<div class="invalid-feedback">Por favor complete el campo.</div>
	</div>
	<div class="form-group row">
    <label for="tra" class="col-sm-2 col-form-label col-form-label-lg">Trabajadores</label>
        <form:textarea path="traacc" class="form-control form-control-sm" id="tra" placeholder="Ingrese RUT y Nombre de los trabajadores." required="required"/>
        <div class="valid-feedback">Es v�lido.</div>
      	<div class="invalid-feedback">Por favor complete el campo.</div>
    </div>
		<input type="submit" class="btn btn-dark" value="Guardar" />
		<button type="reset" class="btn btn-warning">Borrar</button>
		
	</form:form>
</div>
</body>
</html>