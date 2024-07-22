<%@ page isErrorPage="true" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register</title>
  <link rel="stylesheet" href="/styles/main.css">
  <link rel="stylesheet" href="/styles/elements.css">
</head>
<body>
  <form:form action="/api/clients" method="post" modelAttribute="client" class="form">
    <div class="form_front">
      <div class="form_details">Login Cliente</div>
      <div class="label_input">
        <form:label path="firstName" class="label">Nombre:</form:label>
        <form:input type="text" path="firstName" class="input" />
      </div>

      <div class="label_input">
        <form:label path="lastName" class="label">Apellido:</form:label>
        <form:input type="text" path="lastName" class="input" />
      </div>

      <div class="label_input">
        <form:label path="email" class="label">Email: </form:label>
        <form:input type="email" path="email" class="input" />
      </div>

      <div class="label_input">
        <form:label path="telephoneNumber" class="label">Número:</form:label>
        <form:input type="text" path="telephoneNumber" class="input" />
      </div>

      <div class="label_input">
        <form:label path="password" class="label">Contraseña:</form:label>
        <form:input type="password" path="password" class="input" />
      </div>

      <div class="label_input">
        <form:label path="confirmPassword" class="label">Confirmar Contraseña:</form:label>
        <form:input type="password" path="confirmPassword" class="input" />
      </div>

      <button class="btn">Register</button>
    </div>
  </form:form>
</body>
</html>