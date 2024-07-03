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
                       <jsp:include page="navbar.jsp"></jsp:include>
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Tables</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Tables</li>
                                </ol>
                                <div class="card mb-4">
                                    <div class="card-body">
                                        DataTables is a third party plugin that is used to generate the demo table
                                        below. For more
                                        information about DataTables, please visit the
                                        <a target="_blank" href="https://datatables.net/">official DataTables
                                            documentation</a>
                                        .
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card mb-4">
                                            <div class="card-header">
                                                <i class="fas fa-table me-1"></i>
                                                DataTable Example
                                            </div>
                                            <div class="card-body">
                                                <table id="datatablesSimple">
                                                    <thead>
                                                        <tr>
                                                            <th>Name</th>
                                                            <th>dOb</th>
                                                            <th>Email</th>
                                                            <th>Phone</th>
                                                            <th>Permission</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tfoot>
                                                        <tr>
                                                            <th>Name</th>
                                                            <th>dOb</th>
                                                            <th>Email</th>
                                                            <th>Phone</th>
                                                            <th>Permission</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </tfoot>
                                                    <tbody>
<c:forEach var="ul" items="${userList}">
    <c:if test="${ul.user_id == (update_id)}">
        <c:set var="nl" value="${ul}"></c:set>
    </c:if>
                                                            <tr>
                                                                <td>${ul.given_name == null ? "Not" : ul.given_name }
    ${ul.family_name == null? "updated" :
      ul.family_name}</td>
                                                                <td>${ul.dob == null ? "Not updated" : ul.dob}</td>
                                                                <td>${ul.email}</td>
                                                                <td>${ul.phone == null ? "Not updated" : ul.phone }</td>
                                                                <td>${(ul.permission_id == 3 ? "User" :(
          (ul.permission_id == 2 )? "Seller" :
          (ul.permission_id == 1) ? "Admin" : "No one") )}
                                                                <td>
                                                                    <a href="dashboard?state=user&type=update&id=${ul.user_id}"
                                                                        class="btn btn-success m-1"
                                                                        onclick="event.preventDefault(); document.getElementById('email').setAttribute('disabled', true); document.getElementById('password').setAttribute('disabled', true); localStorage.setItem('readOnly', true)
                                                                            ; window.location.href = this.getAttribute('href');">Update</a>
                                                                    <a href="dashboard?state=user&type=delete&id=${ul.user_id}"
                                                                        class="btn btn-danger m-1">Delete</a>
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
                                    <div class="col-lg-6">
                                        <div class="card mb-4">
                                            <div class="card-header">
<c:set var="prefix" value="${nl.user_id != null ? '#' : ''}" />
<c:set var="id" value="${prefix}${nl.user_id}" />
                                                <h5 class="card-title">Modify user : ${id}</h5>
                                            </div>
                                            <div class="card-body">
                                                <form
                                                    action="dashboard?state=user&do=update"
                                                    method="post">
                                                    <!-- form fields -->
                                                    <div class="row">
                                                        <div class="mb-3 col-6">
                                                            <label for="given_name" class="form-label">Given
                                                                name</label>
                                                            <input type="text" class="form-control" id="given_name"
                                                                name="given_name" placeholder="Enter given name"
                                                                value="${nl.given_name}">
                                                        </div>
                                                        <div class="mb-3 col-6">
                                                            <label for="family_name2" class="form-label">Family
                                                                name</label>
                                                            <input type="text" class="form-control" id="family_name"
                                                                name="family_name" placeholder="Enter family name"
                                                                value="${nl.family_name}">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-6">
                                                            <label for="phone" class="form-label">Phone</label>
                                                            <input type="text" class="form-control" id="phone"
                                                                name="phone" placeholder="Enter phone number"
                                                                value="${nl.phone}">
                                                        </div>
                                                        <div class="mb-3 col-6">
                                                            <label for="dob" class="form-label">Date of birth</label>
                                                            <input type="date" class="form-control" id="dob" name="dob"
                                                                value="${nl.dob}">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-6">
                                                            <label for="email" class="form-label">Email</label>
                                                            <input type="text" class="form-control" required id="email"
                                                                placeholder="Enter email"
                                                                value="${nl.email}"  title="You can't change this...">
                                                        </div>
                                                        <div class="mb-3 col-6 ">
                                                            <label for="password" class="form-label">Password</label>
                                                            <input type="password" class="form-control" required
                                                                id="password" placeholder="*******" title="You can't change this either..."> 
                                                        </div>
                                                    </div>
                                                    <div class="d-flex justify-content-between">
                                                        <div>
                                                            <input type="hidden" name="userId" value="${nl.user_id}">
                                                            <input type="submit" class="btn btn-warning" value="Update"
                                                                name="update"
                                                               >
                                                        </div>
                                                        <input type="button" onclick="(() => {
    localStorage.removeItem('readOnly');
    location.href='dashboard?state=user';
})()" class="btn btn-primary" id="cancel" value="Cancel" name="cancel">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="card mb-4">
                                            <div class="card-header">
                                                <h5 class="card-title">Add user :</h5>
                                            </div>
                                            <div class="card-body">
                                                <form action="dashboard?state=user&do=add" method="post">
                                                    <!-- form fields -->
                                                    <div class="row">
                                                        <div class="mb-3 col-6">
                                                            <label for="given_name" class="form-label">Given
                                                                name</label>
                                                            <input type="text" class="form-control" id="given_name"
                                                                name="given_name2" placeholder="Enter given name"
                                                                >
                                                        </div>
                                                        <div class="mb-3 col-6">
                                                            <label for="family_name" class="form-label">Family
                                                                name</label>
                                                            <input type="text" class="form-control" id="family_name"
                                                                name="family_name2" placeholder="Enter family name"
                                                                >
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-6">
                                                            <label for="phone" class="form-label">Phone</label>
                                                            <input type="text" class="form-control" id="phone"
                                                                name="phone2" placeholder="Enter phone number"
                                                                >
                                                        </div>
                                                        <div class="mb-3 col-6">
                                                            <label for="dob" class="form-label">Date of birth</label>
                                                            <input type="date" class="form-control" id="dob" name="dob2"
                                                                >
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-6">
                                                            <label for="email" class="form-label">Email</label>
                                                            <input type="text" class="form-control" required id="email"
                                                                placeholder="Enter email" name="email2"
                                                                title="You can't change this either ">
                                                        </div>

                                                        <div class="mb-3 col-6">
                                                            <label for="password" class="form-label">Password</label>
                                                            <input type="password" class="form-control" required
                                                                name="password" id="password" placeholder="*******"
                                                               >
                                                        </div>
                                                    </div>
                                                    <div class="d-flex justify-content-between">
                                                        <div>
                                                            <input type="submit" class="btn btn-success" value="Add"
                                                                name="add">
                                                        </div>
                                                        <input type="button" onclick="(() => {
    localStorage.removeItem('readOnly');
    location.href='dashboard?state=user';
})()" class="btn btn-primary" id="cancel" value="Cancel" name="cancel">
                                                    </div>
                                                </form>
                                            </div>
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

            </html>