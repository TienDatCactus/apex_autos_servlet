<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="ApexAutos" />
    <meta name="keywords" content="ApexAutos" />
    <meta name="author" content="ApexAutos" />
    <link rel="apple-touch-icon" sizes="180x180" href=" assets/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href=" assets/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href=" assets/favicon/favicon-16x16.png">
    <link rel="manifest" href=" assets/favicon/site.webmanifest">
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
           <jsp:include page="navbar.jsp"></jsp:include>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">General Settings</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active">General Settings</li>
                    </ol>

                    <div class="card mb-4">
                        <div class="card-header">
                            <h5 class="card-title">Update General Settings</h5>
                        </div>
                        <div class="card-body">
                            <form id="generalSettingsForm">
                                <div class="mb-3">
                                    <label for="siteName" class="form-label">Site Name</label>
                                    <input type="text" class="form-control" id="siteName" placeholder="Enter site name"
                                        value="Current Site Name">
                                </div>
                                <div class="mb-3">
                                    <label for="siteLogo" class="form-label">Site Logo</label>
                                    <input type="file" class="form-control" id="siteLogo">
                                    <img src="current-logo.png" alt="Current Logo" class="mt-2" style="height: 50px;">
                                </div>
                                <div class="mb-3">
                                    <label for="contactEmail" class="form-label">Contact Email</label>
                                    <input type="email" class="form-control" id="contactEmail"
                                        placeholder="Enter contact email" value="contact@university.com">
                                </div>
                                <div class="mb-3">
                                    <label for="contactPhone" class="form-label">Contact Phone</label>
                                    <input type="text" class="form-control" id="contactPhone"
                                        placeholder="Enter contact phone" value="+1234567890">
                                </div>
                                <div class="mb-3">
                                    <label for="privacyPolicy" class="form-label">Privacy Policy</label>
                                    <textarea class="form-control" id="privacyPolicy" rows="4"
                                        placeholder="Enter privacy policy">Current privacy policy text...</textarea>
                                </div>
                                <div class="mb-3">
                                    <label for="termsConditions" class="form-label">Terms & Conditions</label>
                                    <textarea class="form-control" id="termsConditions" rows="4"
                                        placeholder="Enter terms & conditions">Current terms and conditions text...</textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Update Settings</button>
                            </form>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
    crossorigin="anonymous"></script>
<script src="assets/js/datatables-simple-demo.js"></script>

</html>