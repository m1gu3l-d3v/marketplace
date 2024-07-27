<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Show Store</title>
  <link rel="stylesheet" href="/styles/main.css">
  <link rel="stylesheet" href="/styles/show.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
  <div class="container-main">
    <div class="container-left">
      <div class="container-info subcontainer-2">
        <h1 class="title-1"><span class="icon"><i class='bx bxs-store-alt'></i> </span> <c:out value="${store.name} STOR3"/></h1>
        <span class="data">
          <span class="data-info">Empresa del rubro de <c:out value="${store.categoryOne.name}"/><br/></span>
          <span class="data-info">Teléfono: <c:out value="${store.telephoneNumber}"/><br/></span>
          <span class="data-info">Email: <c:out value="${store.email}"/><br/></span>
          <span class="data-info">Dirección: <c:out value="${direction}direction"/>,
            <c:out value="${district}district"/>,
            <c:out value="${department}department"/>-Colombia<br/></span>
          <span class="data-info">RUC: <c:out value="${store.ruc}"/></span>
        </span>
      </div>
      <div class="container-valoration subcontainer-2">
        <h1 class="title-2">Valoraciones</h1>
        <c:forEach begin="1" step="1" end="10" var="i">
          <span class="data-info">Valoración ${i}:</span><br/>
          <span class="data-info">User: <c:out value="${valoration.user.firstName} ${valoration.user.lastName}" /> name User<br/></span>
          <span class="data-info">Estrellas: <c:out value="${valorationStore.stars}" /> estrellas<br/></span>
          <span class="data-info"><c:out value="${valoration.review}" /> texto de reseña<br/></span>
        </c:forEach>
      </div>
    </div>
    <div class="container-right">
      <div class="container-msc subcontainer-2">
        <h1 class="title-2">Miscelanea</h1>
      </div>
      <div class="container-items subcontainer-2">
        <h1 class="title-2">Products</h1>
        <c:forEach begin="1" step="1" end="10" var="i">
          <span class="data-info">Producto ${i}:</span><br/>
          <span class="data-info"><c:out value="${product.store.name}" /> Nombre de la tienda<br/></span>
          <span class="data-info">Estrellas: <c:out value="${product.stars}" /> Stars Product<br/></span>
        </c:forEach>
      </div>
    </div>
  </div>
</body>
</html>
