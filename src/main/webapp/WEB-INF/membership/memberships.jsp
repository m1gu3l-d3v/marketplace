<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Membresías</title>
  <link rel="stylesheet" href="/styles/membership.css">
</head>
<body>
  <div class="container-main">
    <h1>Membresías</h1>
    <div class="container-memership">
      <div id="membership-one" class="membership">
        <h1>Premium Mensual</h1>
        <p class="text-primary">50,000 COP</p>
        <p class="text-secondary">*Cada mes pagas 50000 COP</p>
        <!-- <p class="h1"><c:out value="${pricePremiumMonth}"/></p> -->
        <!-- <p class="h6 text-secondary">Cada mes pagas <c:out value="${pricePremiumMonth}"/></p> -->
        <form action="memberships/premium-mensual" class="form">
          <button class="btn">Comprar</button>
        </form>
      </div>
      <div id="membership-two" class="membership">
        <h1>Premium Semestral</h1>
        <p class="text-primary">240,000 COP</p>
        <p class="text-secondary">*Cada mes pagas 40000 COP</p>
        <!-- <p class="h1"><c:out value="${pricePremiumSemiAnual}"/></p> -->
        <!-- <p class="h6 text-secondary">Cada mes pagas <c:out value="${pricePremiumSemiAnual}/6"/></p> -->
        <form action="memberships/premium-mensual" class="form">
          <button class="btn">Comprar</button>
        </form>
      </div>
      <div id="membership-three" class="membership">
        <h1>Premium Anual</h1>
        <p class="text-primary">450,000 COP</p>
        <p class="text-secondary">*Cada mes pagas 37500 COP</p>
        <!-- <p class="h1"><c:out value="${pricePremiumAnual}"/></p> -->
        <!-- <p class="h6 text-secondary">Cada mes pagas <c:out value="${pricePremiumAnual}/12"/></p> -->
        <form action="memberships/premium-mensual" class="form">
          <button class="btn">Comprar</button>
        </form>
      </div>
    </div>
  </div>
</body>
</html>