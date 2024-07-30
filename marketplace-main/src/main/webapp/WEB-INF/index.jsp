<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="styles/principal.css">
</head>
<body>
<nav class="menu">
  <section class="menu_container">
      <h1 class="menu_logo">Logo</h1>
      <ul class="menu_links">
        <li class="menu_item">
          <a href="#" class="menu_link">Home</a>
        </li>
        <li class="menu_item menu_item--show">
          <a href="#" class="menu_link">Categorias <i class='bx bx-chevrons-right' id="menu_arrow" style='color:#bf616a'  ></i></a>
          <ul class="menu_nesting">
            <li class="menu_inside">
              <a href="#" class="menu_link--inside">About1</a>
            </li>
            <li class="menu_inside">
              <a href="#" class="menu_link--inside">About1</a>
            </li>
            <li class="menu_inside">
              <a href="#" class="menu_link--inside">About1</a>
            </li>
          </ul>
        </li>
        <li class="menu_item menu_item--show">
          <a href="#" class="menu_link">Categorias2 <i class='bx bx-chevrons-right' id="menu_arrow" style='color:#bf616a'  ></i></a>
          <ul class="menu_nesting">
            <li class="menu_inside">
              <a href="#" class="menu_link--inside">About1</a>
            </li>
            <li class="menu_inside">
              <a href="#" class="menu_link--inside">About1</a>
            </li>
            <li class="menu_inside">
              <a href="#" class="menu_link--inside">About1</a>
            </li>
          </ul>
        </li>
        <li class="menu_item">
          <a href="#" class="menu_link">Iniciar session</a>
        </li>
      </ul>
      <div class="menu_hamburguer">
        <i class='bx bx-align-justify' id="menu_img" style='color:#ffffff'  ></i>
      </div>
  </section>


</nav>
<main>
  <div class="row">
    <aside>
      <img src="data:image/jpeg;base64,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" alt="publicidad" >
    </aside>
    <section class="main"></section>
  </div>
  <div id="carouselExampleIndicators" class="carousel slide">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="..." class="d-block w-100" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</main>
<script src="scripts/principal.js"></script>
</body>
</html>
