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
                        <div class="sb-sidenav-menu-heading">Platform Management ${dat}</div>
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
                                <h1 class="mt-4">Cars' Brands & Categories </h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                    <li class="breadcrumb-item active"> Brands & Categories</li>
                                </ol>

                               
                                <div class="row">
                                    <div class="col-xl-6">
                                        <div class="card mb-4">
                                            <div class="card-header">
                                                <i class="fas fa-table me-1"></i>
                                                Car's Brands
                                            </div>
                                            <div class="card-body">
                                                <table id="brand" >
                                                    <thead>
                                                        <tr>
                                                            <th>Id</th>
                                                            <th>Name</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
<c:forEach var="cb" items="${carBrand}">
    <c:if test="${cb.id == (update_brand_id)}">
        <c:set var="nb" value="${cb}"></c:set>
    </c:if>
                                                        <tr>
                                                            <td>${cb.id}</td>
                                                            <td>${cb.name}</td>
                                                            <td><a href="dashboard?state=attributes&role=brand&type=update&id=${cb.id}"
                                                                        class="btn btn-outline-success m-1"
                                                                       >Update</a>
                                                        </tr>
</c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="card mb-4">
                                            <div class="card-header">
                                                <i class="fas fa-table me-1"></i>
                                                Car's Categories
                                            </div>
                                            <div class="card-body">
                                                <table id="cate">
                                                    <thead>
                                                        <tr>
                                                            <th>Id </th>
                                                            <th>Name</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody >
<c:forEach var="cc" items="${carCategory}">
    <c:if test="${cc.id == (update_cate_id)}">
        <c:set var="nc" value="${cc}"></c:set>
    </c:if>
                                                        <tr>
                                                            <td>${cc.id}</td>
                                                            <td>${cc.name}</td>
                                                            <td><a href="dashboard?state=attributes&role=cate&type=update&id=${cc.id}"
                                                                        class="btn btn-outline-success m-1"
                                                                       >Update</a>
                                                        </tr>
</c:forEach>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="col-xl-6">
                                        <div class="card mb-4">
                                            <div class="card-header">
                                                <h5 class="card-title">Modify Brands</h5>
                                            </div>
                                            <div class="card-body">
                                                <form id="addRoleForm" method="post" action="dashboard?state=attributes&role=brand&do=check">
                                                    <div class="mb-3">
                                                       <input type="hidden" name="brandId" value="${nb == null ? "add" : nb.id}">
                                                        <label for="brand" class="form-label">Enter Brand's name</label>
                                                        <input type="text" class="form-control" id="brand"
                                                               name="brand" placeholder="Chevrolet, Honda..." value="${nb.name}">
                                                    </div>
                                                    <input type="submit" class="btn btn-success" value="Save changes">
                                                     <input type="button" class="btn btn-danger" value="Cancel" onclick="location.href='dashboard?state=attributes'">
                                                </form>
<c:if test="${not empty errorMsg2}">
                                                    <div class="form-msg mt-2 alert alert-danger w-75" role="alert">
    ${errorMsg2}</div>

</c:if>
<c:if test="${not empty successMsg2}">
                                                    <div class="form-msg mt-2 alert alert-success w-75" role="alert">
    ${successMsg2}
                                                    </div>
</c:if>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="card mb-4">
                                            <div class="card-header">
                                                <h5 class="card-title">Modify Categories</h5>
                                            </div>
                                            <div class="card-body">
                                                <form id="addRoleForm" method="post" action="dashboard?state=attributes&role=cate&do=check">
                                                    <div class="mb-3">
                                                      <input type="hidden" name="cateId" value="${nc == null ? "add" : nc.id}">
                                                        <label for="cate" class="form-label">Enter Category's name</label>
                                                        <input type="text" class="form-control" id="cate" name="cate"
                                                            placeholder="Sports , Sedans ..." value="${nc.name}">
                                                    </div>
                                                    <input type="submit" class="btn btn-success" value="Save changes">
                                                    <input type="button" class="btn btn-danger" value="Cancel" onclick="location.href='dashboard?state=attributes'">
                                                </form>
<c:if test="${not empty errorMsg1}">
                                                    <div class="form-msg mt-2 alert alert-danger w-75" role="alert">
    ${errorMsg1}</div>

</c:if>
<c:if test="${not empty successMsg1}">
                                                    <div class="form-msg mt-2 alert alert-success w-75" role="alert">
    ${successMsg1}
                                                    </div>
</c:if>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </main>

                        <!-- Edit Role Modal -->
                        <script>
                            var radioButtons = document.querySelectorAll('input[type=" radio"]'); // Add event listener to each radio button 
                            radioButtons.forEach(function (radioButton) {
                                radioButton.addEventListener('click', function (event) {
                                    event.preventDefault(); // Prevent default click behavior }); });
                                    function updatePermissions() {
                                        var
                                            selectedRoleId = document.getElementById("selectRole").value; var
                                                radios = document.getElementsByName("permission"); for (var i = 0; i <
                                                    radios.length; i++) {
                                            if (radios[i].value === selectedRoleId) {
                                                radios[i].checked = true;
                                            } else { radios[i].checked = false; }
                                        }
                                    }
                        </script>
            </div>
        </div>
    </body>
    <script>
        function editProductModal(button) {
            let id = $(button).closest('tr').find('td[name="id"]').text().trim();
            let name = $(button).closest('tr').find('td[name="name"]').text().trim();
            $('#idEditInput').val(id);
            $('#nameEditInput').val(name);
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
    crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/js/datatables-simple-demo.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</html>