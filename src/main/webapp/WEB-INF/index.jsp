<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home</title>
  <style>
    .container {
      display: flex;
    }
    .box {
      background-color: red;
    }
  </style>
</head>
<body>
  <h1>Bienvenido</h1>
  <c:forEach items="4" var="div" class="container">
    <div class="box"></div>
  </c:forEach>
</body>
</html>