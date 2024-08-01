<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Orders</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
  <h2>Orders</h2>
  <table class="table table-striped">
    <thead>
    <tr>
      <th>ID</th>
      <th>Date</th>
      <th>Status</th>
      <th>Details</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="order" items="${orders}">
      <tr>
        <td>${order.id}</td>
        <td>${order.createdAt}</td>
        <td>${order.deliveryStatus.name}</td>
        <td><a href="${pageContext.request.contextPath}/orders/${order.id}" class="btn btn-primary">View</a></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>
