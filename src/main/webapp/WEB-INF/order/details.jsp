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
    <p><strong>Status:</strong> ${order.deliveryStatus.status}</p>
    <p><strong>Seller:</strong> ${order.seller.id}</p>
    <p><strong>Store:</strong> ${order.seller.store.id}</p>
    <h3>Products</h3>
    <ul>
        <c:forEach var="product" items="${order.products}">
            <li>${product.name} - ${product.price}</li>
        </c:forEach>
    </ul>
    <a href="${pageContext.request.contextPath}/orders" class="btn btn-primary">Back to Orders</a>
</div>
</body>
</html>
