<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Formulario Ingreso Mesa de Ayuda</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Formulario Ingreso de Solicitud - Mesa de Ayuda</h2>
  <form:form action="saveFormSvmayuda" method="post" modelAttribute="svm" class="was-validated">
  
	  <div class="form-group row">
      <label class="control-label col-sm-2" for="descsvm">Descripción - Solicitud de Ayuda:</label>
      <div class="col-sm-10">
        <form:input path="descsvm" class="form-control" placeholder="Ingrese descripción de solicitud" required="required"/>
     	<div class="valid-feedback">Es válido.</div>
      	<div class="invalid-feedback">Por favor complete el campo.</div>
      </div>
    </div>
    
     <div class="form-group row">
      <label class="control-label col-sm-2" for="fechasvc">Fecha de Servicio:</label>
      <div class="col-sm-10">
        <form:input path="fechasvm" type="date" class="form-control" id="fechasvm" name="fechasvm" required="required"/>
     	<div class="valid-feedback">Es válido.</div>
      	<div class="invalid-feedback">Por favor complete el campo.</div>
      </div>
    </div>
    
     <div class="form-group row">
      <label class="control-label col-sm-2" for="valorsvm">Valor del Servicio por minuto:</label>
      <div class="col-sm-10">
      <form:select path="valorsvm" id="valorsvm" name="valorsvm" class="form-control" required="required">
      	<option value=""></option>
	    <option value="5000">0 - 15 minutos: $5.000</option>
	    <option value="10000">15 - 30 minutos: $10.000</option>
	    <option value="20000">30 - 45 minutos: $20.000</option>
	    <option value="25000">+45 minutos: $25.000</option>
	   	    
	  </form:select>
      </div>
    </div> 
    	  
	<div class="form-group row">
     
      <div class="col-sm-10">
        <form:hidden path="durasvm" value="0"/>
      </div>
    </div>
    
    <div class="form-group row">
      <label class="control-label col-sm-2" for="contrato">Contrato:</label>
      <div class="col-sm-10">
        <form:input path="Contrato.Idcon" class="form-control" id="contrato" name="contrato" placeholder="Ingrese id contrato" required="required"/>
      </div>
    </div>
    
    <div class="form-group row">
      <label class="control-label col-sm-2" for="estado">Estado de pago de la solicitud:</label>
      <div class="col-sm-10">
      <form:select path="estado" id="estado" name="estado" class="form-control" required="required">
     	<option value=""></option>
	    <option value="Pagado">Pagado</option>
	    <option value="Pendiente">Pendiente</option>
	 	   	    
	  </form:select>
      </div>
    </div> 
    
	<div class="form-group row">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Registrar</button>
        <button type="reset" class="btn btn-default">Borrar</button>
      </div>
    </div>
		
	</form:form>
</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
				<a href="listadoSvmayuda">
				<button class="btn btn-default">Volver</button>
			</a>
		</div>
	</div>


</body>
</html>