<%--
  Created by IntelliJ IDEA.
  User: brand
  Date: 7/24/2024
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Crear Nueva Tienda</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2>Crear Nueva Tienda</h2>
    <form:form method="post" action="${pageContext.request.contextPath}/store/new" modelAttribute="store">
        <div class="form-group">
            <label for="name">Nombre de la Tienda:</label>
            <form:input path="name" id="name" class="form-control" />
        </div>
        <div class="form-group">
            <label for="department">Departamento:</label>
            <form:select path="locals[0].district.department" id="department" class="form-control">
                <form:options items="${departments}" itemValue="id" itemLabel="name" />
            </form:select>
        </div>
        <div class="form-group">
            <label for="district">Distrito:</label>
            <form:select path="locals[0].district" id="district" class="form-control">
                <form:options items="${districts}" itemValue="id" itemLabel="name" />
            </form:select>
        </div>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </form:form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
