<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Comprar Membresía</title>
  <link rel="stylesheet" href="/styles/membership-buy.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
  <div class="container-main">
    <div class="container-welcome">
      <h1 class="logo"><i class='logo-main-content'></i> Tienda X</h1>

        <c:set var="monthlyPrice" value="${membership.price / membership.months}" />
        <div class="membership">
          <h1 class="membership-title"><c:out value="${membership.name}"/></h1>
          <p class="text-primary"><c:out value="${membership.price}"/> COP</p>
          <p class="text-secondary">*Cada mes pagas <c:out value="${monthlyPrice}" /> COP</p>
        </div>
      <div class="text-sci">
        <h2 class="title-2">Bienvenido<br><span> <c:out value="${seller.firstName} ${seller.lastName}"/></span></h2>
        <p>¡Hoy es un buen día para dar a conocer tu negocio!</p>
        <div class="social-icons">
          <a href="https://www.linkedin.com/"><i class='bx bxl-linkedin' ></i></a>
          <a href="https://www.facebook.com/"><i class='bx bxl-facebook' ></i></a>
          <a href="https://www.instagram.com/"><i class='bx bxl-instagram' ></i></a>
          <a href="https://github.com/m1gu3l-d3v/marketplace/"><i class='bx bxl-github'></i></a>
        </div>
      </div>
    </div>
    <div class="container-form">
      <form action="/memberships/id" method="post" class="form">
        <div>
          <h2 class="title-2">Selecciona el método de pago</h2>
        </div>
        <div class="input-group-row">
          <div class="input-box">
            <input class="input" type="text" required>
            <label class="label-input">
              <span class="text-name">Titular de la Tarjeta</span>
            </label>
          </div>
          <div class="input-box">
            <input class="input" type="number" required>
            <label class="label-input">
              <span class="text-name">Número de Tarjeta</span>
            </label>
          </div>
        </div>
        <div class="input-group-row">
          <div class="input-box">
            <input class="input expiration" type="number" min="1" max="12" required>
            <label class="label-input">
              <span class="text-name">Exp. Month</span>
            </label>
          </div>
          <div class="input-box">
            <input class="input expiration" type="number" min="00" max="99" required>
            <label class="label-input">
              <span class="text-name">Exp. Year</span>
            </label>
          </div>
        </div>
        <div class="input-group-row">
          <div class="input-box">
            <input class="input" type="number" required>
            <label class="label-input">
              <span class="text-name">CVC</span>
            </label>
          </div>
        </div>
        <button class="btn">Enviar</button>
      </form>
    </div>
  </div>
</body>
<script>
  document.querySelectorAll('.input-box input').forEach(input => {
    function checkContent() {
      if (input.value.trim() !== '') {
        input.classList.add('has-content');
      } else {
        input.classList.remove('has-content');
      }
    }
    input.addEventListener('input', checkContent);
    checkContent();
  });
</script>
</html>