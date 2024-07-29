<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Carrito de Compras</title>
  <link rel="stylesheet" href="/styles/main.css">
  <link rel="stylesheet" href="/styles/shop-cart.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
  <div class="container-main">
    <div class="container-left">
      <div class="container-info subcontainer-2">
        <h1 class="title-1"><span class="icon"><i class='bx bxs-cart'></i></span> Mi Carrito</h1>
        <span class="data">
          <span class="data-info"></span>
        </span>
      </div>
      <div class="container-cart-items subcontainer-2">
        <!-- <h1 class="title-2">Items</h1> -->
        <div class="cart-item">
          <div class="item-img">
            <h6>img</h6>
          </div>
          <div class="item-info">
            <div class="info-top">
              <span class="data-info">Store Name</span>
              <h1 class="title-3">Product Name</h1>
            </div>
            <div class="info-bot">
              <div class="mini-data">Producto de Categoria</div>
              <div class="amount-price">
              <label path="stars" class="form-pt  mini-data">Cantidad: </label>
              <input type="number" id="stars" min="0" max="5" step="1" value="1" class="number mini-data"/>
              <h3 class="title-3 mini-data">14785,24 COP</h3>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="submit-form subcontainer-2">
        <form action="/shop/payment">
          <input type="hidden" name="listProducts" id="listProducts" />
          <button>Continuar Con la Compra</button>
        </form>
      </div>
    </div>
    <div class="container-right">
      <div class="container-msc subcontainer-2">
        <h1 class="title-2">Miscelanea</h1>
      </div>
      <div class="container-items subcontainer-2">
        <h1 class="title-2">Productos Recomendados</h1>
        <c:if test="${empty products}">
          <span class="data-info text-danger">Aún no tienes productos añadidos!</span>
          <a href="/products/new" class="data-info text-danger">Crear Aquí</a><br>
        </c:if>
        <c:if test="${not empty products}">
          <c:forEach items="${products}" var="product">
            <span class="data-info">-----------------------------<br/></span>
            <span class="data-info"><c:out value="${product.name}" /><br/></span>
            <span class="data-info"><c:out value="${product.price}" /><br/></span>
            <span class="data-info"><c:out value="${product.store.name}" /><br/></span>
            <span class="data-info">-----------------------------<br/></span>
          </c:forEach>
        </c:if>
      </div>
    </div>
  </div>
</body>
  <script>
    // Get the number input element
    const numberInput = document.getElementById('stars');
  
    // Disable the spin box functionality
    numberInput.addEventListener('wheel', (event) => {
      event.preventDefault();
    });
  
    numberInput.addEventListener('keydown', (event) => {
       // Prevent the up and down arrow keys from changing the value
      if (event.key === 'ArrowUp' || event.key === 'ArrowDown') {
          event.preventDefault();
      }
    });
  </script>
</html>
