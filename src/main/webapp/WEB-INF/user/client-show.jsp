<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Perfil del Cliente</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    :root {
      --colorbg: #191724;
      --colorfg: #e0def4;
      --color1: #eb6f92;
      --color2: #9ccfd8;
      --color3: #f6c177;
      --colormain1: #ebbcba;
    }

    body {
      background-color: var(--colorbg);
      color: var(--colorfg);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .container {
      background-color: var(--colorbg);
      padding: 20px;
      border-radius: 8px;
      display: flex;
      justify-content: center;
      align-items: flex-start;
      width: 60%;
    }

    .list-group-item {
      background-color: var(--color1);
      color: var(--colorfg);
    }

    .list-group-item a {
      color: var(--colorfg);
    }

    .list-group-item a:hover {
      text-decoration: none;
    }

    .form-control {
      background-color: var(--color2);
      color: var(--colorbg);
      border: none;
    }

    .form-control:focus {
      background-color: var(--color2);
      color: var(--colorbg);
      border: none;
      box-shadow: 0 0 5px var(--colormain1);
    }

    .btn-primary {
      background-color: var(--color3);
      border: none;
    }

    .btn-primary:hover {
      background-color: var(--color3);
      border: none;
    }

    .home-icon {
      position: absolute;
      top: 10px;
      right: 10px;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="row" style="width: 100%;">
    <div class="col-md-3">
      <ul class="list-group">
        <li class="list-group-item"><a href="#">Retirar</a></li>
        <li class="list-group-item"><a href="#">Historial de saldo</a></li>
        <li class="list-group-item"><a href="#">Mis notificaciones</a></li>
        <li class="list-group-item"><a href="/logout">Cerrar sesión</a></li>
      </ul>
    </div>
    <div class="col-md-9">
      <h2>Perfil del Cliente</h2>
      <div class="form-group">
        <span>Nombre</span>
        <span class="form-control" id="name" ><c:out value="${client.firstName}" /></span>
      </div>
      <div class="form-group">
        <span>Apellido</span>
        <span class="form-control" id="lastName"><c:out value="${client.lastName}" /></span>
      </div>
      <div class="form-group">
        <span>Email</span>
        <span class="form-control" id="lastName"><c:out value="${client.email}" /></span>
      </div>
      <div class="form-group">
        <span>Número Telefónico</span>
        <span class="form-control" id="lastName"><c:out value="${client.telephoneNumber}" /></span>
      </div>
      <div class="form-group">
        <span>Carné de Identidad</span>
        <span class="form-control" id="lastName"><c:out value="${client.numberDocumentIdentity}" /></span>
      </div>
      <div class="form-group">
        <span>Estado de la cuenta</span>
        <c:if test="${client.isEnable}">
          <span class="form-control" id="lastName">Activa</span>
        </c:if>
        <c:if test="${not client.isEnable}">
          <span class="form-control" id="lastName">Inactiva</span>
        </c:if>
      </div>
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
