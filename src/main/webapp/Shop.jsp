<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CarStar.</title>
  <link rel="stylesheet" href="./assets/css/style-prefix.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
</head>
<body>
<!--
- HEADER
-->
<header>
  <div class="header-top">
    <div class="container">
      <ul class="header-social-container">
        <li>
          <a href="#" class="social-link">
            <ion-icon name="logo-facebook"></ion-icon>
          </a>
        </li>
        <li>
          <a href="#" class="social-link">
            <ion-icon name="logo-twitter"></ion-icon>
          </a>
        </li>
        <li>
          <a href="#" class="social-link">
            <ion-icon name="logo-instagram"></ion-icon>
          </a>
        </li>
        <li>
          <a href="#" class="social-link">
            <ion-icon name="logo-linkedin"></ion-icon>
          </a>
        </li>
      </ul>
      <div class="header-top-actions">
        <select name="currency" disabled>
          <option value="tnd" selected>TND</option>
          <option value="eur">EUR &euro;</option>
        </select>
        <select name="language" disabled>
          <option value="en-US" selected>English</option>
          <option value="es-ES">Espa&ntilde;ol</option>
          <option value="fr">Fran&ccedil;ais</option>
        </select>
      </div>
    </div>
  </div>
  <div class="header-main">
    <div class="container">
      <h1>CarStar</h1>
      <div class="header-search-container">
        <input type="search" name="search" class="search-field" placeholder="Enter your product name...">
        <button class="search-btn">
          <ion-icon name="search-outline"></ion-icon>
        </button>
      </div>
      <div class="header-user-actions">
        <button class="action-btn">
          <ion-icon name="person-outline"></ion-icon>
        </button>
        <button class="action-btn">
          <ion-icon name="heart-outline"></ion-icon>
          <span class="count">0</span>
        </button>
          <% if (session.getAttribute("jwtToken") != null) { %>
        <form action="authentication" method="post">
          <button type="submit" class="action-btn" formaction="authentication?action=logout">
          <ion-icon name="log-out-outline"></ion-icon>
          </button>
        </form>
          <% } else { %>
          <button onclick="window.location.href = 'Login.jsp';" class="action-btn">
            <ion-icon name="log-in-outline"></ion-icon>
          </button>
          <% } %>
      </div>
    </div>
  </div>
  <nav class="desktop-navigation-menu">
    <div class="container">
      <ul class="desktop-menu-category-list">
        <li class="menu-category">
          <a href="#" class="menu-title">Home</a>
        </li>
        <li class="menu-category">
          <a href="#" class="menu-title">Cars</a>
          <div class="dropdown-panel">
            <ul class="dropdown-panel-list">
              <li class="menu-title">
                <a href="#">BMW</a>
              </li>
              <li class="panel-list-item">
                <a href="#">1 Series</a>
              </li>
              <li class="panel-list-item">
                <a href="#">2 Series</a>
              </li>
              <li class="panel-list-item">
                <a href="#">3 Series</a>
              </li>
              <li class="panel-list-item">
                <a href="#">X5</a>
              </li>
              <li class="panel-list-item">
                <a href="#">7 Series</a>
              </li>
              <li class="panel-list-item">
                <a href="#">
                  <img src="./assets/images/mx8egega.png" alt="headphone collection" width="250" height="119">
                </a>
              </li>
            </ul>
            <ul class="dropdown-panel-list">
              <li class="menu-title">
                <a href="#">HYUNDAI</a>
              </li>
              <li class="panel-list-item">
                <a href="#">SONATA</a>
              </li>
              <li class="panel-list-item">
                <a href="#">i20</a>
              </li>
              <li class="panel-list-item">
                <a href="#">i30</a>
              </li>
              <li class="panel-list-item">
                <a href="#">VELOSTER</a>
              </li>
              <li class="panel-list-item">
                <a href="#">TUCSON</a>
              </li>
              <li class="panel-list-item">
                <a href="#">
                  <img src="./assets/images/hyundai/hyundai-motor-group-n37A9fjdVXM-unsplash.jpg"
                       alt="men's fashion" width="250" height="119">
                </a>
              </li>
            </ul>
            <ul class="dropdown-panel-list">
              <li class="menu-title">
                <a href="#">Alfa Romeo</a>
              </li>
              <li class="panel-list-item">
                <a href="#">Tonale</a>
              </li>
              <li class="panel-list-item">
                <a href="#">Giulietta</a>
              </li>
              <li class="panel-list-item">
                <a href="#">Spider</a>
              </li>
              <li class="panel-list-item">
                <a href="#">Stelvio</a>
              </li>
              <li class="panel-list-item">
                <a href="#">Giulia</a>
              </li>
              <li class="panel-list-item">
                <a href="#">
                  <img src="assets/images/alfa romeo/Tonale-Web-Tile-5_4_23.jpg"
                       alt="alfa" width="250" height="119">
                </a>
              </li>
            </ul>
          </div>
        </li>
      </ul>
    </div>
  </nav>
  <div class="mobile-bottom-navigation">
    <button class="action-btn" data-mobile-menu-open-btn>
      <ion-icon name="menu-outline"></ion-icon>
    </button>
    <button class="action-btn">
      <ion-icon name="bag-handle-outline"></ion-icon>
      <span class="count">0</span>
    </button>
    <button class="action-btn">
      <ion-icon name="home-outline"></ion-icon>
    </button>
    <button class="action-btn">
      <ion-icon name="heart-outline"></ion-icon>
      <span class="count">0</span>
    </button>
    <button class="action-btn" data-mobile-menu-open-btn>
      <ion-icon name="grid-outline"></ion-icon>
    </button>
  </div>
  <nav class="mobile-navigation-menu  has-scrollbar" data-mobile-menu>
    <div class="menu-top">
      <h2 class="menu-title">Menu</h2>
      <button class="menu-close-btn" data-mobile-menu-close-btn>
        <ion-icon name="close-outline"></ion-icon>
      </button>
    </div>
    <ul class="mobile-menu-category-list">
      <li class="menu-category">
        <a href="#" class="menu-title">Home</a>
      </li>
      <li class="menu-category">
        <button class="accordion-menu" data-accordion-btn>
          <p class="menu-title">Men's</p>
          <div>
            <ion-icon name="add-outline" class="add-icon"></ion-icon>
            <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
          </div>
        </button>
        <ul class="submenu-category-list" data-accordion>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Shirt</a>
          </li>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Shorts & Jeans</a>
          </li>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Safety Shoes</a>
          </li>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Wallet</a>
          </li>
        </ul>
      </li>
      <li class="menu-category">
        <button class="accordion-menu" data-accordion-btn>
          <p class="menu-title">Women's</p>
          <div>
            <ion-icon name="add-outline" class="add-icon"></ion-icon>
            <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
          </div>
        </button>
        <ul class="submenu-category-list" data-accordion>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Dress & Frock</a>
          </li>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Earrings</a>
          </li>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Necklace</a>
          </li>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Makeup Kit</a>
          </li>
        </ul>
      </li>
      <li class="menu-category">
        <button class="accordion-menu" data-accordion-btn>
          <p class="menu-title">Jewelry</p>
          <div>
            <ion-icon name="add-outline" class="add-icon"></ion-icon>
            <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
          </div>
        </button>
        <ul class="submenu-category-list" data-accordion>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Earrings</a>
          </li>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Couple Rings</a>
          </li>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Necklace</a>
          </li>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Bracelets</a>
          </li>
        </ul>
      </li>
      <li class="menu-category">
        <button class="accordion-menu" data-accordion-btn>
          <p class="menu-title">Perfume</p>
          <div>
            <ion-icon name="add-outline" class="add-icon"></ion-icon>
            <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
          </div>
        </button>
        <ul class="submenu-category-list" data-accordion>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Clothes Perfume</a>
          </li>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Deodorant</a>
          </li>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Flower Fragrance</a>
          </li>
          <li class="submenu-category">
            <a href="#" class="submenu-title">Air Freshener</a>
          </li>
        </ul>
      </li>
      <li class="menu-category">
        <a href="#" class="menu-title">Blog</a>
      </li>
      <li class="menu-category">
        <a href="#" class="menu-title">Hot Offers</a>
      </li>
    </ul>
    <div class="menu-bottom">
      <ul class="menu-category-list">
        <li class="menu-category">
          <button class="accordion-menu" data-accordion-btn>
            <p class="menu-title">Language</p>
            <ion-icon name="caret-back-outline" class="caret-back"></ion-icon>
          </button>
          <ul class="submenu-category-list" data-accordion>
            <li class="submenu-category">
              <a href="#" class="submenu-title">English</a>
            </li>
            <li class="submenu-category">
              <a href="#" class="submenu-title">Espa&ntilde;ol</a>
            </li>
            <li class="submenu-category">
              <a href="#" class="submenu-title">Fren&ccedil;h</a>
            </li>
          </ul>
        </li>
        <li class="menu-category">
          <button class="accordion-menu" data-accordion-btn>
            <p class="menu-title">Currency</p>
            <ion-icon name="caret-back-outline" class="caret-back"></ion-icon>
          </button>
          <ul class="submenu-category-list" data-accordion>
            <li class="submenu-category">
              <a href="#" class="submenu-title">USD &dollar;</a>
            </li>
            <li class="submenu-category">
              <a href="#" class="submenu-title">EUR &euro;</a>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="menu-social-container">
        <li>
          <a href="#" class="social-link">
            <ion-icon name="logo-facebook"></ion-icon>
          </a>
        </li>
        <li>
          <a href="#" class="social-link">
            <ion-icon name="logo-twitter"></ion-icon>
          </a>
        </li>
        <li>
          <a href="#" class="social-link">
            <ion-icon name="logo-instagram"></ion-icon>
          </a>
        </li>
        <li>
          <a href="#" class="social-link">
            <ion-icon name="logo-linkedin"></ion-icon>
          </a>
        </li>
      </ul>
    </div>
  </nav>
