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




        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }

            .b-example-divider {
                width: 100%;
                height: 3rem;
                background-color: rgba(0, 0, 0, .1);
                border: solid rgba(0, 0, 0, .15);
                border-width: 1px 0;
                box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
            }

            .b-example-vr {
                flex-shrink: 0;
                width: 1.5rem;
                height: 100vh;
            }

            .bi {
                vertical-align: -.125em;
                fill: currentColor;
            }

            .nav-scroller {
                position: relative;
                z-index: 2;
                height: 2.75rem;
                overflow-y: hidden;
            }

            .nav-scroller .nav {
                display: flex;
                flex-wrap: nowrap;
                padding-bottom: 1rem;
                margin-top: -1px;
                overflow-x: auto;
                text-align: center;
                white-space: nowrap;
                -webkit-overflow-scrolling: touch;
            }

            .btn-bd-primary {
                --bd-violet-bg: #712cf9;
                --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

                --bs-btn-font-weight: 600;
                --bs-btn-color: var(--bs-white);
                --bs-btn-bg: var(--bd-violet-bg);
                --bs-btn-border-color: var(--bd-violet-bg);
                --bs-btn-hover-color: var(--bs-white);
                --bs-btn-hover-bg: #6528e0;
                --bs-btn-hover-border-color: #6528e0;
                --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
                --bs-btn-active-color: var(--bs-btn-hover-color);
                --bs-btn-active-bg: #5a23c8;
                --bs-btn-active-border-color: #5a23c8;
            }

            .bd-mode-toggle {
                z-index: 1500;
            }

            .bd-mode-toggle .dropdown-menu .active .bi {
                display: block !important;
            }

            body {
                font-family: Arial, sans-serif;
            }
            .main-image-container {
                text-align: center;
                margin-bottom: 10px;
            }
            .main-image {
                width: 100%;
                height: auto;
                border: 2px solid #ccc;
                border-radius: 10px;
            }
            .thumbnails {
                display: flex;
                justify-content: center;
                gap: 10px;
                flex-wrap: wrap;
                margin-bottom: 10px;
            }
            .thumbnails img {
                width: 100px;
                height: auto;
                cursor: pointer;
                transition: transform 0.2s ease;
                border: 2px solid transparent;
                border-radius: 5px;
            }
            .thumbnails img:hover {
                transform: scale(1.1);
                border: 2px solid #007BFF;
            }
        </style>
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
                    <section class="py-5 text-center container">
                        <div class="row py-lg-5">
                            <div class="col-lg-6 col-md-8 mx-auto">
                                <h1 class="fw-light">Album</h1>
                                <p class="lead text-body-secondary">Something short and leading about the collection
                                    below—its
                                    contents, the creator, etc. Make it short and sweet, but not too short so folks don’t
                                    simply
                                    skip over it entirely.</p>

                            </div>
                        </div>
                    </section>
                    <div class="album py-5 bg-body-tertiary">
                        <div class="container">
                            <div class="d-flex justify-content-end mb-3">
                                <button type="button" class="btn btn-primary add-btn" id="addImageBtn">Add Image</button>
                            </div>

                            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                                <c:forEach var="cl" items="${carList}" varStatus="loop">
                                    <div class="col">
                                        <div class="card shadow-sm">
                                            <div class="main-image-container">
                                                <c:choose>
                                                    <c:when test="${not empty imageCar}">
                                                        <c:set var="hasImages" value="false"/>
                                                        <c:forEach items="${imageCar}" var="ci">
                                                            <c:if test="${ci.car_id eq cl.car_id}">
                                                                <c:forEach items="${ci.image_url}" var="obj" varStatus="loop">
                                                                    <c:if test="${loop.first}">
                                                                        <img id="mainImage-${cl.car_id}" src="${obj}" alt="Main Image" class="main-image">
                                                                        <c:set var="hasImages" value="true"/>
                                                                    </c:if>
                                                                </c:forEach>
                                                            </c:if>
                                                        </c:forEach>
                                                        <c:if test="${not hasImages}">
                                                            <img id="mainImage-${cl.car_id}" src="../seller/assets/img/images.jpg" alt="Chua co" class="main-image">
                                                        </c:if>
                                                    </c:when>


                                                </c:choose>
                                            </div>

                                            <div class="thumbnails">
                                                <c:forEach items="${imageCar}" var="ci">
                                                    <c:if test="${ci.car_id eq cl.car_id}">
                                                        <c:forEach items="${ci.image_url}" var="obj" varStatus="thumbLoop">
                                                            <img src="${obj}" alt="Thumbnail" class="thumbnail" onclick="changeImage('${obj}', 'mainImage-${cl.car_id}')">
                                                        </c:forEach>
                                                    </c:if>
                                                </c:forEach>
                                            </div>

                                            <div class="card-body">
                                                <p class="card-text">${cl.name}</p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="btn-group">
                                                        
                                                            <button type="button" class="btn btn-sm btn-outline-secondary edit-btn" name="idToUpdate"
                                                                    data-id="${cl.car_id}" onclick="editProductModal('${cl.car_id}')">Edit</button>
                                                        
                                                        <form action="dashboard?state=imge&do=delete" method="post">
                                                            <button type="submit" class="btn btn-sm btn-outline-danger delete-btn" name="idToDel"
                                                                    value="${cl.car_id}">Delete</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>





                        </div>
                    </div>
                    <!-- Modal for viewing image -->
                  

                    <!-- Modal for editing image -->
                    <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="editModalLabel">Edit Image</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="dashboard?state=imge&do=update" method="post" enctype="multipart/form-data">
                                        <div class="mb-3">
                                           
                                            <input type="hidden" class="form-control" id="idEditInput" name="idEditInput">
                                        </div>
                                       <div class="mb-3">
                                            <label class="form-label">Images</label>
                                            <input type="file" class="form-control" onchange="displayImage(this)" name="image" multiple>
                                            <img id="previewImage" style="max-width: 300px; max-height: 300px;">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Upload</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal for adding image -->
                    <div class="modal fade" id="addImageModal" tabindex="-1" aria-labelledby="addImageModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="addImageModalLabel">Add New Image</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form id="addImageForm" action="dashboard?state=imge&do=add" method="post" enctype="multipart/form-data">
                                        <div class="mb-3">
                                            <select name="idCar" id="idCar" style="padding-right: 175px">
                                                <option value="">Select Car</option>
                                                <c:forEach var="cl" items="${carList}">
                                                    <option value="${cl.car_id}">${cl.name}</option>

                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <label for="siteLogo" class="form-label">Images</label>
                                            <input type="file" class="form-control" onchange="displayImage(this)" name="image" multiple>
                                            <img id="previewImage" style="max-width: 300px; max-height: 300px;">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Upload</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </body>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Function to handle the "View" button click
            function handleViewClick(event) {
                const src = event.target.getAttribute('data-src');
                const viewImage = document.getElementById('viewImage');
                viewImage.src = src;
                const viewModal = new bootstrap.Modal(document.getElementById('viewModal'));
                viewModal.show();
            }

            // Function to handle the "Edit" button click
            function handleEditClick(event) {
                const editModal = new bootstrap.Modal(document.getElementById('editModal'));
                editModal.show();
            }
            function handleAddClick(e) {
                const addModal = new bootstrap.Modal(document.getElementById('addImageModal'));
                addModal.show();
            }
            // Attach event listeners to the buttons
            const viewButtons = document.querySelectorAll('.view-btn');
            const editButtons = document.querySelectorAll('.edit-btn');
            const addButtons = document.querySelectorAll('.add-btn')
            viewButtons.forEach(button => {
                button.addEventListener('click', handleViewClick);
            });
            addButtons.forEach(button => {
                button.addEventListener('click', handleAddClick);
            });
            editButtons.forEach(button => {
                button.addEventListener('click', handleEditClick);
            });
        });
        
        function editProductModal(id) {
            document.getElementById('idEditInput').value = id;
            
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
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }


        function changeImage(src, targetId) {
            document.getElementById(targetId).src = src;
        }

    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/js/scripts.js"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
    crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/seller/assets/js/datatables-simple-demo.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">


</html>