<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario Solicitud Asesoria Especial</title>
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
  <h2>Formulario Solicitud Asesoria Especial</h2>
  <form:form action="saveFormSvas1" method="post" modelAttribute="svas" class="was-validated">

	<div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="descsva">Descripción:</label>
        <form:input path="descsva" class="form-control form-control-sm" id="descsva" name="descsva" placeholder="Ingrese descripción." required="required"/>
        <div class="valid-feedback">Es válido.</div>
      	<div class="invalid-feedback">Por favor complete el campo.</div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="fechasva">Fecha:</label>
        <form:input path="fechasva" type="date" class="form-control form-control-sm" id="fechasva" name="fechasva" required="required"/>
    	<div class="valid-feedback">Es válido.</div>
      	<div class="invalid-feedback">Por favor complete el campo.</div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="horasva">Hora:</label>
      <form:select path="horasva" id="horasva" name="horasva" class="form-control form-control-sm">
	    <option value="09:00 AM - 10:00 AM">09:00 AM - 10:00 AM</option>
	    <option value="10:00 AM - 11:00 PM">10:00 AM - 11:00 PM</option>
	    <option value="11:00 AM - 12:00 PM">11:00 AM - 12:00 PM</option>
	    <option value="12:00 PM - 13:00 PM">12:00 PM - 13:00 PM</option>
	    <option value="15:00 PM - 16:00 PM">15:00 PM - 16:00 PM</option>
	    <option value="16:00 PM - 17:00 PM">16:00 PM - 17:00 PM</option>
	  </form:select>
    </div>    
    
	<form:hidden path="valorsva" value="50000"/>
   	<form:hidden path="estado" value="Pendiente"/>
    
      
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="contid">ID del contrato:</label>
        <form:input path="Contrato.Idcon" class="form-control form-control-sm" id="contid" name="contid" placeholder="Ingrese ID indicado en la parte SUP. del contrato" required="required"/>
    </div>
		<input type="submit" class="btn btn-dark" value="Guardar" />
		<button type="reset" class="btn btn-warning">Borrar</button>


  </form:form>
</div>

</body>
</html>