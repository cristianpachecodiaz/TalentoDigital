<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>  
<html lang="es">
<head>
  <title>Editar Ingreso de Solicitud - Mesa de Ayuda</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Editar Ingreso de Solicitud - Mesa de Ayuda</h2>
  <form:form action="saveFormSvmayuda" class="form-horizontal" method="post" modelAttribute="svm">

	<div class="form-group">
	  <label class="control-label col-sm-2" for="idsvm">ID:</label>
	  <div class="col-sm-10">
	  ${svm.idsvm}
	  <form:hidden path="idsvm" id="idsvm" class="form-control" />
	  <br />
	  </div>
	</div>

	<div class="form-group">
      <label class="control-label col-sm-2" for="descsvm">Descripción - Solicitud de Ayuda</label>
      <div class="col-sm-10">
        <form:input path="descsvm" class="form-control" placeholder="Ingrese descripción de la minuta" value="${svm.getDescsvm()}"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="fechasvm">Fecha</label>
      <div class="col-sm-10">
        <form:input path="fechasvm" type="text" class="form-control" id="fechasvm" value="${svm.getFechasvm()}"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="valorsvm">Valor del Servicio por minuto:</label>
      <div class="col-sm-10">
      <form:select path="valorsvm" class="form-control" selected="${svm.getValorsvm()}">
     	<option value=""></option>
	    <option value="5000">0 - 15 minutos: $5.000</option>
	    <option value="10000">15 - 30 minutos: $10.000</option>
	    <option value="20000">30 - 45 minutos: $20.000</option>
	    <option value="25000">+45 minutos: $25.000</option>
	  </form:select>
      </div>
    </div> 
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="durasvm">Duración del Servicio</label>
      <div class="col-sm-10">
        <form:hidden path="durasvm" value="0"/>
      </div>
    </div>
      
    <div class="form-group">
      <label class="control-label col-sm-2" for="contrato">Contrato</label>
      <div class="col-sm-10">
        <form:input path="Contrato.Idcon" class="form-control" id="contrato" value="${svm.getContrato().getIdcon()}"/>
      </div>
    </div>
    
      <div class="form-group">
      <label class="control-label col-sm-2" for="estado">Estado de pago de la solicitud:</label>
      <div class="col-sm-10">
      <form:select path="estado" class="form-control" selected="${svm.getEstado()}">
      	<option value=""></option>
	    <option value="Pagado">Pagado</option>
	    <option value="Pendiente">Pendiente</option>
	 	   	    
	  </form:select>
      </div>
    </div> 
    
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" value="save" class="btn btn-default">Guardar cambios</button>
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