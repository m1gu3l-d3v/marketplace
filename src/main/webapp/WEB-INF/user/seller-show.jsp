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
  <link rel="stylesheet" href="/styles/menu.css">
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
      margin-top: 200px;
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

  <nav class="menu">
    <section class="menu_container">
      <h1 class="menu_logo">Logo</h1>
      <ul class="menu_links">
        <li id="barra">
          <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        </li>
        <li class="menu_item">
          <a href="/" class="menu_link">Home</a>
        </li>
        <li class="menu_item menu_item--show">
          <a href="#" class="menu_link">Categorias <span class="icono1"><i class='bx bx-chevrons-right' id="menu_arrow" style='color: #FFf'></i></span></a>
          <ul class="menu_nesting">
            <c:forEach items="${categoriesOne}" var="categoryOne">
              <li class="menu_inside">
                <a href="/category/1/${categoryOne.id}" class="menu_link--inside"><c:out value="${categoryOne.name}"/></a>
              </li>
            </c:forEach>
          </ul>
        </li>
        <c:if test="${empty user}">
          <li class="menu_item">
            <a href="/login" class="menu_link">Iniciar sesión</a>
          </li>
          <li class="menu_item">
            <a href="/register" class="menu_link">Registrarse</a>
          </li>
        </c:if>
        <c:if test="${not empty user}">
          <li class="menu_item">
            <a href="/logout" class="menu_link">Logout</a>
          </li>
        </c:if>
      </ul>
      <div class="menu_hamburguer">
        <i class='bx bx-align-justify' id="menu_img" style='color:#ffffff'></i>
      </div>
    </section>
  </nav>

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
      <h2>Perfil del Vendedor</h2>
      <div class="form-group">
        <span>Nombre</span>
        <span class="form-control" id="name" ><c:out value="${seller.firstName}" /></span>
      </div>
      <div class="form-group">
        <span>Apellido</span>
        <span class="form-control" id="lastName"><c:out value="${seller.lastName}" /></span>
      </div>
      <div class="form-group">
        <span>Email</span>
        <span class="form-control" id="lastName"><c:out value="${seller.email}" /></span>
      </div>
      <div class="form-group">
        <span>Tienda Asociada</span>
        <span class="form-control" id="lastName"><c:out value="${seller.store.name}" /></span>
      </div>store
      <div class="form-group">
        <span>Número Telefónico</span>
        <span class="form-control" id="lastName"><c:out value="${seller.telephoneNumber}" /></span>
      </div>
      <div class="form-group">
        <span>Carné de Identidad</span>
        <span class="form-control" id="lastName"><c:out value="${seller.numberDocumentIdentity}" /></span>
      </div>
      <div class="form-group">
        <span>Estado de la cuenta</span>
        <c:if test="${seller.isEnable}">
          <span class="form-control" id="lastName">Activa</span>
        </c:if>
        <c:if test="${not seller.isEnable}">
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
