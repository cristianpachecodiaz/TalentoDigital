<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Formulario Ingreso de Capacitación</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Formulario Solicitud Capacitación</h2>
  <form:form action="saveFormSvcapa" method="post" modelAttribute="svcapa" class="was-validated">
  
  <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="contrato">Ingrese ID Contrato:</label>
        <form:input path="Contrato.Idcon" type="number" class="form-control form-control-sm" id="contrato" name="contrato" required="required"/>
    </div>

	<div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="cantsvc">Cantidad de asistentes:</label>
        <form:input path="cantsvc" type="number" class="form-control form-control-sm" id="cantsvc" name="cantsvc" required="required"/>
    </div>
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="fechasvc">Fecha:</label>
        <form:input path="fechasvc" type="date" class="form-control form-control-sm" id="fechasvc" name="fechasvc" required="required"/>
    </div>
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="horasvc">Hora:</label>
      <form:select path="horasvc" id="horasvc" name="horasvc" class="form-control form-control-sm">
	    <option value="09:00 AM - 10:00 AM">09:00 AM - 10:00 AM</option>
	    <option value="10:00 AM - 11:00 PM">10:00 AM - 11:00 PM</option>
	    <option value="11:00 AM - 12:00 PM">11:00 AM - 12:00 PM</option>
	    <option value="12:00 PM - 13:00 PM">12:00 PM - 13:00 PM</option>
	    <option value="15:00 PM - 16:00 PM">15:00 PM - 16:00 PM</option>
	    <option value="16:00 PM - 17:00 PM">16:00 PM - 17:00 PM</option>
	  </form:select>
    </div>    
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="valorsvc">Valor:</label>
        <form:input path="valorsvc" type="number" class="form-control form-control-sm" id="valorsvc" name="valorsvc" placeholder="Ingrese un valor entre 1 y 100.000" required="required"/>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="tracapa">Trabajadores:</label>
        <form:textarea path="tracapa" class="form-control form-control-sm" id="tracapa" name="tracapa" placeholder="Ingrese RUT y Nombre de los trabajadores." required="required"/>
    	    
    </div>
    
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