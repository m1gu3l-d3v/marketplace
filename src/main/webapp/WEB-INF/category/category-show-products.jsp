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
  <div class="container">
    <h2 class="title"><c:out value="${category.name}" /></h2>
    <a href="/home" class="btn btn-dark">Volver a Inicio</a>
    <div class="row row-cols-1 justify-content-center">
      <c:forEach items="${products}" var="product">
        <div class="col-3">
          <div class="card border-light prod">
            <img src="${product.linkImage}" class="card-img-top imagen-producto" alt="">
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