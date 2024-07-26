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
        <div class="input-group-row">
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
        </div>
          <div class="input-group-row">
            <div class="select-box">
              <label for="department">Categoría Uno:
                <select name="categoryOne" id="categoryOne" onchange="updateCategoriesTwo()" class="btn select">
                  <c:forEach items="${categoriesOnes}" var="categoryOne">
                    <option value="${categoryOne.id}">${categoryOne.name}</option>
                  </c:forEach>
                </select>
              </label>
            </div>

            <div class="select-box">
              <label for="district">Categoría Dos:
                <select name="categoryTwo" id="categoryTwo" onchange="updateCategoriesThree()" class="btn select">
                  <c:forEach items="${categoriesTwos}" var="categoryTwo">
                    <option value="${categoryTwo.id}" class="${categoryTwo.categoryOne.id}">${categoryTwo.name}</option>
                  </c:forEach>
                </select>
              </label>
            </div>

            <div class="select-box">
              <label for="district">Categoría Tres:
                <select name="categoryThree" id="categoryThree" class="btn select">
                  <c:forEach items="${categoriesThrees}" var="categoryThree">
                    <option value="${categoryThree.id}" class="${categoryThree.categoryTwo.id}">${categoryThree.name}</option>
                  </c:forEach>
                </select>
              </label>
            </div>
          </div>
        <button class="btn btn-secondary">Añadir</button>
      </form:form>
      </div>
    </div>
</body>
<script>
  function updateCategoriesThree() {
    // Obtén la categoría dos seleccionada
    let selectCategoryTwo = document.getElementById('categoryTwo').value;

    // Obtén todas las categorías tres
    let categoriesThrees = document.getElementById('categoryThree').options;

    // Muestra solo las categorías tres que pertenecen a la categoría dos seleccionada
    let firstCategoryThree = null;
    for (let i = 0; i < categoriesThrees.length; i++) {
      if (categoriesThrees[i].className === selectCategoryTwo) {
        categoriesThrees[i].hidden = false;
        if (!firstCategoryThree) {
          firstCategoryThree = categoriesThrees[i].value;
        }
      } else {
        categoriesThrees[i].hidden = true;
      }
    }

    // Cambia el valor del select de categorías tres al primer elemento visible
    document.getElementById('categoryThree').value = firstCategoryThree;
  }

  function updateCategoriesTwo() {
    // Obtén la categoría uno seleccionada
    let selectCategoryOne = document.getElementById('categoryOne').value;

    // Obtén todas las categorías dos
    let categoriesTwos = document.getElementById('categoryTwo').options;

    // Muestra solo las categorías dos que pertenecen a la categoría uno seleccionada
    let firstCategoryTwo = null;
    for (let i = 0; i < categoriesTwos.length; i++) {
      if (categoriesTwos[i].className === selectCategoryOne) {
        categoriesTwos[i].hidden = false;
        if (!firstCategoryTwo) {
          firstCategoryTwo = categoriesTwos[i].value;
        }
      } else {
        categoriesTwos[i].hidden = true;
      }
    }

    // Cambia el valor del select de categorías dos al primer elemento visible
    document.getElementById('categoryTwo').value = firstCategoryTwo;

    // Actualiza las categorías tres con base en la nueva selección de categoría dos
    updateCategoriesThree();
  }

  // Actualiza las categorías dos y tres cuando la página se carga por primera vez
  window.onload = function() {
    updateCategoriesTwo();
  }
</script>
</html>