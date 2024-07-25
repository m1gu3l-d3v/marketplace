<%@ page isErrorPage="true" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Categorías</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .category-box {
      border: 1px solid #ccc;
      margin: 10px;
      padding: 20px;
      text-align: center;
    }
    .subcategories, .products {
      display: none;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1 class="text-center my-4">Categorías</h1>
    <div class="row">
      <!-- Categorías Nivel 1 -->
      <c:forEach var="categoryOne" items="${categoriesOnes}">
        <div class="col-md-12">
          <div class="category-box">
            <h2>${categoryOne.name}</h2>
            <button class="btn btn-primary" onclick="toggleVisibility('subcategories-${categoryOne.id}')">Mostrar Subcategorías</button>
            <div id="subcategories-${categoryOne.id}" class="subcategories">
              <!-- Subcategorías Nivel 2 -->
              <c:forEach var="categoryTwo" items="${categoryTwoList}">
                <c:if test="${categoryTwo.categoryOne.id == categoryOne.id}">
                  <div class="category-box">
                    <h3>${categoryTwo.name}</h3>
                    <button class="btn btn-secondary" onclick="toggleVisibility('products-${categoryTwo.id}')">Mostrar Productos</button>
                    <div id="products-${categoryTwo.id}" class="products">
                      <!-- Productos Nivel 3 -->
                      <c:forEach var="categoryThree" items="${categoryThreeList}">
                        <c:if test="${categoryThree.categoryTwo.id == categoryTwo.id}">
                          <div class="category-box">
                            <h4>${categoryThree.name}</h4>
                          </div>
                        </c:if>
                      </c:forEach>
                    </div>
                  </div>
                </c:if>
              </c:forEach>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script>
    function toggleVisibility(id) {
      var element = document.getElementById(id);
      if (element.style.display === "none" || element.style.display === "") {
        element.style.display = "block";
      } else {
        element.style.display = "none";
      }
    }
  </script>
</body>
</html>