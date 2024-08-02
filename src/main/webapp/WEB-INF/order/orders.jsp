<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Products</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    :root {
      --colorbg: #191724;
      --colorfg: #e0def4;
      --color1: #eb6f92;
      --color2: #9ccfd8;
      --color3: #f6c177;
      --colormain1: #ebbcba;
    }

    body {
      background-color: var(--colorbg);
      color: var(--colorfg);
    }

    .container {
      background-color: var(--colorbg);
      padding: 20px;
      border-radius: 8px;
    }

    h2 {
      color: var(--colormain1);
    }

    .table {
      background-color: var(--colorbg);
      color: var(--colorfg);
    }

    .table th, .table td {
      border-color: var(--colorfg);
    }

    .table-striped tbody tr:nth-of-type(odd) {
      background-color: var(--color1);
    }

    .table-striped tbody tr:nth-of-type(even) {
      background-color: var(--color2);
    }

    .btn-primary {
      background-color: var(--color3);
      border: none;
    }

    .btn-primary:hover {
      background-color: var(--color3);
      border: none;
    }

    .scrollable-table {
      max-height: 400px; /* Ajusta la altura máxima según tus necesidades */
      overflow-y: scroll;
    }
  </style>
</head>
<body>
<div class="container">
  <h2>Products</h2>
  <div class="scrollable-table">
    <table class="table table-striped">
      <thead>
      <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Price</th>
        <th>Category</th>
        <th>Image</th>
        <th>Action</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="product" items="${products}">
        <tr>
          <td>${product.id}</td>
          <td>${product.title}</td>
          <td>${product.price}</td>
          <td>${product.category}</td>
          <td><img src="${product.imageURL}" alt="${product.title}" width="50"></td>
          <td><a href="${pageContext.request.contextPath}/products/${product.id}" class="btn btn-primary">View</a></td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</div>
</body>
</html>