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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="/styles/product.css">
</head>
<body class="bgshow">
  <div class="container">
    <h2 > Tus Productos </h2>
      <div class="row row-cols-1 justify-content-center">
        <div class="col-4 offset-md-4">
          <div class="card prod">
            <img src="" class="card-img-top imagen-producto" alt="">
            <h5 class="card-title"> <c:out value="${product.name}" /></h5>
            <p class="card-text"> <c:out value="${product.price}" /></p>
            <p class="card-text"><c:out value="${product.categoryThree.name}" /></p>
          </div>
        </div>
      </div>
  </div>
</body>
</html>