</header>
<!--
- MAIN
-->
<main>
  <!--
- BANNER
-->
  <div class="banner">
    <div class="container">
      <div class="slider-container has-scrollbar">
        <div class="slider-item">
          <img src="./assets/images/mercedes/stageelement.MQ4.0.stage.20230306041104.jpg"
               alt="women's latest fashion sale" class="banner-img">
          <div class="banner-content">
            <p class="banner-subtitle">Our Latest</p>
            <h2 class="banner-title" style="color: wheat;">Mercedes C43</h2>
            <p class="banner-text" style="color: white;">
              starting at <b>120</b>.000 TND
            </p>
            <a href="#" class="banner-btn">BUY NOW</a>
          </div>
        </div>
        <div class="slider-item">
          <img src="./assets/images/alfa romeo/partnership-banner.jpg" alt="tonale" class="banner-img">
          <div class="banner-content">
            <p class="banner-subtitle">The Wait is Over</p>
            <h2 class="banner-title" style="color: black">ALFA ROMEO STELVIO</h2>
            <p class="banner-text" style="color: white;">
              starting at  <b>265</b>.000 TND
            </p>
            <a href="#" class="banner-btn">Shop now</a>
          </div>
        </div>
        <div class="slider-item">
          <img src="./assets/images/audi/1920x600_Stage_AQ8_181004.jpg" alt="AQ8" class="banner-img">
          <div class="banner-content">
            <p class="banner-subtitle" style="color: black">Audi Q8</p>
            <h2 class="banner-title" style="color: white">Entre A New Dimension</h2>
            <p class="banner-text" style="color: wheat">
              starting at <b>542</b>.000 TND
            </p>
            <a href="#" class="banner-btn">Shop now</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--
