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
        <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/front-end/assets/images/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/front-end/assets/images/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/front-end/assets/images/favicon/favicon-16x16.png">
        <link rel="manifest" href="${pageContext.request.contextPath}/front-end/assets/images/favicon/site.webmanifest">
        <title>User Dashboard</title>

        <!-- Google font -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Exo+2:wght@400;500;600;700;800;900&display=swap"
              rel="stylesheet">
        <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
            rel="stylesheet">

        <!-- bootstrap css -->
        <link id="rtl-link" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/vendors/bootstrap.css">

        <!-- font-awesome css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/vendors/font-awesome.css">

        <!-- feather icon css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/vendors/feather-icon.css">

        <!-- slick css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/vendors/slick/slick.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/vendors/slick/slick-theme.css">

        <!-- Iconly css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/bulk-style.css">

        <!-- Template css -->
        <link id="color-link" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/style.css">
    </head>

    <body>





        <!-- Loader Start -->
        <div class="fullpage-loader">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
        <!-- Loader End -->

        <!-- Header Start -->
        <jsp:include page="pre-header.jsp"></jsp:include>
            <!-- Header End -->

            <!-- mobile fix menu start -->
            <div class="mobile-menu d-md-none d-block mobile-cart">
                <ul>
                    <li class="active">
                        <a href="index.html">
                            <i class="iconly-Home icli"></i>
                            <span>Home</span>
                        </a>
                    </li>

                    <li class="mobile-category">
                        <a href="javascript:void(0)">
                            <i class="iconly-Category icli js-link"></i>
                            <span>Category</span>
                        </a>
                    </li>

                    <li>
                        <a href="search.html" class="search-box">
                            <i class="iconly-Search icli"></i>
                            <span>Search</span>
                        </a>
                    </li>

                    <li>
                        <a href="wishlist.html" class="notifi-wishlist">
                            <i class="iconly-Heart icli"></i>
                            <span>My Wish</span>
                        </a>
                    </li>

                    <li>
                        <a href="cart.html">
                            <i class="iconly-Bag-2 icli fly-cate"></i>
                            <span>Cart</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- mobile fix menu end -->

            <!-- Breadcrumb Section Start -->
            <section class="breadscrumb-section pt-0">
                <div class="container-fluid-lg">
                    <div class="row">
                        <div class="col-12">
                            <div class="breadscrumb-contain">
                                <h2>User Dashboard</h2>
                                <nav>
                                    <ol class="breadcrumb mb-0">
                                        <li class="breadcrumb-item">
                                            <a href="index.html">
                                                <i class="fa-solid fa-house"></i>
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item active" aria-current="page">Hồ sơ</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- User Dashboard Section Start -->
            <section class="user-dashboard-section section-b-space">
                <div class="container-fluid-lg">
                    <div class="row">
                        <div class="col-xxl-3 col-lg-4">
                            <div class="dashboard-left-sidebar">
                                <div class="close-button d-flex d-lg-none">
                                    <button class="close-sidebar">
                                        <i class="fa-solid fa-xmark"></i>
                                    </button>
                                </div>
                                <div class="profile-box">
                                    <div class="cover-image">
                                        <img src="${pageContext.request.contextPath}/front-end/assets/images/inner-page/cover-img.jpg"
                                         class="img-fluid blur-up lazyload" alt="">
                                </div>

                                <div class="profile-contain">
                                    <div class="profile-image">
                                        <div class="position-relative">
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/inner-page/user/1.jpg"
                                                 class="blur-up lazyload update_img" alt="">
                                            <div class="cover-icon">
                                                <i class="fa-solid fa-pen">
                                                    <input type="file" onchange="readURL(this, 0)">
                                                </i>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="profile-name">
                                        <h3>${user.given_name} ${user.family_name}</h3>
                                        <h6 class="text-content">${user.email}</h6>
                                    </div>
                                </div>
                            </div>

                            <ul class="nav nav-pills user-nav-pills" id="pills-tab" role="tablist">
                                <li class="nav-item d-flex align-items-center" role="presentation">
                                    <a class="nav-link active" id="pills-dashboard-tab" data-bs-toggle="pill"
                                       data-bs-target="#pills-dashboard" type="button" role="tab"
                                       aria-controls="pills-dashboard" aria-selected="true"><i data-feather="home"></i>
                                        Hồ sơ</a>
                                </li>

                                <li class="nav-item" role="presentation">
                                    <a class="nav-link  d-flex align-items-center" id="pills-order-tab" data-bs-toggle="pill"
                                       data-bs-target="#pills-order" type="button" role="tab"
                                       aria-controls="pills-order" aria-selected="false"><i
                                            data-feather="shopping-bag"></i>Đơn hàng</a>
                                </li>





                                <li class="nav-item" role="presentation">
                                    <a class="nav-link  d-flex align-items-center" id="pills-address-tab" data-bs-toggle="pill"
                                       data-bs-target="#pills-address" type="button" role="tab"
                                       aria-controls="pills-address" aria-selected="false"><i
                                            data-feather="map-pin"></i>
                                        Địa chỉ</a>
                                </li>

                                <li class="nav-item" role="presentation">
                                    <a class="nav-link  d-flex align-items-center" id="pills-profile-tab" data-bs-toggle="pill"
                                       data-bs-target="#pills-profile" type="button" role="tab"
                                       aria-controls="pills-profile" aria-selected="false"><i data-feather="user"></i>
                                        Thông tin cá nhân</a>
                                </li>


                            </ul>
                        </div>
                    </div>

                    <div class="col-xxl-9 col-lg-8">
                        <button class="btn left-dashboard-show btn-animation btn-md fw-bold d-block mb-4 d-lg-none">Show
                            Menu</button>
                        <div class="dashboard-right-sidebar">
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-dashboard" role="tabpanel"
                                     aria-labelledby="pills-dashboard-tab">
                                    <div class="dashboard-home">
                                        <div class="title">
                                            <h2>Bảng điều khiển</h2>
                                            <span class="title-leaf">
                                                <svg class="icon-width bg-gray">
                                                <use xlink:href="${pageContext.request.contextPath}/front-end/assets/svg/leaf.svg#leaf"></use>
                                                </svg>
                                            </span>
                                        </div>

                                        <div class="dashboard-user-name">

                                            <p class="text-content">Quản lý tài khoản của bạn tại đây , thay đổi những thứ thuộc về bạn.</p>
                                        </div>

                                        <div class="total-box">
                                            <div class="row g-sm-4 g-3">
                                                



                                                <div class="col-xxl-4 col-lg-6 col-md-4 col-sm-6">
                                                    <div class="totle-contain">
                                                        <img src="${pageContext.request.contextPath}/front-end/assets/images/svg/wishlist.svg"
                                                             class="img-1 blur-up lazyload" alt="">
                                                        <img src="${pageContext.request.contextPath}/front-end/assets/images/svg/wishlist.svg"
                                                             class="blur-up lazyload" alt="">
                                                        <div class="totle-detail">
                                                            <h5>Tổng số đã thanh toán</h5>
                                                            <h3>${ol ? ol.size() :0}</h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="dashboard-title">
                                            <h3>Thông tin tài khoản</h3>
                                        </div>

                                        <div class="row g-4">
                                            <div class="col-12">
                                                <div class="dashboard-contant-title">
                                                    <h4>Thông tin liên hệ
                                                    </h4>
                                                </div>
                                                <div class="dashboard-detail">
                                                    <h6 class="text-content">${user.phone}</h6>
                                                    <h6 class="text-content">${user.email}</h6>
                                                    <a href="${pageContext.request.contextPath}/mail"><h4>Đổi mật khẩu</h4></a>
                                                </div>
                                            </div>




                                        </div>
                                    </div>
                                </div>



                                <div class="tab-pane fade show" id="pills-order" role="tabpanel"
                                     aria-labelledby="pills-order-tab">
                                    <div class="dashboard-order">
                                        <div class="title">
                                            <h2>Lịch sử đặt cọc</h2>
                                            <span class="title-leaf title-leaf-gray">
                                                <svg class="icon-width bg-gray">
                                                <use xlink:href="${pageContext.request.contextPath}/front-end/assets/svg/leaf.svg#leaf"></use>
                                                </svg>
                                            </span>
                                        </div>

                                        <div class="order-contain">
                                            <c:forEach var="ol" items="${orderList}">
                                                <div class="order-box dashboard-bg-box" >
                                                    <div class="order-container">
                                                        <div class="order-icon">
                                                            <i data-feather="box"></i>
                                                        </div>

                                                        <div class="order-detail">
                                                            <h4>Trạng thái<span>Đã đặt cọc</span></h4>
                                                            <h6 class="text-content"></h6>
                                                        </div>
                                                        <div>
                                                            <a href="#" class="button-39"  data-bs-toggle="modal" 
                                                               onclick="showQRCodeModal('${ol.car.car_id}', '${ol.car.name}')">Kiểm tra</a>
                                                        </div>
                                                    </div>

                                                    <div class="product-order-detail mt-2">
                                                        <a href="javascript:void(0)" class="order-image">
                                                            <c:set var="firstImagePrinted" value="false" />
                                                            <c:forEach items="${carImage}" var="ci">
                                                                <c:if test="${ci.car_id == ol.car.car_id}">
                                                                    <c:forEach items="${ci.image_url}" var="obj">
                                                                        <c:if test="${not firstImagePrinted}">
                                                                            <img src="${obj}" alt="Car Image" class="img-fluid blur-up lazyload rounded"  style="object-fit: cover;max-width:100%; max-height: 100%;">
                                                                            <c:set var="firstImagePrinted" value="true" />
                                                                        </c:if>
                                                                    </c:forEach>
                                                                </c:if> 
                                                            </c:forEach>
                                                        </a>

                                                        <div class="order-wrap">
                                                            <a href="javascript:void(0)" >
                                                                <h3>${ol.car.name}</h3>
                                                            </a>
                                                            <p class="text-content" style="
                                                               line-height: 1.5;
                                                               -webkit-line-clamp: 2;
                                                               -webkit-box-orient: vertical;
                                                               display: -webkit-box;
                                                               overflow: hidden;">${ol.car.description}</p>
                                                            <ul class="product-size">
                                                                <li>
                                                                    <div class="size-box">
                                                                        <h6 class="text-content">Giá : </h6>
                                                                        <h5>${ol.car.price} vnđ</h5>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="size-box">
                                                                        <h6 class="text-content">Đánh giá : </h6>
                                                                        <div class="product-rating ms-2">
                                                                            <ul class="rating">
                                                                                <li>
                                                                                    <i data-feather="star" class="fill"></i>
                                                                                </li>
                                                                                <li>
                                                                                    <i data-feather="star" class="fill"></i>
                                                                                </li>
                                                                                <li>
                                                                                    <i data-feather="star" class="fill"></i>
                                                                                </li>
                                                                                <li>
                                                                                    <i data-feather="star" class="fill"></i>
                                                                                </li>
                                                                                <li>
                                                                                    <i data-feather="star"></i>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="size-box">
                                                                        <h6 class="text-content">Mẫu xe : </h6>
                                                                        <c:forEach var="cb" items="${carBrand}">
                                                                            <c:if test="${cb.id == ol.car.brand_id}">
                                                                                <h5>${cb.name}</h5>

                                                                            </c:if>
                                                                        </c:forEach>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="size-box">
                                                                        <h6 class="text-content">Khối lượng : </h6>
                                                                        <h5>${ol.car.weight} kg</h5>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>


                                            </c:forEach>




                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade show" id="pills-address" role="tabpanel"
                                     aria-labelledby="pills-address-tab">
                                    <div class="dashboard-address">
                                        <div class="title title-flex">
                                            <div>
                                                <h2>Địa chỉ</h2>
                                                <span class="title-leaf">
                                                    <svg class="icon-width bg-gray">
                                                    <use xlink:href="${pageContext.request.contextPath}/front-end/assets/svg/leaf.svg#leaf"></use>
                                                    </svg>
                                                </span>
                                            </div>

                                            <a class="btn theme-bg-color text-white btn-sm fw-bold mt-lg-0 mt-3"
                                               data-bs-toggle="modal" data-bs-target="#add-address"><i
                                                    data-feather="plus" class="me-2"></i>Thêm địa chỉ mới</a>
                                        </div>

                                        <div class="row g-sm-4 g-3">
                                            <c:forEach items="${listAddr}" var="a">
                                                <div class="col-xxl-4 col-xl-6 col-lg-12 col-md-6">
                                                    <div class="address-box">
                                                        <div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="jack"
                                                                       id="flexRadioDefault2" checked>
                                                            </div>

                                                            <div class="label">
                                                                <label>Home</label>
                                                            </div>

                                                            <div class="table-responsive address-table">
                                                                <table class="table">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td colspan="2">${user.given_name}
                                                                                ${user.family_name}</td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>Địa chỉ :</td>
                                                                            <td>
                                                                                <p>${a.address}
                                                                                </p>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>Mã Pin :</td>
                                                                            <td>${a.pin_code}</td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>Điện thoại </td>
                                                                            <td>: ${user.phone}</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>

                                                        <div class="button-group">
                                                            <a class="button-39 w-100"
                                                               data-bs-toggle="modal" 
                                                               onclick="updateModal('${a.address_id}')"
                                                               data-bs-target="#editProfile"><i
                                                                    data-feather="edit"></i>
                                                                Chỉnh sửa</a>
                                                            <a class="button-39 w-100"
                                                               href="dashboard?action=delete&idz=${user.user_id}&id_address=${a.address_id}"><i
                                                                    data-feather="trash-2"></i>
                                                                Xóa</a>
                                                        </div>
                                                    </div>
                                                </div>

                                            </c:forEach>


                                        </div>
                                    </div>
                                </div>



                                <div class="tab-pane fade show" id="pills-profile" role="tabpanel"
                                     aria-labelledby="pills-profile-tab">
                                    <div class="dashboard-profile">
                                        <div class="title">
                                            <h2>Thông tin cá nhân</h2>
                                            <span class="title-leaf">
                                                <svg class="icon-width bg-gray">
                                                <use xlink:href="${pageContext.request.contextPath}/front-end/assets/svg/leaf.svg#leaf"></use>
                                                </svg>
                                            </span>
                                        </div>

                                        <div class="profile-detail dashboard-bg-box">
                                            <div class="dashboard-title">
                                                <h3>Tên hồ sơ</h3>
                                            </div>
                                            <div class="profile-name-detail">
                                                <div class="d-sm-flex align-items-center d-block">
                                                    <h3>${user.given_name} ${user.family_name}</h3>
                                                    <div class="product-rating profile-rating">
                                                        <ul class="rating">
                                                            <li>
                                                                <i data-feather="star" class="fill"></i>
                                                            </li>
                                                            <li>
                                                                <i data-feather="star" class="fill"></i>
                                                            </li>
                                                            <li>
                                                                <i data-feather="star" class="fill"></i>
                                                            </li>
                                                            <li>
                                                                <i data-feather="star"></i>
                                                            </li>
                                                            <li>
                                                                <i data-feather="star"></i>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <a href="javascript:void(0)" data-bs-toggle="modal"
                                                   data-bs-target="#editProfilee">Edit</a>
                                            </div>

                                            <div class="location-profile">
                                                <ul>
                                                    <li>
                                                        <div class="location-box">
                                                            <i data-feather="map-pin"></i>
                                                            <h6>${user.dob}</h6>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="location-box">
                                                            <i data-feather="mail"></i>
                                                            <h6>${user.email}</h6>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="location-box">
                                                            <i data-feather="check-square"></i>
                                                            <h6>Tham gia vào </h6>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>

                                            <div class="profile-description">
                                                <p>*Lưu ý : Quản trị viên không có quyền thay đổi thông tin quan trọng của khách hàng</p>
                                            </div>
                                        </div>

                                        <div class="profile-about dashboard-bg-box">
                                            <div class="row">
                                                <div class="col-xxl-9">
                                                    <div class="dashboard-title mb-3">
                                                        <h3>Chi tiết</h3>
                                                    </div>

                                                    <div class="table-responsive">
                                                        <table class="table">
                                                            <tbody>
                                                                <tr>
                                                                    <td>Tên riêng :</td>
                                                                    <td>${user.given_name != "" ? user.given_name : "Bạn chưa thêm tên riêng của mình!" }</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Họ :</td>
                                                                    <td>${user.family_name!= "" ? user.family_name :
                                                                          "Bạn chưa thêm tên họ của mình !"}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Ngày sinh :</td>
                                                                    <td>${user.dob!= "" ? user.dob: "Bạn chưa thêm ngày sinh của mình !"}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Số điện thoại :</td>
                                                                    <td>
                                                                        <a>${user.phone != "" ? user.phone : "Bạn cần cập nhật số điện thoại cá nhân"}</a>
                                                                    </td>
                                                                </tr>

                                                            </tbody>
                                                        </table>
                                                    </div>

                                                    <div class="dashboard-title mb-3">
                                                        <h3>Thông tin đăng nhập</h3>
                                                    </div>

                                                    <div class="table-responsive">
                                                        <table class="table">
                                                            <tbody>
                                                                <tr>
                                                                    <td>Email :</td>
                                                                    <td>
                                                                        <a href="javascript:void(0)">${user.email}
                                                                        </a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Thông tin đăng nhập :</td>
                                                                    <td>
                                                                        <a href="${pageContext.request.contextPath}/mail">********
                                                                            <span >Thay đổi</span></a>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>

                                                <div class="col-xxl-3">
                                                    <div class="profile-image">
                                                        <img src="${pageContext.request.contextPath}/front-end/assets/images/inner-page/dashboard-profile.png"
                                                             class="img-fluid blur-up lazyload" alt="">
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- User Dashboard Section End -->

        <!-- Footer Section Start -->
        <jsp:include page="footer.jsp"></jsp:include>
            <!-- Footer Section End -->
            <div class="modal fade" id="qrModal" tabindex="-1" aria-labelledby="qrModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="qrModalLabel">Mã đơn hàng</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <img id="qrImage" src="" alt="QR Code" class="img-fluid w-100" />
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Tap to top start -->
            <div class="theme-option">
                <div class="back-to-top">
                    <a id="back-to-top" href="#">
                        <i class="fas fa-chevron-up"></i>
                    </a>
                </div>
            </div>
            <!-- Tap to top end -->

            <!-- Bg overlay Start -->
            <div class="bg-overlay"></div>
            <!-- Bg overlay End -->

            <!-- Add address modal box start -->
            <div class="modal fade " id="add-address" tabindex="-1" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
                    <div class="modal-content">
                        <div class="modal-header">


                            <h5 class="modal-title" id="exampleModalLabel">Thêm địa chỉ mới</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <i class="fa-solid fa-xmark"></i>
                            </button>
                        </div>
                        <form action="dashboard?action=add&idz=${user.user_id}" method="POST">
                        <div class="modal-body">
                            <div class="form-floating mb-4 theme-form-floating">
                                <textarea class="form-control" name="address" placeholder="Leave a comment here"
                                          id="address" style="height: 100px" required></textarea>
                                <label for="address">Nhập địa chỉ của bạn</label>
                            </div>
                            <div class="form-floating mb-4 theme-form-floating">
                                <input type="number" class="form-control" id="pin" name="pin"
                                       placeholder="Enter Pin Code" required>
                                <label for="pin">Mã Pin khu vực</label>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="reset" class="button-38"
                                    style="color:#751c21">Xóa</button>
                            <button type="submit" class="button-38" style="color:var(--theme-color)">Lưu</button>   
                        </div>
                    </form>


                </div>
            </div>
        </div>
        <!-- Add address modal box end -->

        <!-- Location Modal Start -->
        <div class="modal location-modal fade theme-modal" id="locationModal" tabindex="-1"
             aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel1">Choose your Delivery Location</h5>
                        <p class="mt-1 text-content">Enter your address and we will specify the offer for your area.</p>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="location-list">
                            <div class="search-input">
                                <input type="search" class="form-control" placeholder="Search Your Area">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </div>

                            <div class="disabled-box">
                                <h6>Select a Location</h6>
                            </div>

                            <ul class="location-select custom-height">
                                <li>
                                    <a href="javascript:void(0)">
                                        <h6>Alabama</h6>
                                        <span>Min: $130</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="javascript:void(0)">
                                        <h6>Arizona</h6>
                                        <span>Min: $150</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="javascript:void(0)">
                                        <h6>California</h6>
                                        <span>Min: $110</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="javascript:void(0)">
                                        <h6>Colorado</h6>
                                        <span>Min: $140</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="javascript:void(0)">
                                        <h6>Florida</h6>
                                        <span>Min: $160</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="javascript:void(0)">
                                        <h6>Georgia</h6>
                                        <span>Min: $120</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="javascript:void(0)">
                                        <h6>Kansas</h6>
                                        <span>Min: $170</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="javascript:void(0)">
                                        <h6>Minnesota</h6>
                                        <span>Min: $120</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="javascript:void(0)">
                                        <h6>New York</h6>
                                        <span>Min: $110</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="javascript:void(0)">
                                        <h6>Washington</h6>
                                        <span>Min: $130</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Location Modal End -->

        <div class="modal fade" id="editProfilee" tabindex="-1" aria-labelledby="exampleModalLabel2"
             aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered modal-fullscreen-sm-down">
                <div class="modal-content">


                    <form action="dashboard?action=editPro&idz=${user.user_id}" method="POST">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel2">Edit Profile</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                <i class="fa-solid fa-xmark"></i>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row g-4">

                                <div class="col-xxl-6">

                                    <div class="form-floating theme-form-floating">

                                        <input type="text" class="form-control" id="fname" name="fname">
                                        <label for="pname">Tên</label>
                                    </div>

                                </div>

                                <div class="col-xxl-6">

                                    <div class="form-floating theme-form-floating">
                                        <input type="text" class="form-control" id="lname" name="lname">
                                        <label for="number">Họ</label>
                                    </div>

                                </div>

                                <div class="col-xxl-6">

                                    <div class="form-floating theme-form-floating">
                                        <input type="date" class="form-control" id="dob" name="dob">
                                        <label for="number">Ngày sinh</label>
                                    </div>

                                </div>

                                <div class="col-xxl-6">

                                    <div class="form-floating theme-form-floating">
                                        <input type="number" class="form-control" id="phone" name="phone">
                                        <label for="number">Số điện thoại</label>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="reset" class="button-38"
                                    style="color:#751c21">Xóa</button>
                            <button type="submit" class="button-38" style="color:var(--theme-color)">Lưu</button>  
                        </div>
                    </form>



                </div>
            </div>
        </div>




        <!-- Edit Profile Start -->
        <div class="modal fade" id="editProfile" tabindex="-1" aria-labelledby="exampleModalLabel2"
             aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered modal-fullscreen-sm-down">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel2">Chỉnh sửa hồ sơ</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>

                    <form action="dashboard?action=edit&idz=${user.user_id}" method="POST">
                        <div class="modal-body">
                            <div class="row g-4">
                                <input type="hidden" id="address_id_input" name="address_id">
                                <div class="col-xxl-6">

                                    <div class="form-floating theme-form-floating">

                                        <input type="text" class="form-control" id="address" name="address">
                                        <label for="pname">Địa chỉ</label>
                                    </div>

                                </div>

                                <div class="col-xxl-6">

                                    <div class="form-floating theme-form-floating">
                                        <input type="number" class="form-control" id="number" name="pin_code">
                                        <label for="number">Mã Pin</label>
                                    </div>

                                </div>


                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="reset" class="button-38"
                                    style="color:#751c21">Xóa</button>
                            <button type="submit" class="button-38" style="color:var(--theme-color)">Lưu</button>
                        </div>

                    </form>


                </div>
            </div>
        </div>
        <!-- Edit Profile End -->

        <!-- Edit Card Start -->
        <div class="modal fade theme-modal" id="editCard" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered modal-fullscreen-sm-down">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel8">Edit Card</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row g-4">
                            <div class="col-xxl-6">
                                <form>
                                    <div class="form-floating theme-form-floating">
                                        <input type="text" class="form-control" id="finame" value="Mark">
                                        <label for="finame">First Name</label>
                                    </div>
                                </form>
                            </div>

                            <div class="col-xxl-6">
                                <form>
                                    <div class="form-floating theme-form-floating">
                                        <input type="text" class="form-control" id="laname" value="Jecno">
                                        <label for="laname">Last Name</label>
                                    </div>
                                </form>
                            </div>

                            <div class="col-xxl-4">
                                <form>
                                    <div class="form-floating theme-form-floating">
                                        <select class="form-select" id="floatingSelect12"
                                                aria-label="Floating label select example">
                                            <option selected>Card Type</option>
                                            <option value="kindom">Visa Card</option>
                                            <option value="states">MasterCard Card</option>
                                            <option value="fra">RuPay Card</option>
                                            <option value="china">Contactless Card</option>
                                            <option value="spain">Maestro Card</option>
                                        </select>
                                        <label for="floatingSelect12">Card Type</label>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-animation btn-md fw-bold"
                                data-bs-dismiss="modal">Cancel</button>
                        <button type="button" class="btn theme-bg-color btn-md fw-bold text-light">Update Card</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Edit Card End -->



        <!-- latest jquery-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/jquery-3.6.0.min.js"></script>

        <!-- jquery ui-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/jquery-ui.min.js"></script>

        <!-- Bootstrap js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/bootstrap-notify.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/popper.min.js"></script>



        <!-- feather icon js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/feather/feather.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/feather/feather-icon.js"></script>

        <!-- Lazyload Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/lazysizes.min.js"></script>

        <!-- Wizard js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/wizard.js"></script>

        <!-- Slick js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/slick.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/custom_slick.js"></script>

        <!-- Quantity js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/quantity-2.js"></script>

        <!-- Nav & tab upside js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/nav-tab.js"></script>

        <!-- script js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/script.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/valid.js"></script>
    </body>
    <script>
                                                                   function updateModal(addressId) {
                                                                       document.getElementById('address_id_input').value = addressId;
                                                                   }


    </script>
    <script>
        function showQRCodeModal(carId, title) {
            // Ensure the modal exists
            var qrModal = document.getElementById('qrModal');
            if (!qrModal) return;

            // Construct the URL for the QR code
            var qrUrl = 'http://localhost:9999/apex_autos_servlet/generateQRCode?carId=' + encodeURIComponent(carId) + '&title=' + encodeURIComponent(title);

            // Set the source of the QR code image
            var qrImage = document.getElementById('qrImage');
            qrImage.src = qrUrl;

            // Show the modal
            var modal = new bootstrap.Modal(qrModal);
            modal.show();
        }
    </script>

</html>