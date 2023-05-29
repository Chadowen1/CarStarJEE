<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Register.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <title>Register</title>
</head>

<body>
<section class="vh-100 gradient-custom">
    <div class="container py-5 h-100">
        <div class="row justify-content-center align-items-center h-100">
            <div class="col-12 col-lg-9 col-xl-7">
                <div class="card shadow-2-strong card-registration">
                    <div class="card-body p-4 p-md-5">
                        <h1 class="mb-4 pb-2 pb-md-0 text-center" style="margin-bottom: 5px !important; font-size: 65px;">CarStar.
                        </h1>
                        <h2 class="mb-4 pb-2 pb-md-0 text-center" style="margin-bottom: 5px !important;">Welcome!</h2>
                        <p class="text-center" style="margin-bottom: 30px;">Enter To access our collection</p>
                        <form action="authentication" method="post">
                        <div class="row">
                            <% String errorMsg = (String) request.getAttribute("errorMsg"); %>
                            <% if (errorMsg != null) { %>
                            <div class="alert alert-danger" role="alert">
                                <%= errorMsg %>
                            </div>
                            <% } %>
                            <div class="col-md-6 mb-4">
                                <div class="form-floating">
                                    <input type="text" class="form-control input" id="floatingInput" placeholder="First Name" name="first_name">
                                    <label for="floatingInput">First Name</label>
                                </div>
                            </div>
                            <div class="col-md-6 mb-4">
                                <div class="form-floating">
                                    <input type="text" class="form-control input" id="floatingInput" placeholder="Last Name" name="last_name">
                                    <label for="floatingInput">Last Name</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md pb-4">
                                <div class="form-floating">
                                    <input type="email" class="form-control input" id="floatingInput" placeholder="name@example.com" name="email" name="email">
                                    <label for="floatingInput">Email address</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-2 pb-2">
                                <div class="form-floating">
                                    <input type="password" class="form-control input" id="floatingInput"
                                           placeholder="Entre Your Password" name="password">
                                    <label for="floatingInput">Password</label>
                                </div>
                            </div>
                            <div class="col-md-6 mb-2 pb-2">
                                <div class="form-floating">
                                    <input type="password" class="form-control input" id="floatingInput"
                                           placeholder="Confirm Your Password" name="confirm_password">
                                    <label for="floatingInput">Confirm Password</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" required="">
                            <label class="form-check-label" for="invalidCheck3">
                                Agree to terms and conditions
                            </label>
                            <div class="invalid-feedback">
                                You must agree before submitting.
                            </div>
                        </div>
                        <div class="mt-4 pt-2">
                            <input class="full-width-button" type="submit" value="Register" formaction="authentication?action=register">
                        </div>
                        </form>
                        <p class="text-center">Already a member?<span style="margin-left: 10px;"><a href="Login.jsp">Login
                    Here</a></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>

</html>
