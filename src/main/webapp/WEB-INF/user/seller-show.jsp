<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Perfil del Vendedor</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    .home-icon {
      position: absolute;
      top: 10px;
      right: 10px;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-md-3">
      <ul class="list-group">
        <li class="list-group-item"><a href="#">Retirar</a></li>
        <li class="list-group-item"><a href="#">Historial de saldo</a></li>
        <li class="list-group-item"><a href="#">Mis notificaciones</a></li>
        <li class="list-group-item"><a href="/logout">Cerrar sesión</a></li>
      </ul>
    </div>
    <div class="col-md-9">
      <h2>Perfil del Vendedor</h2>
      <form action="/perfil/update" method="post">
        <div class="form-group">
          <label for="name">Nombre</label>
          <input type="text" class="form-control" id="name" name="name" value="${seller.firstName}">
        </div>
        <div class="form-group">
          <label for="lastName">Apellido</label>
          <input type="text" class="form-control" id="apellido" name="lastName" value="${seller.lastName}">
        </div>
        <button type="submit" class="btn btn-primary">Guardar</button>
      </form>
      <div class="mt-3">
          <a href="/perfil">Datos</a> | 
          <a href="/perfil/password-reset">Cambio de contraseña</a> | 
          <a href="#">Notificaciones</a>
      </div>
    </div>
  </div>
</div>
<a href="/" class="home-icon">
  <img src="path/to/home-icon.png" alt="Home" style="width: 40px; height: 40px;">
</a>
</body>
</html>
