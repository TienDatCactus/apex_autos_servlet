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
                max-width: 500px; /* Adjust as needed */
                height: 300px; /* Adjust as needed */
                border: 1px solid #ddd;
                border-radius: 10px;
                object-fit: cover; /* Maintain aspect ratio and avoid stretching */
                margin: 0 auto; /* Center the image */
            }
            .thumbnails {
                display: flex;
                overflow-x: auto;
                overflow-y: hidden;
                gap: 2px;
                margin-bottom: 10px;
                white-space: nowrap;
                -webkit-overflow-scrolling: touch;
            }
            .thumbnails img {
                width: 100px; /* Adjust as needed */
                height: 100px; /* Adjust as needed */
                cursor: pointer;
                transition: transform 0.2s ease;
                border: 2px solid transparent;
                border-radius: 5px;
                flex-shrink: 0;
                object-fit: cover; /* Maintain aspect ratio and avoid stretching */
            }

            .thumbnails img:hover {
                transform: scale(1);
                border: 1px solid #007BFF;
            }
        </style>
    </head>

    <body class="sb-nav-fixed">
        
            <jsp:include page="navbar.jsp"></jsp:include>
                <div id="layoutSidenav_content">
                    <main>
                        <div class="album py-2 bg-body-tertiary">
                            <div class="container">

                                <div class="input-group mb-3">
                                    <input type="text" id="searchBox" class="form-control" placeholder="Search for a car by name...">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fa fa-search"></i></span>
                                    </div>
                                </div>
                            <c:if test="${not empty successMsg}">
                                <div class="form-msg mt-2 alert alert-success w-75" role="alert">
                                    ${successMsg}
                                </div>
                            </c:if>

                            <div id="carList" class="row">
                                <c:choose>
                                    <c:when test="${empty carList}">
                                        <div class="alert alert-danger " style="font-size:32px; text-align: center" role="alert">
                                            Sorry there's currently no product available !
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach var="cl" items="${carList}" varStatus="loop">
                                            <div class="col-md-4 car-card mb-3" data-name="${cl.name}" >
                                                <div class="card" >
                                                    <c:set var="hasImages" value="false"/>
                                                    <c:set var="mainImage" value=""/>

                                                    <c:forEach items="${imageCar}" var="ci">
                                                        <c:if test="${ci.car_id eq cl.car_id}">
                                                            <c:if test="${not empty ci.image_url}">
                                                                <c:set var="mainImage" value="${ci.image_url[0]}"/>
                                                                <c:set var="hasImages" value="true"/>
                                                            </c:if>
                                                        </c:if>
                                                    </c:forEach>

                                                    <c:if test="${not hasImages}">
                                                        <img id="mainImage-${cl.car_id}" src="${pageContext.request.contextPath}/seller/assets/img/images.png" alt="No Image Available" class="main-image card-img-top">
                                                    </c:if>
                                                    <c:if test="${hasImages}">
                                                        <img id="mainImage-${cl.car_id}" src="${mainImage}" alt="Main Image" class="main-image card-img-top">
                                                    </c:if>

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
                                                        <h5 class="card-title mb-1">${cl.name}</h5>
                                                        <p class="card-text mb-1">#${cl.car_id}</p>
                                                        <div class="d-flex justify-content-between align-items-center">
                                                            <div class="btn-group">
                                                                <button type="button" class="btn btn-sm btn-outline-secondary edit-btn" name="idToUpdate"
                                                                        data-id="${cl.car_id}" onclick="editProductModal('${cl.car_id}')">Edit</button>
                                                                <button type="button" class="btn btn-sm btn-outline-danger delete-btn" name="idToDel"
                                                                        onclick="location.href = 'dashboard?state=image&type=delete&id=${cl.car_id}'">Delete</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </c:otherwise>
                                </c:choose>

                            </div>
                        </div>
                    </div>
                    <!-- Modal for viewing image -->


                    <!-- Modal for editing image -->
                    <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="editModalLabel">Edit Image</h5>
                                    <button type="button" class="btn-close fa fa-close
                                            " data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="dashboard?state=image&do=update" method="post" enctype="multipart/form-data">
                                        <input type="hidden" class="form-control" id="idEditInput" name="idEditInput">
                                        <div class="mb-3">
                                            <label for="image" class="form-label">Images</label>
                                            <input type="file" class="form-control" onchange="displayImage(this)" name="image" multiple>
                                            <img id="previewImage" style="max-width: 300px; max-height: 300px;">
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-primary">Upload</button>
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        </div>
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
    <script>
        document.getElementById('searchBox').addEventListener('keyup', function () {
            let filter = this.value.toLowerCase();
            let carCards = document.querySelectorAll('.car-card');

            carCards.forEach(function (card) {
                let carName = card.getAttribute('data-name').toLowerCase();
                if (carName.includes(filter)) {
                    card.style.display = '';
                } else {
                    card.style.display = 'none';
                }
            });
        });
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