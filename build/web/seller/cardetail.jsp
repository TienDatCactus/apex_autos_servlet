<%@page contentType="text/html" pageEncoding="UTF-8" %> 
<%@taglib    uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib        uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="ApexAutos" />
        <meta name="keywords" content="ApexAutos" />
        <meta name="author" content="ApexAutos" />
        <link
            rel="apple-touch-icon"
            sizes="180x180"
            href="assets/favicon/apple-touch-icon.png"
            />
        <link
            rel="icon"
            type="image/png"
            sizes="32x32"
            href="assets/favicon/favicon-32x32.png"
            />
        <link
            rel="icon"
            type="image/png"
            sizes="16x16"
            href="assets/favicon/favicon-16x16.png"
            />
        <link rel="manifest" href="assets/favicon/site.webmanifest" />
        <title>Admin - Dashboard</title>
        <link
            href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
            rel="stylesheet"
            />
        <link href="assets/css/styles.css" rel="stylesheet" />
        <script
            src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
            crossorigin="anonymous"
        ></script>
    </head>

    <body class="sb-nav-fixed">
        <jsp:include page="navbar.jsp"></jsp:include>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Tables</h1>
                    <c:if test="${not empty errorMsg}">
                        <div class="form-msg mt-2 alert alert-danger w-75" role="alert">
                            ${errorMsg}
                        </div>
                    </c:if>
                    <c:if test="${not empty successMsg}">
                        <div class="form-msg mt-2 alert alert-success w-75" role="alert">
                            ${successMsg}
                        </div>
                    </c:if>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item">
                            <a href="index.html">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Tables</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-body">
                            DataTables is a third party plugin that is used to generate the
                            demo table below. For more information about DataTables, please
                            visit the
                            <a target="_blank" href="https://datatables.net/"
                               >official DataTables documentation</a
                            >
                            .
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-table me-1"></i>
                                    Car's info
                                </div>
                                <div class="card-body">
                                    <table id="datatablesSimple">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Name</th>
                                                <th>Model Year</th>
                                                <th>Price</th>
                                                <th>Description</th>
                                                <th>Brand</th>
                                                <th>Category</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Id</th>
                                                <th>Name</th>
                                                <th>Model Year</th>
                                                <th>Price</th>
                                                <th>Description</th>
                                                <th>Brand</th>
                                                <th>Category</th>
                                                <th>Action</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <c:forEach var="cl" items="${carList}">
                                                <c:if test="${cl.car_id == (update_id)}">
                                                    <c:set var="nl" value="${cl}"></c:set>
                                                </c:if>
                                                <tr>
                                                    <td>${cl.car_id}</td>
                                                    <td>${cl.name}</td>
                                                    <td>${cl.model_year}</td>
                                                    <td>${cl.price}</td>
                                                    <td ><p style="
                                                            line-height: 1.5;
                                                            -webkit-line-clamp: 2;
                                                            -webkit-box-orient: vertical;
                                                            display: -webkit-box;
                                                            overflow: hidden;">${cl.description}</p></td>
                                                    <td>
                                                        <c:forEach items="${carBrand}" var="cb">
                                                            <c:if test="${cb.id == cl.brand_id}">
                                                                ${cb.name}
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>
                                                        <c:forEach items="${carCategory}" var="cc">
                                                            <c:if test="${cc.id == cl.category_id}">
                                                                ${cc.name}
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>
                                                        <a
                                                            href="dashboard?state=detail&type=update&id=${cl.car_id}"
                                                            class="btn btn-success m-1"
                                                            >Update</a
                                                        >
                                                        <a
                                                            href="
                                                            dashboard?state=detail&type=delete&id=${cl.car_id}"
                                                            class="btn btn-danger m-1"
                                                            >Delete</a
                                                        >
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
                                    <c:set
                                        var="prefix"
                                        value="${nl.car_id != null ? '#' : ''}"
                                        />
                                    <c:set var="id" value="${prefix}${nl.car_id}" />
                                    <h5 class="card-title">Modify car : ${id}</h5>
                                </div>
                                <div class="card-body">
                                    <form
                                        action="dashboard?state=detail&do=update"
                                        method="post"
                                        >
                                        <!-- form fields -->
                                        <div class="row">
                                            <div class="mb-3 col-6 position-relative">
                                                <label for="car_name" class="form-label"
                                                       >Car's Name</label
                                                >
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    id="car_name"
                                                    name="car_name"
                                                    placeholder="Enter car's name"
                                                    value="${nl.name}"
                                                    />
                                            </div>
                                            <div class="mb-3 col-6">
                                                <label for="model_year" class="form-label"
                                                       >Model_year</label
                                                >
                                                <input
                                                    type="date"
                                                    class="form-control"
                                                    id="model_year"
                                                    name="model_year"
                                                    value="${nl.model_year}"
                                                    />
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label for="price" class="form-label">Price</label>
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="price"
                                                name="price"
                                                placeholder="Enter price amount"
                                                value="${nl.price}"
                                                />
                                        </div>
                                        <div class="mb-3">
                                            <label for="desc" class="form-label">Description</label>
                                            <textarea
                                                class="form-control"
                                                id="desc"
                                                name="desc"
                                                placeholder="Enter car's description"
                                                >${nl.description}</textarea>
                                        </div>
                                        <div class="row">
                                            <div class="mb-3 col-6">
                                                <label for="brand" class="form-label">Brand</label>
                                                <select class="form-select" id="brand" name="brand">
                                                    <c:forEach items="${carBrand}" var="cb">
                                                        <option
                                                            value="${cb.id}"
                                                            ${cb.id == nl.brand_id ? "selected" : ""}
                                                            >
                                                            ${cb.name}
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="mb-3 col-6">
                                                <label for="category" class="form-label"
                                                       >Category</label
                                                >
                                                <select
                                                    class="form-select"
                                                    id="category"
                                                    name="category"
                                                    >
                                                    <c:forEach items="${carCategory}" var="cc">
                                                        <option
                                                            value="${cc.id}"
                                                            ${cc.id == nl.category_id ? "selected" : ""}
                                                            >
                                                            ${cc.name}
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-between">
                                            <div>
                                                <button
                                                    type="submit"
                                                    class="btn btn-warning"
                                                    name="carId"
                                                    value="${nl.car_id}"
                                                    >
                                                    Update
                                                </button>
                                            </div>
                                            <input
                                                type="button"
                                                onclick="(() => {
                                                            location.href = 'dashboard?state=detail';
                                                        })()"
                                                class="btn btn-primary"
                                                id="cancel"
                                                value="Cancel"
                                                name="cancel"
                                                />
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <h5 class="card-title">Add new Car :</h5>
                                </div>
                                <div class="card-body">
                                    <form
                                        action="dashboard?state=detail&do=add"
                                        method="post"
                                        autocomplete="off"
                                        >
                                        <!-- form fields -->
                                        <div class="row">
                                            <div class="mb-3 col-6">
                                                <label for="name1" class="form-label">Name</label>
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    id="name1"
                                                    placeholder="Enter car name"
                                                    name="car_name1"
                                                    />
                                                <ul class="dropdown-menu" id="originDropdown"></ul>
                                            </div>
                                            <div class="mb-3 col-6">
                                                <label for="model_year1" class="form-label"
                                                       >Model Year</label
                                                >
                                                <input
                                                    type="date"
                                                    class="form-control"
                                                    id="model_year1"
                                                    name="model_year1"
                                                    placeholder="Enter model year"
                                                    />
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label for="price" class="form-label">Price</label>
                                            <input
                                                type="number"
                                                min="1"
                                                class="form-control"
                                                id="priceEditInput"
                                                placeholder="Enter price"
                                                name="price1"
                                                />
                                        </div>
                                        <div class="mb-3">
                                            <label for="desc1" class="form-label"
                                                   >Description</label
                                            >
                                            <textarea
                                                class="form-control"
                                                id="desc1"
                                                name="desc1"
                                                placeholder="Enter car's description"
                                                ></textarea>
                                        </div>
                                        <div class="row">
                                            <div class="mb-3 col-6">
                                                <label for="brand" class="form-label">Brand</label>
                                                <select class="form-select" id="brand" name="brand1">
                                                    <c:forEach items="${carBrand}" var="cb">
                                                        <option value="${cb.id}">${cb.name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                            <div class="mb-3 col-6">
                                                <label for="category" class="form-label"
                                                       >Category</label
                                                >
                                                <select
                                                    class="form-select"
                                                    id="category"
                                                    name="category1"
                                                    >
                                                    <c:forEach items="${carCategory}" var="cc">
                                                        <option value="${cc.id}">${cc.name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-between">
                                            <div>
                                                <input
                                                    type="submit"
                                                    class="btn btn-success"
                                                    value="Add"
                                                    name="add"
                                                    />
                                            </div>
                                            <input
                                                type="button"
                                                onclick="(() => {
                                                            location.href = 'dashboard?state=detail';
                                                        })()"
                                                class="btn btn-primary"
                                                id="cancel1"
                                                value="Cancel"
                                                />
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

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"
></script>
<script src="assets/js/scripts.js"></script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
    crossorigin="anonymous"
></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script
    src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
    crossorigin="anonymous"
></script>
<script src="assets/js/datatables-simple-demo.js"></script>
<script src="assets/js/scripts.js"></script>

</html>
