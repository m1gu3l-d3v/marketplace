<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="/styles/index.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
  <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
</head>
<body>
  <nav class="menu">
    <section class="menu_container">
      <h1 class="menu_logo">Logo</h1>
      <ul class="menu_links">
        <li>
          <form class="d-flex" role="search" id="barra">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        </li>
        <li class="menu_item">
          <a href="#" class="menu_link">Home</a>
        </li>
        <li class="menu_item menu_item--show">
          <a href="#" class="menu_link">Categorias <span class="icono1"><i class='bx bx-chevrons-right' id="menu_arrow" style='color: #FFf'></i></span></a>
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
          <a href="#" class="menu_link">Categorias2 <span class="icono1"><i class='bx bx-chevrons-right' id="menu_arrow" style='color: #FFf'></i></span></a>
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
        <li class="menu_item">
          <a href="#" class="menu_link">Registrarse</a>
        </li>
      </ul>
      <div class="menu_hamburguer">
        <i class='bx bx-align-justify' id="menu_img" style='color:#ffffff'></i>
      </div>
    </section>
  </nav>

  <div class="container-1">
    <div class="container-2 publicidad">
      <div class="widget">
        <a href="#"><img src="https://png.pngtree.com/png-clipart/20210404/original/pngtree-modern-pet-store-promotion-publicity-advertising-png-image_6202909.jpg" alt="publicidad"></a>
      </div>
      <div class="widget">
        <a href="#"><img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="publicidad" ></a>
      </div>
    </div>
    <div class="container-2 carrousel-1">
      <div id="carouselExampleIndicators" class="carousel slide">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="https://www.woosync.io/wp-content/uploads/2020/12/como-crear-una-campana-de-publicidad-en-mercadolibre-ads-woosync-blog-woocommerce.jpg" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="https://static.vecteezy.com/system/resources/thumbnails/022/645/069/small/illustration-painting-of-love-riding-on-bicycle-generate-ai-photo.jpg" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="https://www.woosync.io/wp-content/uploads/2020/12/como-crear-una-campana-de-publicidad-en-mercadolibre-ads-woosync-blog-woocommerce.jpg" alt="Third slide">
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
    </div>
    <div class="container-2 publicidad">
      <div class="widget">
        <a href="#"><img src="https://png.pngtree.com/png-clipart/20210404/original/pngtree-modern-pet-store-promotion-publicity-advertising-png-image_6202909.jpg" alt="publicidad"></a>
      </div>
      <div class="widget">
        <a href="#"><img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="publicidad" ></a>
      </div>
    </div>
  </div>

  <div class="carousel-2">
    <div class="Carousel d-flex flex-column">
      <h2>Subcategory Carousel</h2>
      <div class="slick-list" id="slick-list">
          <button class="slick-arrow slick-prev" id="button-prev" data-button="button-prev" onclick="app.processingButton(event)">
              <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-left" class="svg-inline--fa fa-chevron-left fa-w-10" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path fill="currentColor" d="M34.52 239.03L228.87 44.69c9.37-9.37 24.57-9.37 33.94 0l22.67 22.67c9.36 9.36 9.37 24.52.04 33.9L131.49 256l154.02 154.75c9.34 9.38 9.32 24.54-.04 33.9l-22.67 22.67c-9.37 9.37-24.57 9.37-33.94 0L34.52 272.97c-9.37-9.37-9.37-24.57 0-33.94z"></path></svg>
          </button>
          <div class="slick-track" id="track">
              <div class="slick">
                  <div>
                      <a href="/">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="/">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="/">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="#">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="#">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="#">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="#">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="#">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="#">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="#">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="/">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="/">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="/">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="/">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
              <div class="slick">
                  <div>
                      <a href="/">
                          <h4><small>Share Your Message</small>Watch</h4>
                          <picture>
                              <img src="https://controlpublicidad.com/uploads/2022/06/anuncio-contra-el-abandono-animal-2-115912.jpg" alt="Image">
                          </picture>
                      </a>
                  </div>
              </div>
          </div>
          <button class="slick-arrow slick-next" id="button-next" data-button="button-next" onclick="app.processingButton(event)">
              <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right" class="svg-inline--fa fa-chevron-right fa-w-10" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path fill="currentColor" d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"></path></svg>
          </button>
      </div>
    </div>
  </div>
</body>
<script src="/scripts/index.js" ></script>
</html>
