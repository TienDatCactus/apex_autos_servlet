<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <a class="navbar-brand ps-3" href="sellerc">Start Bootstrap</a>
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
                        <h1 class="mt-4">Car Categories</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="sellerc">Dashboard</a></li>
                            <li class="breadcrumb-item active">Car Categories</li>
                        </ol>

                        <!-- Form to Add Category -->
                        <div class="card mb-4">
                            <div class="card-header">
                                <h5 class="card-title"> Category Manage</h5>
                            </div>
                            <div class="card-body">
                                <form action="category?action=edit" method="Post">

                                    <div class="mb-3">
                                        
                                        <input type="hidden" class="form-control" id="idEditInput" name="id">
                                        
                                        <label for="name" class="form-label">Category Name</label>
                                        <input type="text" class="form-control" id="nameEditInput" name="name"
                                               placeholder="Enter category name">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Update Category</button>
                                </form>
                            </div>
                        </div>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="margin-left: 1050px">
                            Add new category
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Add Category</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="category?action=add" method="POST">

                                            <div class="mb-3">
                                                <label for="categoryName" class="form-label">Category Name</label>
                                                <input type="text" class="form-control" id="categoryName" name="categoryName"
                                                       placeholder="Enter category name">
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary">Add Category</button>
                                            </div>
                                        </form>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <!-- Table to Display Categories -->
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Categories Table
                            </div>
                            <div class="card-body">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Category ID</th>
                                            <th>Category Name</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="categoriesTableBody">
                                        <c:forEach items="${carCategory}" var="cc">
                                            <tr>
                                                <td name="id">${cc.id}</td>
                                                <td name="name">${cc.name}</td>
                                                <th>
                                                    <button class="btn-primary btn" onclick="
                                                            editProductModal(this)"> Edit </button>

                                                </th>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>S
                </main>
            </div>
        </div>
    </body>
    <script>
        function editProductModal(button) {
            let id = $(button).closest('tr').find('td[name="id"]').text().trim();
            let name = $(button).closest('tr').find('td[name="name"]').text().trim();
            $('#idEditInput').val(id);
            $('#nameEditInput').val(name);
            
             console.log('id:', id);
            console.log('name:', name);
        }
    </script>
    <footer>
        <div class="container-fluid">
            <div class="d-sm-flex justify-content-center justify-content-sm-between py-2 small">
                <div class="text-center">Your footer content goes here.</div>
            </div>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
    crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/js/datatables-simple-demo.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</html>