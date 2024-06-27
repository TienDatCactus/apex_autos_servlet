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
    <link rel="apple-touch-icon" sizes="180x180" href="assets/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon/favicon-16x16.png">
    <link rel="manifest" href="assets/favicon/site.webmanifest">
    <title>Admin - Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="assets/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
   <style>
        .card-custom {
            border: 1px solid #ddd;
            border-radius: 0.5rem;
        }

        .card-header-custom {
            background-color: #f8f9fa;
            border-bottom: 1px solid #ddd;
            padding: 0.75rem 1.25rem;
        }

        .card-title {
            font-size: 1.25rem;
            font-weight: 500;
            color: #333;
        }

        .table-custom th,
        .table-custom td {
            vertical-align: middle;
        }

        .table-custom th {
            font-weight: 500;
            background-color: #f8f9fa;
        }

        .table-custom td button {
            margin-right: 0.25rem;
        }

        .breadcrumb {
            background-color: transparent;
        }

        .btn-sm {
            padding: 0.25rem 0.5rem;
            font-size: 0.875rem;
        }

        .modal-content {
            border-radius: 0.5rem;
        }

        .text-primary {
            color: #007bff !important;
        }
    </style>
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
                            User Management
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                            data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="dashboard?state=user">Users List</a>
                                <a class="nav-link" href="dashboard?state=role">Roles</a>
                            </nav>
                        </div>
                        <a class="nav-link" href="dashboard?state=seller">
                            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                            Sellers
                        </a>

                        <div class="sb-sidenav-menu-heading">Others</div>
                        <a class="nav-link" href="dashboard?state=chart">
                            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                            Total Profits
                        </a>
                        <a class="nav-link" href="dashboard?state=setting">
                            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                            Page Settings
                        </a>
                        <!-- <a class="nav-link" href="tables.html">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            Tables
                        </a> -->
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Logged in as:</div>
                    nigga Admin
                </div>
            </nav>
        </div>
        <div id="layoutSidenav_content">
        <main class="container-fluid px-4">
            <h1 class="mt-4 display-4 text-primary">Seller Management</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">Manage Sellers</li>
            </ol>

            <div class="card card-custom mb-4 shadow-sm">
                <div class="card-header card-header-custom">
                    <h5 class="card-title">Seller Approvals</h5>
                </div>
                <div class="card-body">
                   <table class="table table-striped table-custom">
    <thead>
        <tr>
            <!--<th>Seller Name</th>-->
            <th>Email</th>
            <th>Application Date</th>
             <th>Approve/Reject Date</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${lstSeller}" var="s">
        <tr>
<!--            <td data-bs-toggle="collapse" data-bs-target="#description1" aria-expanded="false"
                aria-controls="description1">John Doe</td>-->

            <td>${s.email}</td>
            <td>${s.application_date}</td>
            <td>${s.approved_date}</td>
            <td><span class="badge bg-warning">${s.status}</span></td>
            <td  <c:if test="${s.status == 'Pending'}">style="display: flex"</c:if>>
                <c:if test="${s.status == 'Pending'}">
                <form action="/apex_autos_servlet/admin/seller/confirm" method="post">
                    <input type="hidden" value="${s.user_id}" name="id"/>
                    <input type="hidden" value="Approved" name="status"/>
                    <button class="btn btn-success btn-sm" type="submit">Approve</button>
                </form>
                    <form action="/apex_autos_servlet/admin/seller/confirm" method="post">
                    <input type="hidden" value="${s.user_id}" name="id"/>
                    <input type="hidden" value="Rejected" name="status"/>
                    <button class="btn btn-danger btn-sm" type="submit">Reject</button>
                </form>
                    </c:if>
            </td>
           
        </tr> </c:forEach>
<!--   <tr id="description1" class="collapse">
            <td colspan="5">
                <div class="accordion-body">
                    <h6>Description:</h6>
                    <p>I want to sell handcrafted items.</p>
                </div>
            </td>
        </tr>-->

        <!-- More rows as needed -->
    </tbody>
</table>
                </div>
            </div>

<!--            <div class="card card-custom mb-4 shadow-sm">
                <div class="card-header card-header-custom">
                    <h5 class="card-title mb-0">Approved Sellers</h5>
                </div>
                <div class="card-body p-3">
                    <table class="table table-hover table-bordered table-custom">
                        <thead>
                            <tr>
                                <th>Seller Name</th>
                                <th>Email</th>
                                <th>Approval Date</th>
                                <th>Total Sales</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>John Doe</td>
                                <td>johndoe@example.com</td>
                                <td>2024-05-20</td>
                                <td>$15,000</td>
                            </tr>
                            <tr>
                                <td>Jane Smith</td>
                                <td>janesmith@example.com</td>
                                <td>2024-05-22</td>
                                <td>$12,000</td>
                            </tr>
                             More rows as needed 
                        </tbody>
                    </table>
                </div>
            </div>-->

            

        </main>
    </div>

   
</body>

<script src="assets/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
    crossorigin="anonymous"></script>
<script src="assets/js/datatables-simple-demo.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.6/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
    
</html>