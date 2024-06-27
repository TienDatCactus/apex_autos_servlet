<!DOCTYPE html>
<html lang="en">
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                        <li><a class="dropdown-item" href="logout">Logout</a></li>
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
                                    <a class="nav-link" href="dashboard?state=attributes">Attributes</a>
                                    <a class="nav-link" href="dashboard?state=detail">Details</a>
                                    <a class="nav-link" href="dashboard?state=specs">Specifications</a>
                                    <a class="nav-link" href="dashboard?state=imge">Car Images</a>
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
                        ${seller.email}
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">General Settings</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">General Settings</li>
                        </ol>
                        <div class="row">

                            <c:choose>
                                <c:when test="${empty tradeMark}">

                                    <div class="col-6">
                                        <div class="card mb-4" id="editProductModal">
                                            <div class="card-header">
                                                <h5 class="card-title">Add General Settings</h5>
                                            </div>
                                            <div class="card-body">
                                                <form id="generalSettingsForm" action="dashboard?state=setting&do=add" method="post" enctype="multipart/form-data">
                                                    
                                                    <div class="mb-3">
                                                        <label for="nameEditInput" class="form-label">Site Name</label>
                                                        <input type="text" class="form-control"  placeholder="Enter site name" name="nameEditInput">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="siteLogo" class="form-label">Site Logo</label>
                                                        <input type="file" class="form-control" id="siteLogo" onchange="displayImage(this)" name="image" multiple>
                                                        <img id="previewImage" style="max-width: 300px; max-height: 300px;">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="nameEditInput" class="form-label">Describe</label>
                                                        <input type="text" class="form-control"  placeholder="Enter describe" name="describeEditInput">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="privacyEditInput" class="form-label">Privacy Policy</label>
                                                        <textarea class="form-control"  rows="4" name="privacyEditInput" placeholder="Enter privacy policy"></textarea>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="termEditInput" class="form-label">Terms & Conditions</label>
                                                        <textarea class="form-control"  rows="4" name="termEditInput" placeholder="Enter terms & conditions"></textarea>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Add</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </c:when>
                                <c:otherwise>

                                    <div class="col-6">
                                        <div class="card mb-4" id="editProductModal">
                                            <div class="card-header">
                                                <h5 class="card-title">Update General Settings</h5>
                                            </div>
                                            <div class="card-body">
                                                <form id="generalSettingsForm" action="dashboard?state=setting&do=update" method="post" enctype="multipart/form-data">
                                                    <div class="mb-3">
                                                        <input type="hidden" class="form-control" id="idEditInput" name="idEditInput">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="nameEditInput" class="form-label">Site Name</label>
                                                        <input type="text" class="form-control" id="nameEditInput" placeholder="Enter site name" name="nameEditInput">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="siteLogo" class="form-label">Site Logo</label>
                                                        <input type="file" class="form-control" id="siteLogo" onchange="displayImage(this)" name="image" multiple>
                                                        <img id="previewImage" style="max-width: 300px; max-height: 300px;">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="nameEditInput" class="form-label">Describe</label>
                                                        <input type="text" class="form-control" id="describeEditInput" placeholder="Enter describe" name="describeEditInput">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="privacyEditInput" class="form-label">Privacy Policy</label>
                                                        <textarea class="form-control" id="privacyEditInput" rows="4" name="privacyEditInput" placeholder="Enter privacy policy"></textarea>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="termEditInput" class="form-label">Terms & Conditions</label>
                                                        <textarea class="form-control" id="termEditInput" rows="4" name="termEditInput" placeholder="Enter terms & conditions"></textarea>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Update Settings</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                </c:otherwise>
                            </c:choose>






                            <div class="col-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-table me-1"></i>
                                        Car's Trade Mark
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Site Name</th>                                                  
                                                    <th>Site Logo</th> 
                                                    <th>Describe</th> 
                                                    <th>Privacy Policy</th>
                                                    <th>Terms & Conditions</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="tm" items="${tradeMark}">
                                                    <tr>
                                                <input type="hidden" value="${tm.trademard_id}" name="idz">
                                                <td name="name">${tm.name}</td>
                                                <td name="logo">
                                                    <c:forEach items="${tm.url_logo}" var="obj">
                                                        <img src="${obj}" alt="Logo" style="max-width: 100px; max-height: 100px;">
                                                    </c:forEach>
                                                </td>
                                                <td name="describe">${tm.describe}</td>
                                                <td name="privacy">${tm.privacy}</td>
                                                <td name="term">${tm.terms}</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary" 
                                                            data-toggle="modal" data-target="#editProductModal"
                                                            onclick="editProductModal('${tm.trademard_id}', '${tm.name}', '${tm.url_logo[0]}', '${tm.describe}', '${tm.privacy}', '${tm.terms}')">
                                                        Update
                                                    </button>
                                                </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </main>
            </div>

        </div>
    </body>
    <script>
        function editProductModal(id, name, logo,describe, privacy, terms) {
            document.getElementById('idEditInput').value = id;
            document.getElementById('nameEditInput').value = name;

            // Display the first logo image in the modal
            var previewImage = document.getElementById('previewImage');
            previewImage.src = logo;
            document.getElementById('describeEditInput').value = describe;
            document.getElementById('privacyEditInput').value = privacy;
            document.getElementById('termEditInput').value = terms;
        }


        function displayImage(input) {
            var previewImage = document.getElementById("previewImage");
            var file = input.files[0];
            var reader = new FileReader();

            reader.onload = function (e) {
                previewImage.src = e.target.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                previewImage.src = "#";
            }
        }
    </script>
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