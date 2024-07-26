<%@ page isErrorPage="true" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Crear Tienda</title>
  <link rel="stylesheet" href="/styles/main.css">
  <link rel="stylesheet" href="/styles/show.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
  <span class="main_bg"></span>
  <div class="container">
    <section class="userProfile card">
      <div class="profile">
        <figure><img src="" alt="profile" width="250px" height="250px"></figure>
      </div>
    </section>
    <section class="work_skills card">
      <div class="work">
        <h1 class="heading">work</h1>
        <div class="primary">
          <h1>Empresa Latinoamericana</h1>
          <span>Primary</span>
          <p><c:out value="${direction}"/> <br> direction ..</p>
        </div>
        <div class="primary">
          <h1>Vendedor Principal</h1>
          <span>Primary</span>
          <p><c:out value="${direction}"/> <br> <a href="/sellers/${seller.id}"><c:out value="${seller.firstName} ${seller.lastName}"/></a> ..</p>
        </div>
      </div>
      <div class="Categoria">
        <h1 class="heading">Categoria</h1>
        <ul>
          <li style="--i:0"><c:out value="${store.categoryOne.name}"/></li>
        </ul>
      </div>
    </section>
    <section class="userDetails card">
      <div class="userName">
        <h1 class="name"><c:out value="${store.name}"/></h1></h1>
        <div class="map">
          <i class="ri-map-pin-fill ri"></i>
          <span>New York, NY</span>
        </div>
        <p>Empresa del rubro de Designer</p>
      </div>
      <div class="rank">
        <h1 class="heading">Rankings</h1>
        <span>8,6</span>
        <div class="rating">
          <i class="ri-star-fill rate"></i>
          <i class="ri-star-fill rate"></i>
          <i class="ri-star-fill rate"></i>
          <i class="ri-star-fill rate"></i>
          <i class="ri-star-fill rate underrate"></i>
        </div>
      </div>
      <div class="btns">
        <ul>
          <li class="sendMsg">
            <i class="ri-chat-4-fill ri"></i>
            <a href="#">Enviar Mensaje</a>
          </li>
          <li class="sendMsg active">
            <i class="ri-check-fill ri"></i>
            <a href="#">Contactos</a>
          </li>
          <li class="sendMsg">
            <a href="#">Reportar Empresa</a>
          </li>
        </ul>
      </div>
    </section>
    <section class="timeline_about card">
      <div class="tabs">
        <ul>
          <li class="timeline">
            <i class="ri-eye-fill ri"></i>
            <span>Etc</span>
          </li>
          <li class="about active">
            <i class="ri-user-3-fill ri"></i>
            <span>About</span>
          </li>
        </ul>
      </div>
      <div class="contact_Info">
        <h1 class="heading">Informacion de Contacto</h1>
        <ul>
          <li class="address">
            <h1 class="label">Dirección:</h1>
            <span class="info">S34 E 65th Street <br> New York, NY 10651-78 156-187-60</span>
          </li>
          <li class="email">
            <h1 class="label">E-mail:</h1>
            <span class="info"><c:out value="${store.email}"/></span>
          </li>
          <li class="site">
            <h1 class="label">Site:</h1>
            <span class="info">www.rsmarquetech.com</span>
          </li>
        </ul>
      </div>
      <div class="basic_info">
        <h1 class="heading">Basic Information</h1>
        <ul>
          <li class="number">
            <h1 class="label">Teléfono:</h1>
            <span class="info"><c:out value="${store.telephoneNumber}"/></span>
          </li>
          <li class="ruc">
            <h1 class="label">RUC:</h1>
            <span class="info"><c:out value="${store.ruc}"/></span>
          </li>
        </ul>
      </div>
    </section>
  </div>
</body>

</html>