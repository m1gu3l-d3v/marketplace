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
  <div class="container-fluid">
    <div class="row">
        <div class="col"> 
          <div class="card" >
            <img src="" style="width: 200px;
            height: 200px;" alt="">
            <h5 class="card-title"> <c:out value="${product.name}" /> </h5>
            <p class="card-text"> <c:out value="${product.price}" /> </p>
            <p class="card-text"><c:out value="${product.categoryThree.name}" /></p>
          </div>
        </div>
    </div>
  </div>
</body>

</html>