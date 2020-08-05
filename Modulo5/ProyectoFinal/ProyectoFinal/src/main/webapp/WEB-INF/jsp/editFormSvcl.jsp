<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>  
<html lang="es">
<head>
  <title>Editar Minuta - CheckList</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
  <h2>Editar Minuta - CheckList</h2>
  <form:form action="saveSvcl" method="post" modelAttribute="svcl">

	<div class="form-group">
	  <label class="control-label col-sm-2" for="idsvcl">ID:</label>
	  <div class="col-sm-10">
	  ${svcl.idsvcl}
	  <form:hidden path="idsvcl" id="idsvcl" class="form-control" />
	  <br />
	  </div>
	</div>

	<div class="form-group">
      <label class="control-label col-sm-2" for="descsvcl">Descripción de los temas a tratar en la visita</label>
      <div class="col-sm-10">
        <form:input path="descsvcl" class="form-control" placeholder="Ingrese descripción de la minuta" value="${svcl.getDescsvcl()}"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="estsvcl">Estado de la minuta:</label>
      <div class="col-sm-10">
      <form:select path="estsvcl" id="estsvcl" name="estsvcl" class="form-control" value="${svcl.getEstsvcl()}">
	    <option value="Ok">Ok</option>
	    <option value="Pen">Pendiente</option>
	  </form:select>
	  
	  <div class="form-group">
      <label class="control-label col-sm-2" for="descsvcl">Ingrese su rut</label>
      <div class="col-sm-10">
        <form:input path="Persona.Rutper" class="form-control" placeholder="Ingrese rut sin puntos ni guión" value="${acc.getPersona().getRutper()}"/>
      </div>
    </div>
      </div>
    </div>
    
	<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" value="save" class="btn btn-default">Guardar cambios</button>
		<a href="#">
		    <button class="btn btn-default">Volver</button>
		</a>        
      </div> 
    </div>
		
	</form:form>
</div>


</body>
</html>