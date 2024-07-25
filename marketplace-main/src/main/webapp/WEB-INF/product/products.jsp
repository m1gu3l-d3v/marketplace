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
    
    <div class="container-fluid">
        <div class="row">
                <c:forEach items="${productos}" var="product">

                <div class="col"> 
                    
                    <div class="card" >
                        <img src="" style="width: 200px;
                        height: 200px;" alt="">
                        
                        <h5 class="card-title"> ${product.name} </h5>

                        <p class="card-text"> ${product.price} </p>
                    </div>

                </div>

                </c:forEach>

    
        </div>
    </div>

    
</body>
</html>