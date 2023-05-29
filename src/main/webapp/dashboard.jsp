<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
    <title>Admin</title>
</head>

<body>
<div class="container col-xl-10 col-xxl-8 px-4 py-5">
    <div class="row align-items-center g-lg-5 py-5">
        <h1 class="alert-heading text-center">Admin Dashboard</h1>
        <div class="col-md-10 mx-auto col-lg-5">
            <form class="p-4 p-md-5 border rounded-3 bg-body-tertiary" action="" method="post">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="floatingInput" name="mfacturer">
                    <label for="floatingInput">Manufacturer</label>
                </div>
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="floatingInput" name="model">
                    <label for="floatingInput">Model</label>
                </div>
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="floatingInput" name="url1">
                    <label for="floatingInput">Image URL</label>
                </div>
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="floatingInput" name="url2">
                    <label for="floatingInput">Hover Image URL</label>
                </div>
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="floatingInput" placeholder="000.000" name="price">
                    <label for="floatingInput">Price</label>
                </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit">Add</button>
                <hr class="my-4">
                <small class="text-body-secondary">Verify Your Info before saving.</small>
            </form>
        </div>
        <div class="col-md-10 mx-auto col-lg-5">
            <form class="p-4 p-md-5 border rounded-3 bg-body-tertiary">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="floatingInput">
                    <label for="floatingInput">Manufacturer</label>
                </div>
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="floatingInput">
                    <label for="floatingInput">Model</label>
                </div>
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="floatingInput" placeholder="000.000">
                    <label for="floatingInput">Price</label>
                </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit">List</button>
                <hr class="my-4">
            </form>
        </div>
    </div>
    <div class="row align-items-center g-lg-5 py-5">
        <table class="table table-hover">
            <thead>
            <tr class="table-primary">
                <th scope="col">ID</th>
                <th scope="col">Manufacturer</th>
                <th scope="col">Model</th>
                <th scope="col">Price</th>
                <th scope="col">Image</th>
                <th scope="col">Hover Image</th>
            </tr>
            </thead>
            <tbody>
            <tr class="table-primary">
                <th scope="row">Primary</th>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
            </tr>
            <tr class="table-primary">
                <th scope="row">Primary</th>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
            </tr>
            <tr class="table-primary">
                <th scope="row">Primary</th>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
            </tr>
            <tr class="table-primary">
                <th scope="row">Primary</th>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
                <td>1</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>

</html>