- PRODUCT
-->
  <div class="product-container">
    <div class="container">
      <!--
- SIDEBAR
-->
      <div class="sidebar  has-scrollbar" data-mobile-menu>
        <div class="sidebar-category">
          <div class="sidebar-top">
            <h2 class="sidebar-title">Category</h2>
            <button class="sidebar-close-btn" data-mobile-menu-close-btn>
              <ion-icon name="close-outline"></ion-icon>
            </button>
          </div>
          <ul class="sidebar-menu-category-list">
            <li class="sidebar-menu-category">
              <button class="sidebar-accordion-menu" data-accordion-btn>
                <div class="menu-title-flex">
                  <p class="menu-title">Coupe</p>
                </div>
                <div>
                  <ion-icon name="add-outline" class="add-icon"></ion-icon>
                  <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
                </div>
              </button>
            </li>
            <li class="sidebar-menu-category">
              <button class="sidebar-accordion-menu" data-accordion-btn>
                <div class="menu-title-flex">
                  <p class="menu-title">Sedan</p>
                </div>
                <div>
                  <ion-icon name="add-outline" class="add-icon"></ion-icon>
                  <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
                </div>
              </button>
            </li>
            <li class="sidebar-menu-category">
              <button class="sidebar-accordion-menu" data-accordion-btn>
                <div class="menu-title-flex">
                  <p class="menu-title">SUV</p>
                </div>
                <div>
                  <ion-icon name="add-outline" class="add-icon"></ion-icon>
                  <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
                </div>
              </button>
            </li>
            <li class="sidebar-menu-category">
              <button class="sidebar-accordion-menu" data-accordion-btn>
                <div class="menu-title-flex">
                  <p class="menu-title">Convertible</p>
                </div>
                <div>
                  <ion-icon name="add-outline" class="add-icon"></ion-icon>
                  <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
                </div>
              </button>
            </li>
            <li class="sidebar-menu-category">
              <button class="sidebar-accordion-menu" data-accordion-btn>
                <div class="menu-title-flex">
                  <p class="menu-title">Sports Car</p>
                </div>
                <div>
                  <ion-icon name="add-outline" class="add-icon"></ion-icon>
                  <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
                </div>
              </button>
            </li>
            <li class="sidebar-menu-category">
              <button class="sidebar-accordion-menu" data-accordion-btn>
                <div class="menu-title-flex">
                  <p class="menu-title">Hatchback</p>
                </div>
                <div>
                  <ion-icon name="add-outline" class="add-icon"></ion-icon>
                  <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
                </div>
              </button>
            </li>
            <li class="sidebar-menu-category">
              <button class="sidebar-accordion-menu" data-accordion-btn>
                <div class="menu-title-flex">
                  <p class="menu-title">MiniVan</p>
                </div>
                <div>
                  <ion-icon name="add-outline" class="add-icon"></ion-icon>
                  <ion-icon name="remove-outline" class="remove-icon"></ion-icon>
                </div>
              </button>
            </li>
          </ul>
        </div>
      </div>
      <div class="product-box">
        <!--
