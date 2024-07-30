<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Crear Tienda</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="/styles/product.css">
</head>

<body class="bgshow">
  <div class="row"> 
    <div class="col-6"> 
      <img src="" class="img-fluid rounded-start imgshow" alt="..." >
      <img src="https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg" class="img-fluid rounded-start imgshow" alt="..." >
    </div>
      <div class="col-6 "> 
        <a href="/products" class="btn btn-outline-dark my-3 ">   <span class="icon"><i class='bx bx-arrow-to-left'></i></span>  Todos los Productos </a>
        <h2 class=""> Producto Detalles </h2>
        <div class="container"> 
          <div class="card-body boxshowdeailts">
              <div class="card-header text-body-tertiary"> <c:out value="${product.store.name}" /> <span class="icon"><i class='bx bxs-store-alt'></i></span> </div>
              <h5 class="card-header fw-bolder productnameshow border-bottom border-dark pb-2"> <c:out value="${product.name}" />  </h5>
              <p class="card-text col-12"><small class="text-body-secondary"><c:out value="${product.categoryThree.name}" /></small></p>
              <p class="card-text fs-2 fw-bold"> $ <c:out value="${product.price}" />   </p>
            <div class="row text-center"> 
              <p class="card-text col"><small class="text-body-secondary border border-dark p-2 border-opacity-10 rounded-pill"><c:out value="${product.categoryThree.categoryTwo.name}" /></small></p>
              <p class="card-text col"><small class="text-body-secondary border border-dark p-2 border-opacity-10 rounded-pill"><c:out value="${product.categoryThree.categoryTwo.categoryOne.name}" /></small></p>
            </div>
          </div>
      </div>
    </div>
  </div>
</body>
</html>