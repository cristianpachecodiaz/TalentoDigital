<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Index CoffeeJava</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>


<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">No más Accidentabilidad - CoffeeJava</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/ProyectoFinal">Home</a></li>
      <li><a href="indexAdm">Acceso Admin</a></li>
      <li><a href="indexCli">Acceso Cliente</a></li>
      <li><a href="indexPro">Acceso Profesional</a></li>
       <li><a href="listadoposts">Aplicación JSON</a></li>
      
    </ul>
  </div>  
</nav>
<div class="container">

 <img class="rounded float-left" alt="Responsive image" src="${pageContext.request.contextPath}/resources/img/3.png" width="75%">  
</div>
