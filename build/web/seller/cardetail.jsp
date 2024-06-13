<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="ApexAutos" />
        <meta name="keywords" content="ApexAutos" />
        <meta name="author" content="ApexAutos" />
        <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/seller/assets/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/seller/assets/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/seller/assets/favicon/favicon-16x16.png">
        <link rel="manifest" href="${pageContext.request.contextPath}/seller/assets/favicon/site.webmanifest">
        <title>Admin - Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/seller/assets/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>

    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="sellerc">Seller Dashboard</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                    class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
                           aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i
                            class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li>
                            <hr class="dropdown-divider" />
                        </li>
                        <li><a class="dropdown-item" href="login">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">Core</div>
                        <a class="nav-link" href="dashboard">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Dashboard
                        </a>
                        <div class="sb-sidenav-menu-heading">Platform Management</div>
                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                            data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                            Cars Management
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                            data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="dashboard?state=brand&seller=${seller.user_id}">Brands</a>
                                <a class="nav-link" href="dashboard?state=category&seller=${seller.user_id}">Categories</a>
                                
                                <a class="nav-link" href="dashboard?state=detail&seller=${seller.user_id}">Details</a>
                            </nav>
                        </div>
                        <a class="nav-link" href="orders.html">
                            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                            Orders
                        </a>

                        <div class="sb-sidenav-menu-heading">Others</div>
                        <a class="nav-link" href="chart">
                            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                            Total Profits
                        </a>
                        <!-- <a class="nav-link" href="tables.html">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            Tables
                        </a> -->
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Logged in as:</div>
${seller.email}
                </div>
            </nav>
        </div>
              <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Car Details</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="sellerc">Dashboard</a></li>
                    <li class="breadcrumb-item active">Car Details</li>
                </ol>

                <form id="addCarDetailsForm" action="dashboard?state=detail&action=edit&seller=${seller.user_id}"
                                class="mb-0" method="POST" enctype="multipart/form-data">

                                <div class="row">
                                    <!-- First Card -->
                                    <div class="col-md-6 mb-3">
                                        <div class="card">
                                            <div class="card-header">
                                                Featured
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                <div class="mb-3 col-6">
                                                    <label for="nameEditInput" class="form-label">Name</label>
                                                
                                                       <select class="form-select" aria-label="Default select example" name="id">
  <option selected>Wanted car's ID</option>
<c:forEach var="cl" items="${carList}">
  <option value="${cl.car_id}">${cl.car_id}</option>
</c:forEach>
</select>
                                                </div>
                                                <div class="mb-3 col-6">
                                                    <label for="nameEditInput" class="form-label">Name</label>
                                                    <input type="text" class="form-control" id="nameEditInput"
                                                        placeholder="Enter car name" name="name">
                                                </div>
                                                    </div>
                                                <div class="mb-3">
                                                    <label for="model_yearEditInput" class="form-label">Model
                                                        Year</label>
                                                    <input type="date" class="form-control" id="model_yearEditInput"
                                                        name="model_year" placeholder="Enter model year">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="priceEditInput" class="form-label">Price</label>
                                                    <input type="number" min="1" step="0.01" class="form-control" id="priceEditInput"
                                                        placeholder="Enter price" name="price"/>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-success my-3">Update Car</button>
                                    </div>

                                    <!-- Second Card -->
                                    <div class="col-md-6 mb-3">
                                        <div class="card">
                                            <div class="card-header">
                                                Featured
                                            </div>
                                            <div class="card-body">
                                                <div class="mb-3">
                                                    <label for="descriptionEditInput"
                                                        class="form-label">Description</label>
                                                    <textarea class="form-control" id="descriptionEditInput" rows="3"
                                                        name="description" placeholder="Enter description"></textarea>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="carbrEditInput" class="form-label">Brand</label>
                                                    <select class="form-select" id="carbrEditInput" name="brand">
<c:forEach items="${carBrand}" var="cb">
                                                            <option value="${cb.id}">${cb.name}</option>
</c:forEach>
                                                    </select>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="carcaEditInput" class="form-label">Category</label>
                                                    <select class="form-select" id="carcaEditInput" name="category">
<c:forEach items="${carCategory}" var="cc">
                                                            <option value="${cc.id}">${cc.name}</option>
</c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>


               

                <!-- Modal -->
             <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-lg-custom">
        <div class="modal-content">
            <div class="modal-header modal-header-custom">
                <h5 class="modal-title" id="exampleModalLabel">Add new car</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="addCarDetailsForm" action="dashboard?state=detail&action=add&seller=${seller.user_id}" method="POST" enctype="multipart/form-data">
                    
                    <div class="row">
                        <!-- First Card -->
                        <div class="col-md-6 mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="mb-3">
                                        <label for="name" class="form-label">Name</label>
                                        <input type="text" class="form-control" id="name" placeholder="Enter car name" name="name1">
                                    </div>
                                    <div class="mb-3">
                                        <label for="model_year" class="form-label">Model Year</label>
                                        <input type="date" class="form-control" id="model_year" name="model_year1" placeholder="Enter model year">
                                    </div>
                                    <div class="mb-3">
                                        <label for="price" class="form-label">Price</label>
                                         <input type="number" min="1" class="form-control" id="priceEditInput"
                                                        placeholder="Enter price" name="price1"/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Second Card -->
                        <div class="col-md-6 mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="mb-3">
                                        <label for="description" class="form-label">Description</label>
                                        <textarea class="form-control" id="description" rows="3" name="description1" placeholder="Enter description"></textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label for="brand" class="form-label">Brand</label>
                                        <select class="form-select" id="brand" name="brand1">
