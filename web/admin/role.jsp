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
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">User Roles and Permissions</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Roles & Permissions</li>
                                </ol>

                                <div class="row">
                                    <div class="col-xl-6">
                                        <div class="card mb-4">
                                            <div class="card-header">
                                                <h5 class="card-title">Add New Role</h5>
                                            </div>
                                            <div class="card-body">
                                                <form id="addRoleForm" method="post"
                                                    action="dashboard?state=role&do=check">
                                                    <div class="mb-3">
                                                        <label for="user" class="form-label">User's Email</label>
                                                        <input type="text" class="form-control" id="user"
                                                            name="userMail" placeholder="example@niggas.com">
                                                    </div>
                                                    <input type="submit" class="btn btn-primary" value="Check Existed">
                                                </form>
                                                <c:if test="${not empty errorMsg}">
                                                    <div class="form-msg mt-2 alert alert-danger w-75" role="alert">
                                                        ${errorMsg}</div>

                                                </c:if>
                                                <c:if test="${not empty successMsg}">
                                                    <div class="form-msg mt-2 alert alert-success w-75" role="alert">
                                                        ${successMsg}
                                                    </div>
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="card mb-4">
                                            <div class="card-header">
                                                <h5 class="card-title">Manage Permissions</h5>
                                            </div>
                                            <div class="card-body">
                                                <form id="managePermissions"
                                                    action="dashboard?state=role&do=update&user=${ua.user_id}"
                                                    method="post">
                                                    <div class="mb-3">
                                                        <label for="selectRole" class="form-label">Select Role</label>
                                                        <select class="form-select" id="selectRole" name="selectRole"
                                                            onchange="updatePermissions()">
                                                            <option selected>Select a role</option>
                                                            <c:forEach var="rl" items="${roleList}">
                                                                <option value="${rl.role_id}">${rl.role_name}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="permissions" class="form-label">Permissions</label>
                                                        <c:forEach var="rl" items="${roleList}">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio"
                                                                    name="permission" value="${rl.role_id}"
                                                                    id="permission-${rl.role_id}">
                                                                <label class="form-check-label"
                                                                    for="permission-${rl.role_id}">
                                                                    ${rl.role_desc == null ? rl.role_name :
                                                                    rl.role_desc}
                                                                </label>
                                                            </div>
                                                        </c:forEach>
                                                        <!-- Add more permissions as needed -->
                                                    </div>
                                                    <input type="submit" class="btn btn-primary"
                                                        value="Update Permissions">

                                                </form>
                                                <c:if test="${not empty updated}">
                                                    <div class="form-msg mt-2 alert alert-success w-75" role="alert">
                                                        ${updated}
                                                    </div>
                                                </c:if>
                                                <c:if test="${not empty failed}">
                                                    <div class="form-msg mt-2 alert alert-danger w-75" role="alert">
                                                        ${failed}</div>

                                                </c:if>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="col-xl-6">
                                        <div class="card mb-4">
                                            <div class="accordion" id="rolesAccordion">
                                                <c:forEach var="rl" items="${roleList}">
                                                    <div class="accordion-item">
                                                        <h2 class="accordion-header" id="heading-${rl.role_id}">
                                                            <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse"
                                                                data-bs-target="#collapse-${rl.role_id}"
                                                                aria-expanded="false"
                                                                aria-controls="collapse-${rl.role_id}">
                                                                ${rl.role_name}
                                                            </button>
                                                        </h2>
                                                        <div id="collapse-${rl.role_id}"
                                                            class="accordion-collapse collapse"
                                                            aria-labelledby="heading-${rl.role_id}"
                                                            data-bs-parent="#rolesAccordion">
                                                            <div class="accordion-body">
                                                                <!-- Form to edit role -->
                                                                <form
                                                                    action="dashboard?state=role&do=modify&role=${rl.role_id}"
                                                                    method="post">
                                                                    <div class="mb-3">
                                                                        <label for="roleName-${rl.role_id}"
                                                                            class="form-label">Role Name</label>
                                                                        <input type="text" class="form-control"
                                                                            id="roleName-${rl.role_id}" name="roleName"
                                                                            value="${rl.role_name}">
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="roleDesc-${rl.role_id}"
                                                                            class="form-label">Role Description</label>
                                                                        <input type="text" class="form-control"
                                                                            id="roleDesc-${rl.role_id}" name="roleDesc"
                                                                            value="${rl.role_desc}">
                                                                    </div>
                                                                    <button type="submit"
                                                                        class="btn btn-outline-warning btn-sm">Save</button>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>

                                        </div>
                                    </div>
                                </div>


                            </div>
                        </main>

                        <!-- Edit Role Modal -->
                        <script>
                            var radioButtons = document.querySelectorAll('input[type="radio"]');

                            // Add event listener to each radio button
                            radioButtons.forEach(function (radioButton) {
                                radioButton.addEventListener('click', function (event) {
                                    event.preventDefault(); // Prevent default click behavior
                                });
                            });
                            function updatePermissions() {
                                var selectedRoleId = document.getElementById("selectRole").value;
                                var radios = document.getElementsByName("permission");

                                for (var i = 0; i < radios.length; i++) {
                                    if (radios[i].value === selectedRoleId) {
                                        radios[i].checked = true;
                                    } else {
                                        radios[i].checked = false;
                                    }
                                }
                            }
                        </script>
                    </div>

                </div>
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
            </body>

            </html>