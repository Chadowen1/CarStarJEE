<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
    <title>Admin</title>
</head>
<style>

    body{
        background-color: #e3f6f5 !important;
    }

    .full-width-button {
        width: 100%;
        display: block;
        background-color: blue;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 15px;
    }

</style>
<body>
<section class="vh-100 gradient-custom">
    <div class="container py-5 h-100">
        <div class="row justify-content-center align-items-center h-100">
            <div class="col-12 col-lg-9 col-xl-7">
                <div class="card shadow-2-strong card-registration">
                    <div class="card-body p-4 p-md-5" style="background-color: #e3f6f5 !important;">
                        <h1 class="mb-4 pb-2 pb-md-0 text-center"
                            style="margin-bottom: 5px !important; font-size: 65px;">CarStar.
                        </h1>
                        <h2 class="mb-4 pb-2 pb-md-0 text-center" style="margin-bottom: 50px !important;">Admin Space
                        </h2>
                        <% String errorMessage = (String) session.getAttribute("errorMessage"); %>
                        <% if (errorMessage != null) { %>
                        <p style="color: red;"><%= errorMessage %></p>
                        <% } %>
                        <form action="authentication" method="post">
                            <% String errorMsg = (String) request.getAttribute("errorMsg"); %>
                            <% if (errorMsg != null) { %>
                            <div class="alert alert-danger" role="alert">
                                <%= errorMsg %>
                            </div>
                            <% } %>
                            <div class="row">
                                <div class="col-md-6 mb-4">
                                    <div class="form-floating">
                                        <input type="text" class="form-control input" id="floatingInput"
                                               placeholder="ID" name="admin_id">
                                        <label for="floatingInput">ID</label>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-4">
                                    <div class="form-floating">
                                        <input type="text" class="form-control input" id="floatingInput"
                                               placeholder="Password" name="admin_pass">
                                        <label for="floatingInput">Password</label>
                                    </div>
                                </div>
                            </div>
                            <div class="mt-4 pt-2">
                                <button class="full-width-button" type="submit" formaction="authentication?action=adminlogin">Access</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>