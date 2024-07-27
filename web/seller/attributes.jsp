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
                        <h1 class="mt-4">Thông số kiểu & hãng xe</h1>
                    <c:if test="${not empty errorMsg}">
                        <div class="form-msg mt-2 alert alert-danger w-75" role="alert">
                            ${errorMsg}</div>

                    </c:if>
                    <c:if test="${not empty successMsg}">
                        <div class="form-msg mt-2 alert alert-success w-75" role="alert">
                            ${successMsg}
                        </div>
                    </c:if>

                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="index.html">Bảng điều khiển</a></li>
                        <li class="breadcrumb-item active"> Kiểu & Hãng xe</li>
                    </ol>


                    <div class="row">
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-table me-1"></i>
                                    Hãng xe
                                </div>
                                <div class="card-body">
                                    <table id="brandTable">
                                        <thead>
                                            <tr>
                                                <th>Mã phân loại</th>
                                                <th>Tên</th>
                                                <th>Hành động</th>
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
                                                           class="btn btn-outline-success m-1">Cập nhật</a>
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
                                    Kiểu loại xe
                                </div>
                                <div class="card-body">
                                    <table id="cateTable">
                                        <thead>
                                            <tr>
                                                <th>Mã phân loại</th>
                                                <th>Tên</th>
                                                <th>Hành động</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="cc" items="${carCategory}">
                                                <c:if test="${cc.id == (update_cate_id)}">
                                                    <c:set var="nc" value="${cc}"></c:set>
                                                </c:if>
                                                <tr>
                                                    <td>${cc.id}</td>
                                                    <td>${cc.name}</td>
                                                    <td><a href="dashboard?state=attributes&role=cate&type=update&id=${cc.id}"
                                                           class="btn btn-outline-success m-1">Cập nhật</a>
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
                                    <h5 class="card-title">Thay đổi hãng xe</h5>
                                </div>
                                <div class="card-body">
                                    <form id="addRoleForm" autocomplete="off" method="post"
                                          action="dashboard?state=attributes&role=brand">
                                        <div class="mb-3 position-relative">
                                            <label for="brand" class="form-label">Nhập vào hãng xe</label>
                                            <input type="text" class="form-control" id="brand" name="brand"
                                                   placeholder="Chevrolet, Honda..." value="${nb.name}">
                                            <ul class="dropdown-menu" id="brandDropdown"></ul>
                                        </div>
                                        <button type="submit" class="btn btn-success" name="brandId"
                                                value="${nb == null ? "add" : nb.id}">Save changes</button>
                                        <input type="reset" class="btn btn-danger" value="Hủy"
                                               >
                                    </form>

                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <h5 class="card-title">Thay đổi kiểu xe</h5>
                                </div>
                                <div class="card-body">
                                    <form id="addRoleForm" autocomplete="off" method="post"
                                          action="dashboard?state=attributes&role=cate">
                                        <div class="mb-3 position-relative">
                                            <label for="cate" class="form-label">Nhập tên kiểu xe</label>
                                            <input type="text" class="form-control" id="cate" name="cate"
                                                   placeholder="Sports , Sedans ..." value="${nc.name}">
                                            <ul class="dropdown-menu" id="cateDropdown"></ul>
                                        </div>
                                        <button type="submit" class="btn btn-success" name="cateId"
                                                value="${nc == null ? "add" : nc.id}">Lưu</button>
                                        <input type="reset" class="btn btn-danger" value="Hủy"
                                               >
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

<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<script>
    var carBrands = [
        "Audi", "BMW", "Chevrolet", "Dodge", "Ferrari", "Ford", "Honda", "Hyundai", "Jaguar",
        "Jeep", "Kia", "Lamborghini", "Land Rover", "Lexus", "Mazda", "Mercedes-Benz", "Mitsubishi",
        "Nissan", "Porsche", "Subaru", "Tesla", "Toyota", "Volkswagen", "Volvo"
    ];

    var carCategories = [
        "Sedan",
        "SUV",
        "Hatchback",
        "Coupe",
        "Convertible",
        "Wagon",
        "Minivan",
        "Pickup Truck",
        "Electric Vehicle (EV)",
        "Hybrid Vehicle",
        "Luxury",
        "Sports Car",
        "Crossover",
        "Compact Car",
        "Off-road Vehicle",
        "Classic Car",
        "Concept Car"
    ];
    autocomplete(document.getElementById("brand"), carBrands);
    autocomplete(document.getElementById("cate"), carCategories);
    
</script>
</html>