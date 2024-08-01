<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Order Details</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
  <h2>Order Details</h2>
  <p><strong>ID:</strong> ${order.id}</p>
  <p><strong>Date:</strong> ${order.createdAt}</p>
  <p><strong>Status:</strong> ${order.deliveryStatus.name}</p>
  <h3>Products</h3>
  <ul>
    <c:forEach var="product" items="${order.products}">
      <li style="border: 2px solid black; padding: 10px; margin-bottom: 2px; list-style-type: none;">
        <span>Nombre del Producto: <c:out value="${product.name}"/></span><br/>
        <span>Precio: <c:out value="${product.price}"/></span><br/>
        <span>Tienda: <c:out value="${product.store.name}"/></span><br/>
        <span>Vendedor Asociado: <c:out value="${product.store.seller.firstName} ${product.store.seller.lastName}"/></span>
      </li>
    </c:forEach>
  </ul>
  <a href="${pageContext.request.contextPath}/orders" class="btn btn-primary">Back to Orders</a>
</div>
</body>
</html>
