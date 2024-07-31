<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="/styles/product.css">
  <title>Products</title>
</head>

<body class="bgshow">
  <div class="container">
    <h2 > Tus Productos  </h2>
    <a href="/products/new" class="btn btn-dark "> Crea un nuevo Producto </a>
    <div class="row row-cols-1 justify-content-center">
      <c:forEach items="${productos}" var="product">
        <div class="col-3">
          <div class="card border-light prod">
            <img src="${product.linkImage}" class="card-img-top imagen-producto" alt="">
            <!-- <img src="https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg" class="card-img-top imagen-producto" alt=""> -->
            <div class="card-header cdstore"> <c:out value="${product.store.name}" />  </div>
            <div class="card-body">
              <h5 class="card-header"> <a href="/products/${product.id}/" style="text-decoration: none; color: var(--color15);"> <c:out value="${product.name}" /> </a> </h5>
              <p class="card-text"> <c:out value="${product.price}" />   </p>
              <p class="card-text"><c:out value="${product.categoryThree.name}" />  </p>
            </div>
            <c:forEach items="${product.valorationProducts}" var="valoration"> 
              <p class="card-text btn btn-warning stars"><c:out value="${valoration.stars}" /> 4
                <span class="icon"><i class='bx bx-star'></i></span>
              </p>
            </c:forEach>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</body>
</html>
