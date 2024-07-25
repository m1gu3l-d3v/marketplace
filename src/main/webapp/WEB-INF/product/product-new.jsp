<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <title>Document</title>
</head>
<body>
    
    <div class="container ">
        <div class="my-4 mx-auto p-2  justify-content-around">
    
            <h2> Añade un Nuevo Producto </h2>
    
            <form:form action="/products/new" method="post" modelAttribute="product" class="my-3 col-8">

                <form:hidden path="store" value="${storeId}" />

                <p>
                    <form:label path="name" class="col-4"> Titulo </form:label>
                    <form:input path="name" class="col-6"/> <br> 
                    <form:errors class="text-danger"  path="name"/>
        
                </p>
                <p>
                    <form:label path="price" class="col-4"> Precio </form:label>
                    <form:input path="price" class="col-6"/> <br>
                    <form:errors class="text-danger"  path="price"/>
        
                </p>

        
                <br>
                <button class="btn btn-secondary">Añadir</button>
            </form:form>
        
        
            </div>
        </div>

        


</body>
</html>