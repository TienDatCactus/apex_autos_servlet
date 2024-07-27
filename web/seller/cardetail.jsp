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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
        <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
        <style>
            #carDescription {
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
                line-height: 1.5;
                display: block;
                width: 400px
            }

            #carDescription:hover {
                overflow: visible;
                white-space: normal;
                background-color: #FFF;
                padding: 10px;
                z-index: 1;
                position: relative;
            }
        </style>
    </head>

    <body class="sb-nav-fixed">
        <jsp:include page="navbar.jsp"></jsp:include>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Danh sách xe</h1>
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
                            <a href="index.html">Bảng điều khiển</a>
                        </li>
                        <li class="breadcrumb-item active">Danh sách xe</li>
                    </ol>


                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-table me-1"></i>
                                    Chi tiết xe
                                </div>
                                <div class="card-body">
                                    <table id="datatablesSimple">
                                        <thead>
                                            <tr>
                                                <th>Mã phân loại</th>
                                                <th>Tên</th>
                                                <th>Năm sản xuất</th>
                                                <th>Giá</th>
                                                <th>Mô tả</th>
                                                <th>Hãng</th>
                                                <th>Kiểu loại</th>
                                                <th>Hành động</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Mã phân loại</th>
                                                <th>Tên</th>
                                                <th>Năm sản xuất</th>
                                                <th>Giá</th>
                                                <th>Mô tả</th>
                                                <th>Hãng</th>
                                                <th>Kiểu loại</th>
                                                <th>Hành động</th>
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
                                                    <td ><p id="carDescription">${cl.description}</p></td>
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
                                    <h5 class="card-title">Cập nhật xe : ${id}</h5>
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
                                                       >Tên xe</label
                                                >
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    id="car_name"
                                                    name="car_name"
                                                    placeholder="Nhập vào tên xe"
                                                    value="${nl.name}"
                                                    />
                                            </div>
                                            <div class="mb-3 col-6">
                                                <label for="model_year" class="form-label"
                                                       >Năm sản xuất</label
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
                                            <label for="price" class="form-label">Giá tiền</label>
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="price"
                                                name="price"
                                                placeholder="Nhập vào giá trị xe"
                                                value="${nl.price}"
                                                />
                                        </div>
                                        <div class="mb-3">
                                            <label for="desc" class="form-label">Mô tả</label>
                                            <textarea
                                                class="form-control"
                                                id="desc"
                                                name="desc"
                                                placeholder="Nhập vào mô tả xe"
                                                >${nl.description}</textarea>

                                        </div>
                                        <div class="row">
                                            <div class="mb-3 col-6">
                                                <label for="brand" class="form-label">Nhãn hiệu</label>
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
                                                       >Kiểu loại</label
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
                                                    Cập nhật
                                                </button>
                                            </div>
                                            <input
                                                type="reset"
                                                class="btn btn-primary"
                                                id="cancel"
                                                value="Hủy"
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
                                    <h5 class="card-title">Thêm xe mới :</h5>
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
                                                <label for="name1" class="form-label">Tên xe</label>
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
                                                       >Năm sản xuất</label
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
                                            <label for="price" class="form-label">Giá tiền</label>
                                            <input
                                                type="number"
                                                min="1"
                                                class="form-control"
                                                id="priceEditInput"
                                                placeholder="Nhập vào giá trị của xe"
                                                name="price1"
                                                />
                                        </div>
                                        <div class="mb-3">
                                            <label for="desc1" class="form-label"
                                                   >Mô tả</label
                                            >
                                            <textarea
                                                class="form-control"
                                                id="desc1"
                                                name="desc1"
                                                placeholder="Nhập vào mô tả xe"
                                                ></textarea>
                                        </div>
                                        <div class="row">
                                            <div class="mb-3 col-6">
                                                <label for="brand" class="form-label">Nhãn hiệu</label>
                                                <select class="form-select" id="brand" name="brand1">
                                                    <c:forEach items="${carBrand}" var="cb">
                                                        <option value="${cb.id}">${cb.name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                            <div class="mb-3 col-6">
                                                <label for="category" class="form-label"
                                                       >Kiểu loại</label
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
                                                    value="Thêm mới"
                                                    name="add"
                                                    />
                                            </div>
                                            <input
                                                type="reset"
                                                class="btn btn-primary"
                                                id="cancel1"
                                                value="Hủy"
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
<script>
                                                    var simplemde = new SimpleMDE({
                                                        element: document.getElementById("simplemde")
                                                    });
                                                    if (window.history.replaceState) {
                                                        window.history.replaceState(null, null, window.location.href);
                                                    }
</script>
</html>
