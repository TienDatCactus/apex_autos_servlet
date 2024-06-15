<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                            <input class="form-control" type="text" placeholder="Search for..."
                                aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                            <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i
                                    class="fas fa-search"></i></button>
                        </div>
                    </form>
                    <!-- Navbar-->
                    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
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
                                        data-bs-target="#collapseLayouts" aria-expanded="false"
                                        aria-controls="collapseLayouts">
                                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                        Cars Management
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                                        data-bs-parent="#sidenavAccordion">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="dashboard?state=attributes">Attributes</a>
                                            <a class="nav-link" href="dashboard?state=detail">Details</a>
                                            <a class="nav-link" href="dashboard?state=specs">Specifications</a>
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
                                <h1 class="mt-4">Car Specifications</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Car Specifications</li>
                                </ol>
                                <div class="card mb-4">
                                    <div class="card-body">
                                        DataTables is a third-party plugin used to generate the demo table below. For
                                        more
                                        information about DataTables, please visit the
                                        <a target="_blank" href="https://datatables.net/">official DataTables
                                            documentation</a>.
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card mb-4">
                                            <div class="card-header">
                                                <i class="fas fa-table me-1"></i>
                                                Car's Specifications
                                            </div>
                                            <div class="card-body">
                                                <table id="datatablesSimple" class="table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Id</th>
                                                            <th>Name</th>
                                                            <th>Cylinders</th>
                                                            <th>Horsepower</th>
                                                            <th>Weight</th>
                                                            <th>Acceleration</th>
                                                            <th>Origin</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tfoot>
                                                        <tr>
                                                            <th>Id</th>
                                                            <th>Name</th>
                                                            <th>Cylinders</th>
                                                            <th>Horsepower</th>
                                                            <th>Weight</th>
                                                            <th>Acceleration</th>
                                                            <th>Origin</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </tfoot>
                                                    <tbody>
<c:forEach var="cl" items="${carList}">
    <c:if test="${cl.car_id == (update_specs_id)}">
        <c:set var="nl" value="${cl}"></c:set>
    </c:if>
                                                            <tr>
                                                                <td>${cl.car_id }</td>
                                                                <td>${cl.name}</td>
                                                                <td>${cl.cylinders == 0 ? "Not updated !" : cl.cylinders}</td>
                                                                <td>${cl.horsepower == 0 ? "Not updated !" : cl.horsepower}</td>
                                                                <td>${cl.weight == 0 ? "Not updated !" : cl.weight}</td>
                                                                <td>${cl.acceleration == 0 ? "Not updated !" : cl.acceleration}</td>
                                                                <td>${cl.origin== null ? "Not updated !" : cl.origin}</td>
                                                                <td>
                                                                    <a href="dashboard?state=specs&type=update&id=${cl.car_id}"
                                                                        class="btn btn-success m-1">Update</a>
                                                                </td>
                                                            </tr>
</c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card mb-4">
                                            <div class="card-header">
<c:set var="prefix" value="${nl.car_id != null ? '#' : ''}" />
<c:set var="id" value="${prefix}${nl.car_id}" />
                                                <h5 class="card-title">Modify Car: ${id}</h5>
                                            </div>
                                            <div class="card-body">
                                                <form action="dashboard?state=specs&do=update" method="post">
                                                  
                                                        <div class="mb-3 ">
                                                        <label for="cylinders" class="form-label">Cylinders</label>
                                                        <input type="number" class="form-control" id="cylinders"
                                                            name="cylinders" placeholder="Enter number of cylinders"
                                                            value="${nl.cylinders}">
                                                    </div>
                                                   
                                                    <div class="row">
                                                        <div class="mb-3 col-6">
                                                            <label for="horsepower"
                                                                class="form-label">Horsepower</label>
                                                            <input type="number" class="form-control" id="horsepower"
                                                                name="horsepower" step="0.01" placeholder="Enter horsepower"
                                                                value="${nl.horsepower}">
                                                        </div>
                                                        <div class="mb-3 col-6">
                                                            <label for="weight" class="form-label">Weight</label>
                                                            <input type="number" step="0.01" class="form-control" id="weight"
                                                                name="weight" placeholder="Enter weight"
                                                                value="${nl.weight}">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-6">
                                                            <label for="acceleration"
                                                                class="form-label">Acceleration</label>
                                                            <input type="number" class="form-control" id="acceleration"
                                                                name="acceleration" step="0.01" placeholder="Enter acceleration"
                                                                value="${nl.acceleration}">
                                                        </div>
                                                        <div class="mb-3 col-6">
                                                            <label for="origin" class="form-label">Origin</label>
                                                            <input type="text" class="form-control" id="origin"
                                                                name="origin" placeholder="Enter origin"
                                                                value="${nl.origin}">
                                                        </div>
                                                    </div>
                                                    <div class="d-flex justify-content-between">
                                                        <div>
                                                            <input type="hidden" name="carId" value="${nl.car_id}">
                                                            <input type="submit" class="btn btn-warning" value="Update"
                                                                name="update">
                                                        </div>
                                                        <input type="button"
                                                            onclick="(() => { location.href='dashboard?state=user'; })()"
                                                            class="btn btn-primary" id="cancel" value="Cancel"
                                                            name="cancel">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </main>
                    </div>
                </div>
            </body>


            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                crossorigin="anonymous"></script>
            <script src="assets/js/scripts.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                crossorigin="anonymous"></script>
            <script src="assets/demo/chart-area-demo.js"></script>
            <script src="assets/demo/chart-bar-demo.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                crossorigin="anonymous"></script>
            <script src="assets/js/datatables-simple-demo.js"></script>
            <script src="assets/js/scripts.js"></script>


            <script>

                var emailInput = document.getElementById("email");
                var passwordInput = document.getElementById("password");



                window.onload = function () {
                    var readOnly = localStorage.getItem('readOnly');

                    if (readOnly === 'true') {
                        emailInput.setAttribute('disabled', true);
                        passwordInput.setAttribute('disabled', true);
                    } else {
                        emailInput.removeAttribute('disabled');
                        passwordInput.removeAttribute('disabled');
                    }
                };


            </script>
<script>
    if ( window.history.replaceState ) {
        window.history.replaceState( null, null, window.location.href );
    }
</script>
            </html>