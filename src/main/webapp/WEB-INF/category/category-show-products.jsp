<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="/styles/product.css">
  <title><c:out value="${category.name}" /></title>
</head>

<body class="bgshow">
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Logo</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <form class="d-flex" role="search">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/">Home</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Categorias
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <c:forEach items="${categoriesOne}" var="categoryOne">
                <li><a class="dropdown-item" href="/category/1/${categoryOne.id}"><c:out value="${categoryOne.name}"/></a></li>
              </c:forEach>
            </ul>
          </li>
          <c:if test="${empty user}">
            <li class="nav-item">
              <a class="nav-link" href="/login">Iniciar sesión</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/register">Registrarse</a>
            </li>
          </c:if>
          <c:if test="${not empty user}">
            <li class="nav-item">
              <a class="nav-link" href="/logout">Logout</a>
            </li>
          </c:if>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container">
    <h2 class="title"><c:out value="${category.name}" /></h2>
    <a href="/home" class="btn btn-dark">Volver a Inicio</a>
    <div class="row row-cols-1 justify-content-center">
      <c:forEach items="${products}" var="product">
        <div class="col-3">
          <div class="card border-light prod">
            <c:if test="${empty product.linkImage}">
              <img src='https://img.freepik.com/free-vector/illustration-gallery-icon_53876-27002.jpg' class="card-img-top imagen-producto" alt="">
            </c:if>
            <c:if test="${not empty product.linkImage}">
              <img src="${product.linkImage}" class="card-img-top imagen-producto" alt="">
            </c:if>
            <div class="card-header cdstore"><a class="link-dark" href="/stores/${product.store.id}"><c:out value="${product.store.name}" /></a>   </div>
            <div class="card-body">
              <h5 class="card-header"> <a href="/products/${product.id}/" style="text-decoration: none; color: var(--color15);"> <c:out value="${product.name}" /> </a> </h5>
              <p class="card-text"> <c:out value="${product.price}" />   </p>
              <p class="card-text"><a class="link-white" href="/category/3/${product.categoryThree.id}"><c:out value="${product.categoryThree.name}" /></a>  </p>
              <form id="addItem" action="/shop/add-item" method="POST">
                <input type="hidden" name="idProduct" value="${product.id}"/>
                <button class="container-icon-cart">
                  <span><i class='bx bxs-cart-add'></i></span>
                </button>
              </form>
            </div>
            <c:forEach items="${product.valorationProducts}" var="valoration"> 
              <p class="card-text btn btn-warning stars"><c:out value="${valoration.stars}" /> 4
                <span class="icon-cart"><i class='bx bx-star'></i></span>
              </p>
            </c:forEach>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</body>
</html>