<c:forEach items="${carBrand}" var="cb">
                                                <option value="${cb.id}">${cb.name}</option>
</c:forEach>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label for="category" class="form-label">Category</label>
                                        <select class="form-select" id="category" name="category1">
<c:forEach items="${carCategory}" var="cc">
                                                <option value="${cc.id}">${cc.name}</option>
</c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



                <!-- Table to Display Car Details -->
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        Car Details
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered" id="datatablesSimple">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Cylinders</th>
                                    <th>Horsepower</th>
                                    <th>Weight</th>
                                    <!--<th>Acceleration</th>-->
                                    <th>Model Year</th>
<!--                                    <th>Origin</th>
                                    <th>Price</th>
                                    <th>Description</th>
                                    <th>Brand</th>
                                    <th>Category</th>
                                    <th>Image</th>-->
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
<c:forEach items="${carList}" var="cl">
                                    <tr>
                                        <td>${cl.car_id}</td>
                                        <td>${cl.name}</td>
                                        <td>${cl.cylinders}</td>
                                        <td>${cl.horsepower}</td>
                                        <td>${cl.weight}</td>
                                        <!--<td>${cl.acceleration}</td>-->
                                        <td>${cl.model_year}</td>
<!--                                        <td>${cl.origin}</td>
                                        <td>${cl.price}</td>
                                        <td>${cl.description}</td>
                                        <td>
    <c:forEach items="${carBrand}" var="cb">
        <c:if test="${cb.id == cl.brand_id}">
            ${cb.name}
        </c:if>
    </c:forEach>
                                        </td>-->
<!--                                        <td>
    <c:forEach items="${carCategory}" var="cc">
        <c:if test="${cc.id == cl.category_id}">
            ${cc.name}
        </c:if>
    </c:forEach>
                                        </td>
                                        <td>
                                            <div class="row">
    <c:forEach items="${carImage}" var="ci">
        <c:if test="${ci.car_id == cl.car_id}">
            <c:forEach items="${ci.image_url}" var="obj">
                                                            <img src="${obj}" alt="Car Image" class="col-6 px-1" style="max-width: 100px; max-height: 100px;">
            </c:forEach>
        </c:if>
    </c:forEach>
                                            </div>
                                        </td>-->
                                        <td>
                                            <div class="d-flex">
                                                <button type="button" class="btn btn-primary btn-sm me-2" onclick="editProductModal(this)">Edit</button>
                                                    <button type="button" onclick="location.href='dashboard?state=detail&action=delete&car=${cl.car_id}&seller=${seller.user_id}'" class="btn btn-danger btn-sm">Delete</button>
                                            </div>
                                        </td>
                                    </tr>
</c:forEach>
                            </tbody>
                        </table>
                         <button type="button" class="btn btn-warning mt-3 d-flex align-items-center" data-bs-toggle="modal" data-bs-target="#exampleModal" style="float: right;">
                    Add Car
                </button>
                    </div>
                </div>
            </div>
                                    
        </main>
    </div>

        </div>


    </body>

    <script>
        document.getElementById('image').addEventListener('change', function (event) {
            var files = event.target.files;
            var imagePreviewContainer = document.getElementById('imagePreviewContainer');

            // Clear any existing images in the preview container
            imagePreviewContainer.innerHTML = '';

            // Loop through each selected file
            for (var i = 0; i < files.length; i++) {
                var file = files[i];
                var reader = new FileReader();

                reader.onload = function (e) {
                    // Create a new img element
                    var img = document.createElement('img');
                    img.src = e.target.result;
                    img.alt = 'Image Preview';
                    img.style.display = 'block';
                    img.style.maxWidth = '20%';
                    img.style.height = 'auto';
                    img.style.marginRight = '10px';
                    img.style.marginBottom = '10px';

                    // Append the img element to the container
                    imagePreviewContainer.appendChild(img);
                }

                // Read the file as a DataURL
                reader.readAsDataURL(file);
            }
        });
    </script>
    <script>
        document.getElementById('imageModal').addEventListener('change', function (event) {
            var files = event.target.files;
            var imagePreviewContainer = document.getElementById('imagePreviewModalContainer');

            // Clear any existing images in the preview container
            imagePreviewContainer.innerHTML = '';

            // Loop through each selected file
            for (var i = 0; i < files.length; i++) {
                var file = files[i];
                var reader = new FileReader();

                reader.onload = function (e) {
                    // Create a new img element
                    var img = document.createElement('img');
                    img.src = e.target.result;
                    img.alt = 'Image Preview';
                    img.style.display = 'block';
                    img.style.maxWidth = '20%';
                    img.style.height = 'auto';
                    img.style.marginRight = '10px';
                    img.style.marginBottom = '10px';

                    // Append the img element to the container
                    imagePreviewContainer.appendChild(img);
                }

                // Read the file as a DataURL
                reader.readAsDataURL(file);
            }
        });

    </script>
    <footer>
        <div class="container-fluid">
            <div class="d-sm-flex justify-content-center justify-content-sm-between py-2 small">
                <div class="text-center">Your footer content goes here.</div>
            </div>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
    crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/js/datatables-simple-demo.js"></script>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</html>