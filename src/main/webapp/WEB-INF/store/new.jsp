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
  <link rel="stylesheet" href="/styles/form.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>

  <div class="background"></div>

  <div class="container">
    <div class="content">
      <h2 class="logo"><i class='logo-main-content'></i> Tienda X</h2>
      <div class="text-sci">
        <h2>Bienvenido<br><span> <c:out value="${seller.firstName} ${seller.lastName}"/></span></h2>
        <p>¡Hoy es un buen día para dar a conocer tu negocio!</p>
        <div class="social-icons">
          <a href="https://www.linkedin.com/"><i class='bx bxl-linkedin' ></i></a>
          <a href="https://www.facebook.com/"><i class='bx bxl-facebook' ></i></a>
          <a href="https://www.instagram.com/"><i class='bx bxl-instagram' ></i></a>
          <a href="https://github.com/m1gu3l-d3v/marketplace/"><i class='bx bxl-github'></i></a>
        </div>
      </div>
    </div>
    <div class="logreg-box">
      <div class="form-box register">
        <form:form action="/stores/new" method="post" modelAttribute="store" class="form">
          <div>
            <h2>Crear Tienda Virtual</h2>
          </div>
          <input path="sellerId" type="hidden" name="sellerId" value="${seller.id}" id="sellerId" />

          <div class="input-group-row">
            <div class="input-box">
              <span class="icon"><i class='bx bxs-user'></i></span>
              <form:input required="required" path="name" type="text" id="name" />
              <form:errors path="name" class="text-danger" />
              <form:label path="name">Nombre de la empresa</form:label>
            </div>
          </div>

          <div class="input-group-row">
            <div class="input-box">
              <span class="icon"><i class='bx bxs-envelope'></i></span>
              <form:input required="required" path="email" type="email" id="email" />
              <form:errors path="email" class="text-danger" />
              <form:label path="email">Email de la empresa</form:label>
            </div>
            <div class="input-box">
              <span class="icon"><i class='bx bxs-envelope'></i></span>
              <form:input required="required" path="ruc" type="text" id="ruc" />
              <form:errors path="ruc" class="text-danger" />
              <form:label path="ruc">Ruc</form:label>
            </div>
          </div>

          <div class="input-group-row">
            <div class="input-box">
              <span class="icon"><i class='bx bxs-phone'></i></i></span>
              <form:input required="required" path="telephoneNumber" type="tel" id="phone" />
              <form:errors path="telephoneNumber" class="text-danger" />
              <form:label path="telephoneNumber">Teléfono</form:label>
            </div>

            <div class="input-box">
              <span class="icon"><i class='bx bxs-id-card'></i></span>
              <form:input required="required" path="ruc" type="tel" id="ruc" />
              <form:errors path="ruc" class="text-danger" />
              <form:label path="ruc">Carné de identidad</form:label>
            </div>
          </div>

          <div class="input-group-row">
            <div class="input-box">
              <span class="icon"><i class='bx bxs-lock'></i></span>
              <input required="required" path="password" type="password" id="password" />
              <label path="password">Contraseña</label>
            </div>
          </div>

          <div class="input-group-row">
            <div class="">
              <label for="department">Departamento:
                <select name="department" id="department" onchange="updateDistricts()">
                  <c:forEach items="${departments}" var="department">
                    <option value="${department.id}">${department.name}</option>
                  </c:forEach>
                </select>
              </label>
            </div>

            <div class="">
              <label for="district">Distrito:
                <select name="district" id="district">
                  <c:forEach items="${districts}" var="district">
                    <option value="${district.id}" class="${district.department.id}">${district.name}</option>
                  </c:forEach>
                </select>
              </label>
            </div>
          </div>

          <div class="remember-forgot">
            <label class="checkbox-label"><input type="checkbox" required />Estoy de acuerdo con los <a href="#"> términos y condiciones</a></label>
          </div>

          <button type="submit" class="btn">Crear</button>

          <div class="login-register">
            <p>¿Ya tienes una cuenta? <a href="#" class="login-link"> Iniciar Sesión</a></p>
          </div>
        </form:form>
      </div>

      <div class="form-box login">
        <form action="/login" method="post">
          <h2>Iniciar Sesión</h2>
          <div class="input-box">
              <span class="icon"><i class='bx bxs-envelope'></i></span>
              <input type="email" name="email" id="email" required>
              <label>Correo</label>
          </div>

          <div class="input-box">
              <span class="icon"><i class='bx bxs-lock-alt'></i></span>
              <input type="password" name="password" id="password" required>
              <label>Contraseña</label>
          </div>

          <div class="remember-forgot">
            <label class="checkbox-label"><input type="checkbox" />Recordar contraseña</label>
            <a href="#">¿Olvidaste tu contraseña?</a>
          </div>


          <button type="submit" class="btn">Sign In</button>

          <div class="login-register">
            <p>¿No tienes una cuenta? <a href="#" class="register-link">Crear cuenta nueva</a></p>
          </div>
        </form>
      </div>
    </div>
  </div>
</body>

<script>
  function updateDistricts() {
    // Obtén el departamento seleccionado
    let selectedDepartment = document.getElementById('department').value;

    // Obtén todos los distritos
    let districts = document.getElementById('district').options;

    // Muestra solo los distritos que pertenecen al departamento seleccionado
    let firstDistrict = null;
    for (let i = 0; i < districts.length; i++) {
      if (districts[i].className === selectedDepartment) {
        districts[i].style.display = 'block';
        if (!firstDistrict) {
          firstDistrict = districts[i].value;
        }
      } else {
        districts[i].style.display = 'none';
      }
    }

    // Cambia el valor del select de distritos al primer distrito del departamento seleccionado
    document.getElementById('district').value = firstDistrict;
  }

  // Actualiza los distritos cuando la página se carga por primera vez
  window.onload = function() {
    updateDistricts();
  }
</script>
<script src="/scripts/form/form.js"></script>
<script src="/scripts/form/register.js"></script>
</html>
