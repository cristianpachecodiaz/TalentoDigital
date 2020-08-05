<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Editar Asesoría</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Editar Asesoría</h2>
  
  <form:form action="saveSvas" method="post" modelAttribute="svas">
  
	<div class="form-group row">
      <label class="col-sm-2 col-form-label" for="idsva">ID:</label>
      <fieldset disabled>
      <p class="form-control">${svas.idsva}</p>
      </fieldset>
      <form:hidden path="idsva" id="idsva" class="form-control form-control-sm"/>
    </div>
      	
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="contrato">Contrato:</label>
        <form:input path="Contrato.Idcon" type="number" class="form-control form-control-sm" id="contrato" value="${svas.getContrato().getIdcon()}"/>
    </div>
    
      	
  	<div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="descsva">Descripción:</label>
      <form:textarea path="descsva" class="form-control form-control-sm" id="cantsvc" value="${svas.getDescsva()}"/>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="fechasva">Fecha:</label>
        <form:input path="fechasva" type="text" class="form-control form-control-sm" id="fechasva" value="${svas.getFechasva()}"/>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="horasva">Hora:</label>

      <form:select path="horasva" class="form-control form-control-sm" selected="${svas.getHorasva()}" id="horasva" >
	    <option value="09:00 AM - 10:00 AM">09:00 AM - 10:00 AM</option>
	    <option value="10:00 AM - 11:00 PM">10:00 AM - 11:00 PM</option>
	    <option value="11:00 AM - 12:00 PM">11:00 AM - 12:00 PM</option>
	    <option value="12:00 PM - 13:00 PM">12:00 PM - 13:00 PM</option>
	    <option value="15:00 PM - 16:00 PM">15:00 PM - 16:00 PM</option>
	    <option value="16:00 PM - 17:00 PM">16:00 PM - 17:00 PM</option>
	  </form:select>   	
    </div>
        
    <div class="form-group row">
      <label class="col-sm-2 col-form-label col-form-label-lg" for="valorsva">Valor:</label>
        <form:input path="valorsva" type="number" class="form-control form-control-sm" id="valorsva" value="${svas.getValorsva()}"/>
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
  	<a href="listaSvas">
		<button type="button" class="btn btn-info">Volver</button>
	</a>
</div>

</body>
</html>