- PRODUCT GRID
-->
        <button type="button" class="action-btn" onclick="location.href='fetchcars'">
          <ion-icon name="log-out-outline"></ion-icon>
        </button>
        <div class="product-main">
          <h2 class="title">New Products</h2>
          <div class="product-grid">
            <c:forEach items="${myEntities}" var="entity">
            <div class="showcase">
              <div class="showcase-banner">
                <img src="${entity.img1}"
                     alt="car" width="300" class="product-img default">
                <img src="${entity.img2}" alt="hover" class="product-img hover" width="300">
                <div class="showcase-actions">
                  <button class="btn-action">
                    <ion-icon name="heart-outline"></ion-icon>
                  </button>
                  <button class="btn-action">
                    <ion-icon name="eye-outline"></ion-icon>
                  </button>
                  <button class="btn-action">
                    <ion-icon name="repeat-outline"></ion-icon>
                  </button>
                  <button class="btn-action">
                    <ion-icon name="bag-add-outline"></ion-icon>
                  </button>
                </div>
              </div>
              <div class="showcase-content">
                <a href="#" class="showcase-category">${entity.model}</a>
                <a href="#">
                  <h3 class="showcase-title">${entity.manufacturer}</h3>
                </a>
                <div class="showcase-rating">
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star"></ion-icon>
                  <ion-icon name="star-outline"></ion-icon>
                  <ion-icon name="star-outline"></ion-icon>
                </div>
                <div class="price-box">
                  <p class="price">${entity.price} TND</p>
                </div>
              </div>
            </div>
            </c:forEach>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--
- BLOG
-->
  <div class="blog">
    <div class="container">
      <div class="blog-container has-scrollbar">
        <div class="blog-card">
          <a href="#">
            <img src="./assets/images/alfa romeo/1671638404578.jpeg"
                 alt="Clothes Retail KPIs 2021 Guide for Clothes Executives" width="300"
                 class="blog-banner">
          </a>
          <div class="blog-content">
            <a href="#" class="blog-category">Technology</a>
            <a href="#">
              <h3 class="blog-title">Best built in technologies in 2023.</h3>
            </a>
            <p class="blog-meta">
              By <cite>Admin</cite> / <time datetime="2022-04-06">Apr 06, 2022</time>
            </p>
          </div>
        </div>
        <div class="blog-card">
          <a href="#">
            <img src="./assets/images/alfa romeo/1679328340296.jpeg"
                 alt="Curbside fashion Trends: How to Win the Pickup Battle." class="blog-banner"
                 width="300">
          </a>
          <div class="blog-content">
            <a href="#" class="blog-category">Dynamics</a>
            <h3>
              <a href="#" class="blog-title">With a promising future for Self-Driving cars.</a>
            </h3>
            <p class="blog-meta">
              By <cite>Admin</cite> / <time datetime="2022-01-18">Jan 18, 2022</time>
            </p>
          </div>
        </div>
        <div class="blog-card">
          <a href="#">
            <img src="./assets/images/alfa romeo/1668676980701.jpeg"
                 alt="EBT vendors: Claim Your Share of SNAP Online Revenue." class="blog-banner"
                 width="300">
          </a>
          <div class="blog-content">
            <a href="#" class="blog-category">Our Planet</a>
            <h3>
              <a href="#" class="blog-title">Team with us in our battle to save our planet.</a>
            </h3>
            <p class="blog-meta">
              By <cite>Admin</cite> / <time datetime="2022-02-10">Feb 10, 2022</time>
            </p>
          </div>
        </div>
        <div class="blog-card">
          <a href="#">
            <img src="./assets/images/alfa romeo/AR-CurrentOffers-Tile2-Desktop.jpg.image.500.jpg"
                 alt="Curbside fashion Trends: How to Win the Pickup Battle." class="blog-banner"
                 width="300">
          </a>
          <div class="blog-content">
            <a href="#" class="blog-category">LifeStyle</a>
            <h3>
              <a href="#" class="blog-title">In search for your happiness. Top Picks!</a>
            </h3>
            <p class="blog-meta">
              By <cite>Admin</cite> / <time datetime="2022-03-15">Mar 15, 2022</time>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</main>
