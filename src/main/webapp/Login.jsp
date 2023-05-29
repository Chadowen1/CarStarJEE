<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Login</title>
  <link rel="stylesheet" href="nicepage.css" media="screen">
  <link rel="stylesheet" href="Login.css" media="screen">
  <link rel="stylesheet" href="Register.css">
  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
  <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  <meta name="referrer" content="origin">
  <meta name="google-signin-client_id" content="1012018993748-e1qhpec1s5fh3t0sv4aj1jhq9ap8g0tu.apps.googleusercontent.com">
  <link id="u-theme-google-font" rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
  <link id="u-page-google-font" rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Ubuntu:300,300i,400,400i,500,500i,700,700i">
  <meta name="theme-color" content="#4c4ff9">
  <meta property="og:title" content="Login">
  <meta property="og:description" content="">
  <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>

<body class="u-body u-overlap u-xl-mode" data-lang="en">
<section class="u-clearfix u-custom-color-2 u-valign-middle u-section-1" id="sec-1bb4">
  <div class="u-clearfix u-expanded-width u-gutter-10 u-layout-wrap u-layout-wrap-1">
    <div class="u-layout" style="">
      <div class="u-layout-row" style="">
        <div class="u-container-style u-layout-cell u-left-cell u-size-29 u-size-xs-60 u-layout-cell-1" src="">
          <div class="u-container-layout u-container-layout-1">
            <h2 style="margin-left: 90px;"><a href="index.jsp" style="text-decoration: none;"></a>CarStar.</h2>
            <h3 class="u-align-center u-text u-text-default u-text-1">Welcome back!</h3>
            <p class="u-align-center u-text u-text-default u-text-2"> Entre to get access to a variety of cars.</p>
            <div class="u-form u-form-1">
              <form action="authentication" method="post">
                <% String errorMsg = (String) request.getAttribute("errorMsg"); %>
                <% if (errorMsg != null) { %>
                <div class="alert alert-danger" role="alert">
                  <%= errorMsg %>
                </div>
                <% } %>
              <div class="u-form-email u-form-group u-label-top">
                <label for="email-558c" class="u-label">Email</label>
                <input type="email" placeholder="Email" id="email-558c" name="email"
                       class="u-input u-input-rectangle" required="">
              </div>
              <div class="u-form-group u-form-name u-label-top">
                <label for="name-558c" class="u-label">Password</label>
                <input type="password" placeholder="Password" id="name-558c" name="password"
                       class="u-input u-input-rectangle" required="">
              </div>
              <div class="u-form-checkbox u-form-group u-label-top u-form-group-3">
                <input type="checkbox" id="checkbox-e71d" name="checkbox" value="On"
                       class="u-active-custom-color-3 u-field-input">
                <label for="checkbox-e71d" class="u-field-label">Remember me</label>
              </div>

              <button class="full-width-button" type="submit" formaction="authentication?action=login">login</button>

              </form>
            </div>
            <p class="u-align-center u-custom-font u-font-ubuntu u-text u-text-default u-text-4">Don't have an
              account?</p>
            <p
                    class="u-align-center u-custom-font u-font-ubuntu u-text u-text-custom-color-3 u-text-default u-text-5">
              <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-4"
                 href="Register.jsp">Register Here</a>
            </p>
          </div>
        </div>
        <div
                class="u-align-center u-container-style u-layout-cell u-right-cell u-shape-rectangle u-size-31 u-size-xs-60 u-layout-cell-2"
                src="">
          <div class="u-container-layout u-container-layout-2" src="">
            <div
                    class="u-carousel u-expanded-width u-gallery u-layout-carousel u-lightbox u-no-transition u-show-text-none u-gallery-1"
                    data-interval="5000" data-u-ride="carousel" id="carousel-9387">
              <ol class="u-absolute-hcenter u-carousel-indicators u-carousel-indicators-1">
                <li data-u-target="#carousel-9387" data-u-slide-to="0" class="u-active u-grey-70 u-shape-circle"
                    style="width: 10px; height: 10px;"></li>
                <li data-u-target="#carousel-9387" data-u-slide-to="1" class="u-grey-70 u-shape-circle"
                    style="width: 10px; height: 10px;"></li>
                <li data-u-target="#carousel-9387" data-u-slide-to="2" class="u-grey-70 u-shape-circle"
                    style="width: 10px; height: 10px;"></li>
                <li data-u-target="#carousel-9387" data-u-slide-to="3" class="u-grey-70 u-shape-circle"
                    style="width: 10px; height: 10px;"></li>
              </ol>
              <div class="u-carousel-inner u-gallery-inner" role="listbox">
                <div class="u-active u-carousel-item u-gallery-item u-carousel-item-1">
                  <div class="u-back-slide" data-image-width="2525" data-image-height="3787">
                    <img class="u-back-image u-expanded" src="images/martin-zdrazil-3f_jmKImUhU-unsplash.jpg">
                  </div>
                  <div class="u-over-slide u-over-slide-1">
                    <h3 class="u-gallery-heading"></h3>
                    <p class="u-gallery-text"></p>
                  </div>
                </div>
                <div class="u-carousel-item u-gallery-item u-carousel-item-2">
                  <div class="u-back-slide" data-image-width="4000" data-image-height="6000">
                    <img class="u-back-image u-expanded" src="images/daniela-p-31lReaL7Dtg-unsplash.jpg">
                  </div>
                  <div class="u-over-slide u-over-slide-2">
                    <h3 class="u-gallery-heading"></h3>
                    <p class="u-gallery-text"></p>
                  </div>
                </div>
                <div class="u-carousel-item u-gallery-item u-carousel-item-3" data-image-width="617"
                     data-image-height="974">
                  <div class="u-back-slide">
                    <img class="u-back-image u-expanded" src="images/vignesh-rajendran-7vbMRkLTIuw-unsplash.png">
                  </div>
                  <div class="u-over-slide u-over-slide-3">
                    <h3 class="u-gallery-heading"></h3>
                    <p class="u-gallery-text"></p>
                  </div>
                  <style data-mode="XL"></style>
                  <style data-mode="LG"></style>
                  <style data-mode="MD"></style>
                  <style data-mode="SM"></style>
                  <style data-mode="XS"></style>
                </div>
                <div class="u-carousel-item u-gallery-item u-carousel-item-4" data-image-width="617"
                     data-image-height="974">
                  <div class="u-back-slide">
                    <img class="u-back-image u-expanded" src="images/chris-osmond-ru9Q_A963BU-unsplash.png">
                  </div>
                  <div class="u-over-slide u-over-slide-4">
                    <h3 class="u-gallery-heading"></h3>
                    <p class="u-gallery-text"></p>
                  </div>
                  <style data-mode="XL"></style>
                  <style data-mode="LG"></style>
                  <style data-mode="MD"></style>
                  <style data-mode="SM"></style>
                  <style data-mode="XS"></style>
                </div>
              </div>
              <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-1"
                 href="#carousel-9387" role="button" data-u-slide="prev">
                  <span aria-hidden="true">
                    <svg viewBox="0 0 451.847 451.847">
                      <path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path>
                    </svg>
                  </span>
                <span class="sr-only">
                    <svg viewBox="0 0 451.847 451.847">
                      <path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path>
                    </svg>
                  </span>
              </a>
              <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-grey-70 u-icon-circle u-opacity u-opacity-70 u-spacing-10 u-text-white u-carousel-control-2"
                 href="#carousel-9387" role="button" data-u-slide="next">
                  <span aria-hidden="true">
                    <svg viewBox="0 0 451.846 451.847">
                      <path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path>
                    </svg>
                  </span>
                <span class="sr-only">
                    <svg viewBox="0 0 451.846 451.847">
                      <path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path>
                    </svg>
                  </span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>

</html>
