<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
        <!-- Include jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Include Bootstrap JS -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <style>
            #carDescription {
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
                line-height: 1.5;
                display: block;
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
                        <h1 class="mt-4">Quản lí đơn hàng</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Bảng điều khiển</a></li>
                            <li class="breadcrumb-item active">Quản lí đơn hàng</li>
                        </ol>

                        <!-- Order List -->
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Danh sách đơn hàng
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Mã đơn hàng</th>
                                            <th>Xe</th>
                                            <th>Khách hàng</th>
                                            <th>Giá trị đơn hàng</th>
                                            <th>Trạng thái đơn hàng</th>
                                            <th>Thời gian giao dịch</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Mã đơn hàng</th>
                                            <th>Xe</th>
                                            <th>Khách hàng</th>
                                            <th>Giá trị đơn hàng</th>
                                            <th>Trạng thái đơn hàng</th>
                                            <th>Thời gian giao dịch</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    <c:forEach var="ol" items="${orderList}">
                                        <tr>
                                            <th>${ol.order_id}</th>
                                                <c:forEach var="item" items="${ol.items}">
                                                <th><button type="button" class="btn btn-warning p-1" data-toggle="modal" data-target="#carModal"
                                                            data-car-id="${item.car.car_id}"
                                                            data-car-name="${item.car.name}"
                                                            data-car-cylinders="${item.car.cylinders}"
                                                            data-car-horsepower="${item.car.horsepower}"
                                                            data-car-weight="${item.car.weight}"
                                                            data-car-acceleration="${item.car.acceleration}"
                                                            data-car-model-year="${item.car.model_year}"
                                                            data-car-origin="${item.car.origin}"
                                                            data-car-price="${item.car.price}"
                                                            data-car-description="${item.car.description}"
                                                            data-car-brand-id="${item.car.brand_id}"
                                                            data-car-category-id="${item.car.category_id}"
                                                            data-car-seller-id="${item.car.seller_id}">
                                                        ${item.car.name}
                                                    </button></th>
                                                </c:forEach>
                                            <th>${ol.user_id}</th>
                                            <th>${ol.order_date}</th>
                                            <th><div class="btn btn-success">${ol.status}</div></th>
                                            <th>${ol.order_date}</th>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Order Details Modal -->
                    <div class="modal fade" id="orderDetailsModal" tabindex="-1" aria-labelledby="orderDetailsModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="orderDetailsModalLabel">Order Details</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <!-- Order details will be dynamically loaded here -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>

    </div>
</body>

<footer>
    <div class="container-fluid">
        <div class="d-sm-flex justify-content-center justify-content-sm-between py-2 small">
            <div class="text-center">Your footer content goes here.</div>
        </div>
    </div>
</footer>
<div class="modal fade modal-lg"  id="carModal" tabindex="-1" role="dialog" aria-labelledby="carModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="carModalLabel">Thông số chi tiết</h5>
                <button type="button" class="close btn btn-danger" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" >&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row alert alert-primary" role="alert">
                    <p class="col-6 mb-0"><strong>Mã xe:</strong> <span id="carId"></span></p>
                    <p class="col-6  mb-0"><strong>Name:</strong> <span id="carName"></span></p>
                </div>
                <div class="row alert alert-secondary" role="alert">
                    <p class="col-6 mb-0"><strong>Xi-lanh:</strong> <span id="carCylinders"></span></p>
                    <p class="col-6 mb-0"><strong>Mã lực:</strong> <span id="carHorsepower"></span></p>
                </div>
                <div class="row alert alert-success" role="alert">
                    <p class="col-6 mb-0"><strong>Trọng lượng:</strong> <span id="carWeight"></span></p>
                    <p class="col-6 mb-0"><strong>Gia tốc:</strong> <span id="carAcceleration"></span></p>
                </div>
                <div class="row alert alert-danger" role="alert">
                    <p class="col-6 mb-0"><strong>Năm sản xuất:</strong> <span id="carModelYear"></span></p>
                    <p class="col-6 mb-0"><strong>Nguồn gốc:</strong> <span id="carOrigin"></span></p>
                </div>
                <p class="row alert alert-dark" role="alert"><strong>Giá:</strong> <span id="carPrice"></span></p>
                <p class="row alert alert-info" role="alert"><strong >Mô tả:</strong> <span id="carDescription"  ></span></p>
                <div class="row alert alert-warning" role="alert">
                    <p class="col-6 mb-0"><strong>Mã hãng xe:</strong> <span id="carBrandId"></span></p>
                    <p class="col-6 mb-0"><strong>Mã kiểu xe:</strong> <span id="carCategoryId"></span></p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
crossorigin="anonymous"></script>
<script src="assets/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
crossorigin="anonymous"></script>
<script src="assets/js/datatables-simple-demo.js"></script>
<script>
    $('#carModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget); // Button that triggered the modal
        var carId = button.data('car-id');
        var carName = button.data('car-name');
        var carCylinders = button.data('car-cylinders');
        var carHorsepower = button.data('car-horsepower');
        var carWeight = button.data('car-weight');
        var carAcceleration = button.data('car-acceleration');
        var carModelYear = button.data('car-model-year');
        var carOrigin = button.data('car-origin');
        var carPrice = button.data('car-price');
        var carDescription = button.data('car-description');
        var carBrandId = button.data('car-brand-id');
        var carCategoryId = button.data('car-category-id');
        var carSellerId = button.data('car-seller-id');
        var modal = $(this);
        modal.find('#carId').text(carId);
        modal.find('#carName').text(carName);
        modal.find('#carCylinders').text(carCylinders);
        modal.find('#carHorsepower').text(carHorsepower);
        modal.find('#carWeight').text(carWeight);
        modal.find('#carAcceleration').text(carAcceleration);
        modal.find('#carModelYear').text(carModelYear);
        modal.find('#carOrigin').text(carOrigin);
        modal.find('#carPrice').text(carPrice);
        modal.find('#carDescription').text(carDescription);
        modal.find('#carBrandId').text(carBrandId);
        modal.find('#carCategoryId').text(carCategoryId);
        modal.find('#carSellerId').text(carSellerId);
    });

</script>
</html>