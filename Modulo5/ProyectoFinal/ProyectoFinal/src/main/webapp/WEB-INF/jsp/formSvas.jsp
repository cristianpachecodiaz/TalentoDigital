<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario Solicitud Asesoria</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2 class="text-center">Formulario Solicitud Asesoria</h2>
  
  <form:form action="saveFormSvas" method="post" modelAttribute="svas">
  
  <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="contid">Ingrese el ID del contrato:</label>
        <form:input path="Contrato.Idcon" class="form-control form-control-sm" id="contid" name="contid" placeholder="Ingrese ID." required="required"/>
    </div>

	<div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="descsva">Descripción:</label>
        <form:input path="descsva" class="form-control form-control-sm" id="descsva" name="descsva" placeholder="Ingrese descripción." required="required"/>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="fechasvc">Fecha:</label>
        <form:input path="fechasva" type="date" class="form-control form-control-sm" id="fechasvc" name="fechasva" required="required"/>
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
    
	<form:hidden path="valorsva" value="20000"/>
	
	<div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="estado">Estado Pago:</label>
      <form:select path="estado" id="estado" name="estado" class="form-control form-control-sm">
	    <option value="Pagado">Pagado</option>
	    <option value="Pendiente" selected>Pendiente</option>
	  </form:select>
    </div> 
      
        
    <input type="submit" class="btn btn-dark" value="Guardar" />
    <button type="reset" class="btn btn-warning" >Borrar</button>
        
  </form:form>
</div>

</body>
</html>