<!--
- FOOTER
-->
<footer>
  <div class="footer-category">
  </div>
  <div class="footer-nav">
    <div class="container">
      <ul class="footer-nav-list">
        <li class="footer-nav-item">
          <h2 class="nav-title">Popular Categories</h2>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Fashion</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Electronic</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Cosmetic</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Health</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Watches</a>
        </li>
      </ul>
      <ul class="footer-nav-list">
        <li class="footer-nav-item">
          <h2 class="nav-title">Products</h2>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Prices drop</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">New products</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Best sales</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Contact us</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Sitemap</a>
        </li>
      </ul>
      <ul class="footer-nav-list">
        <li class="footer-nav-item">
          <h2 class="nav-title">Our Company</h2>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Delivery</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Legal Notice</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Terms and conditions</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">About us</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Secure payment</a>
        </li>
      </ul>
      <ul class="footer-nav-list">
        <li class="footer-nav-item">
          <h2 class="nav-title">Services</h2>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Prices drop</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">New products</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Best sales</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Contact us</a>
        </li>
        <li class="footer-nav-item">
          <a href="#" class="footer-nav-link">Sitemap</a>
        </li>
      </ul>
      <ul class="footer-nav-list">
        <li class="footer-nav-item">
          <h2 class="nav-title">Contact</h2>
        </li>
        <li class="footer-nav-item flex">
          <div class="icon-box">
            <ion-icon name="location-outline"></ion-icon>
          </div>
          <address class="content">
            Tunisia, Tunis
            Adress Line 1,
            Adress Line
          </address>
        </li>
        <li class="footer-nav-item flex">
          <div class="icon-box">
            <ion-icon name="call-outline"></ion-icon>
          </div>
          <a href="tel:+607936-8058" class="footer-nav-link">(+216) 99-999-999</a>
        </li>
        <li class="footer-nav-item flex">
          <div class="icon-box">
            <ion-icon name="mail-outline"></ion-icon>
          </div>
          <a href="mailto:example@gmail.com" class="footer-nav-link">car.star@gmail.com</a>
        </li>
      </ul>
      <ul class="footer-nav-list">
        <li class="footer-nav-item">
          <h2 class="nav-title">Follow Us</h2>
        </li>
        <li>
          <ul class="social-link">
            <li class="footer-nav-item">
              <a href="#" class="footer-nav-link">
                <ion-icon name="logo-facebook"></ion-icon>
              </a>
            </li>
            <li class="footer-nav-item">
              <a href="#" class="footer-nav-link">
                <ion-icon name="logo-twitter"></ion-icon>
              </a>
            </li>
            <li class="footer-nav-item">
              <a href="#" class="footer-nav-link">
                <ion-icon name="logo-linkedin"></ion-icon>
              </a>
            </li>
            <li class="footer-nav-item">
              <a href="#" class="footer-nav-link">
                <ion-icon name="logo-instagram"></ion-icon>
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <img src="./assets/images/payment.png" alt="payment method" class="payment-img">
      <p class="copyright">
        Copyright &copy; <a href="#">CarStar.</a> all rights reserved.
      </p>
    </div>
  </div>
</footer>
<!--
- custom js link
-->
<script src="./assets/js/script.js"></script>
<!--
- ionicon link
-->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
