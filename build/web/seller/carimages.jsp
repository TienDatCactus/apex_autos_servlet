<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="ApexAutos" />
    <meta name="keywords" content="ApexAutos" />
    <meta name="author" content="ApexAutos" />
    <link rel="apple-touch-icon" sizes="180x180" href="assets/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon/favicon-16x16.png">
    <link rel="manifest" href="assets/favicon/site.webmanifest">
    <title>Admin - Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="assets/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="index.html">Start Bootstrap</a>
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
                    <li><a class="dropdown-item" href="#!">Logout</a></li>
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
                    <h1 class="mt-4">Car Listings</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active">Car Listings</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-body">
                            DataTables is a third party plugin that is used to generate the demo table below. For more
                            information about DataTables, please visit the
                            <a target="_blank" href="https://datatables.net/">official DataTables documentation</a>.
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <h5 class="card-title">Add Car</h5>
                                </div>
                                <div class="card-body">
                                    <form id="addCarForm">
                                        <div class="mb-3 row">
                                            <div class="col-6">
                                                <label for="carName" class="form-label">Car Id</label>
                                                <input type="number" class="form-control" id="carId"
                                                    placeholder="Enter car's Id">
                                            </div>
                                            <div class="col-6">
                                                <label for="carName" class="form-label">Car Name</label>
                                                <input type="text" class="form-control" id="carName"
                                                    placeholder="Enter car name">
                                            </div>
                                        </div>
                                        <div class="mb-3 ">
                                            <label for="carImage" class="form-label">Car Image</label>
                                            <input type="file" class="form-control" id="carImage" accept="image/*">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Add</button>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-table me-1"></i>
                                    Car Listings
                                </div>
                                <div class="card-body">
                                    <table id="carTable" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Car Image</th>
                                                <th>Car Name</th>
                                                <th>Car Id</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>

        <script>
            document.getElementById('addCarForm').addEventListener('submit', function (event) {
                event.preventDefault();

                var carName = document.getElementById('carName').value;
                var carImageInput = document.getElementById('carImage');
                var carImage = carImageInput.files[0];

                if (carName && carImage) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        var table = document.getElementById('carTable').getElementsByTagName('tbody')[0];
                        var newRow = table.insertRow();

                        var cell1 = newRow.insertCell(0);
                        var cell2 = newRow.insertCell(1);

                        var img = document.createElement('img');
                        img.src = e.target.result;
                        img.alt = carName;
                        img.style.width = '100px';

                        cell1.appendChild(img);
                        cell2.innerText = carName;

                        document.getElementById('addCarForm').reset();
                    };
                    reader.readAsDataURL(carImage);
                }
            });
        </script>

    </div>
</body>

<footer>
    <div class="container-fluid">
        <div class="d-sm-flex justify-content-center justify-content-sm-between py-2 small">
            <div class="text-center">Your footer content goes here.</div>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
<script src="assets/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
    crossorigin="anonymous"></script>
<script src="assets/js/datatables-simple-demo.js"></script>

</html>