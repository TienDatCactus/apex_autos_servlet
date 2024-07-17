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
                                                    <input type="file" onchange="readURL(this,0)">
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
                                                        <img src="${pageContext.request.contextPath}/front-end/assets/images/svg/order.svg"
                                                            class="img-1 blur-up lazyload" alt="">
                                                        <img src="${pageContext.request.contextPath}/front-end/assets/images/svg/order.svg"
                                                            class="blur-up lazyload" alt="">
                                                        <div class="totle-detail">
                                                            <h5>Tổng đơn hàng</h5>
                                                            <h3>3658</h3>
                                                        </div>
                                                    </div>
                                                </div>



                                                <div class="col-xxl-4 col-lg-6 col-md-4 col-sm-6">
                                                    <div class="totle-contain">
                                                        <img src="${pageContext.request.contextPath}/front-end/assets/images/svg/wishlist.svg"
                                                            class="img-1 blur-up lazyload" alt="">
                                                        <img src="${pageContext.request.contextPath}/front-end/assets/images/svg/wishlist.svg"
                                                            class="blur-up lazyload" alt="">
                                                        <div class="totle-detail">
                                                            <h5>Tổng số đã thanh toán</h5>
                                                            <h3>32158</h3>
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
                                                <h6 class="text-content">${user.given_name} ${user.family_name}</h6>
                                                <h6 class="text-content">${user.email}</h6>
                                                <a href="${pageContext.request.contextPath}/mail">Change Password</a>
                                            </div>
                                        </div>

                                       

                                        <div class="col-12">
                                            <div class="dashboard-contant-title">
                                                <h4>Address Book </h4>
                                            </div>

                                            <div class="row g-4">
                                                <div class="col-xxl-6">
                                                    <div class="dashboard-detail">
                                                        <h6 class="text-content">Default Billing Address</h6>
                                                        <h6 class="text-content">You have not set a default billing
                                                            address.</h6>
                                                        <a href="javascript:void(0)" data-bs-toggle="modal"
                                                            data-bs-target="#editProfile">Edit Address</a>
                                                    </div>
                                                </div>

                                                <div class="col-xxl-6">
                                                    <div class="dashboard-detail">
                                                        <h6 class="text-content">Default Shipping Address</h6>
                                                        <h6 class="text-content">You have not set a default shipping
                                                            address.</h6>
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade show" id="pills-wishlist" role="tabpanel"
                                    aria-labelledby="pills-wishlist-tab">
                                    <div class="dashboard-wishlist">
                                        <div class="title">
                                            <h2>My Wishlist History</h2>
                                            <span class="title-leaf title-leaf-gray">
                                                <svg class="icon-width bg-gray">
                                                    <use xlink:href="${pageContext.request.contextPath}/front-end/assets/svg/leaf.svg#leaf"></use>
                                                </svg>
                                            </span>
                                        </div>
                                        <div class="row g-sm-4 g-3">
                                            <div class="col-xxl-3 col-lg-6 col-md-4 col-sm-6">
                                                <div class="product-box-3 theme-bg-white h-100">
                                                    <div class="product-header">
                                                        <div class="product-image">
                                                            <a href="product-left-thumbnail.html">
                                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/cake/product/2.png"
                                                                    class="img-fluid blur-up lazyload" alt="">
                                                            </a>

                                                            <div class="product-header-top">
                                                                <button class="btn wishlist-button close_button">
                                                                    <i data-feather="x"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="product-footer">
                                                        <div class="product-detail">
                                                            <span class="span-name">Vegetable</span>
                                                            <a href="product-left-thumbnail.html">
                                                                <h5 class="name">Fresh Bread and Pastry Flour 200 g</h5>
                                                            </a>
                                                            <p class="text-content mt-1 mb-2 product-content">Cheesy
                                                                feet
                                                                cheesy grin brie. Mascarpone cheese and wine hard cheese
                                                                the
                                                                big cheese everyone loves smelly cheese macaroni cheese
                                                                croque monsieur.</p>
                                                            <h6 class="unit mt-1">250 ml</h6>
                                                            <h5 class="price">
                                                                <span class="theme-color">$08.02</span>
                                                                <del>$15.15</del>
                                                            </h5>
                                                            <div class="add-to-cart-box mt-2">
                                                                <button class="btn btn-add-cart addcart-button"
                                                                    tabindex="0">Add
                                                                    <span class="add-icon">
                                                                        <i class="fa-solid fa-plus"></i>
                                                                    </span>
                                                                </button>
                                                                <div class="cart_qty qty-box">
                                                                    <div class="input-group">
                                                                        <button type="button" class="qty-left-minus"
                                                                            data-type="minus" data-field="">
                                                                            <i class="fa fa-minus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
                                                                        <input
                                                                            class="form-control input-number qty-input"
                                                                            type="text" name="quantity" value="0">
                                                                        <button type="button" class="qty-right-plus"
                                                                            data-type="plus" data-field="">
                                                                            <i class="fa fa-plus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xxl-3 col-lg-6 col-md-4 col-sm-6">
                                                <div class="product-box-3 theme-bg-white h-100">
                                                    <div class="product-header">
                                                        <div class="product-image">
                                                            <a href="product-left-thumbnail.html">
                                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/cake/product/3.png"
                                                                    class="img-fluid blur-up lazyload" alt="">
                                                            </a>

                                                            <div class="product-header-top">
                                                                <button class="btn wishlist-button close_button">
                                                                    <i data-feather="x"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="product-footer">
                                                        <div class="product-detail">
                                                            <span class="span-name">Vegetable</span>
                                                            <a href="product-left-thumbnail.html">
                                                                <h5 class="name">Peanut Butter Bite Premium Butter
                                                                    Cookies
                                                                    600 g</h5>
                                                            </a>
                                                            <p class="text-content mt-1 mb-2 product-content">Feta
                                                                taleggio
                                                                croque monsieur swiss manchego cheesecake dolcelatte
                                                                jarlsberg. Hard cheese danish fontina boursin melted
                                                                cheese
                                                                fondue.</p>
                                                            <h6 class="unit mt-1">350 G</h6>
                                                            <h5 class="price">
                                                                <span class="theme-color">$04.33</span>
                                                                <del>$10.36</del>
                                                            </h5>
                                                            <div class="add-to-cart-box mt-2">
                                                                <button class="btn btn-add-cart addcart-button"
                                                                    tabindex="0">Add
                                                                    <span class="add-icon">
                                                                        <i class="fa-solid fa-plus"></i>
                                                                    </span>
                                                                </button>
                                                                <div class="cart_qty qty-box">
                                                                    <div class="input-group">
                                                                        <button type="button" class="qty-left-minus"
                                                                            data-type="minus" data-field="">
                                                                            <i class="fa fa-minus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
                                                                        <input
                                                                            class="form-control input-number qty-input"
                                                                            type="text" name="quantity" value="0">
                                                                        <button type="button" class="qty-right-plus"
                                                                            data-type="plus" data-field="">
                                                                            <i class="fa fa-plus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xxl-3 col-lg-6 col-md-4 col-sm-6">
                                                <div class="product-box-3 theme-bg-white h-100">
                                                    <div class="product-header">
                                                        <div class="product-image">
                                                            <a href="product-left-thumbnail.html">
                                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/cake/product/4.png"
                                                                    class="img-fluid blur-up lazyload" alt="">
                                                            </a>

                                                            <div class="product-header-top">
                                                                <button class="btn wishlist-button close_button">
                                                                    <i data-feather="x"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="product-footer">
                                                        <div class="product-detail">
                                                            <span class="span-name">Snacks</span>
                                                            <a href="product-left-thumbnail.html">
                                                                <h5 class="name">SnackAmor Combo Pack of Jowar Stick and
                                                                    Jowar Chips</h5>
                                                            </a>
                                                            <p class="text-content mt-1 mb-2 product-content">Lancashire
                                                                hard cheese parmesan. Danish fontina mozzarella cream
                                                                cheese
                                                                smelly cheese cheese and wine cheesecake dolcelatte
                                                                stilton.
                                                                Cream cheese parmesan who moved my cheese when the
                                                                cheese
                                                                comes out everybody's happy cream cheese red leicester
                                                                ricotta edam.</p>
                                                            <h6 class="unit mt-1">570 G</h6>
                                                            <h5 class="price">
                                                                <span class="theme-color">$12.52</span>
                                                                <del>$13.62</del>
                                                            </h5>
                                                            <div class="add-to-cart-box mt-2">
                                                                <button class="btn btn-add-cart addcart-button"
                                                                    tabindex="0">Add
                                                                    <span class="add-icon">
                                                                        <i class="fa-solid fa-plus"></i>
                                                                    </span>
                                                                </button>
                                                                <div class="cart_qty qty-box">
                                                                    <div class="input-group">
                                                                        <button type="button" class="qty-left-minus"
                                                                            data-type="minus" data-field="">
                                                                            <i class="fa fa-minus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
                                                                        <input
                                                                            class="form-control input-number qty-input"
                                                                            type="text" name="quantity" value="0">
                                                                        <button type="button" class="qty-right-plus"
                                                                            data-type="plus" data-field="">
                                                                            <i class="fa fa-plus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xxl-3 col-lg-6 col-md-4 col-sm-6">
                                                <div class="product-box-3 theme-bg-white h-100">
                                                    <div class="product-header">
                                                        <div class="product-image">
                                                            <a href="product-left-thumbnail.html">
                                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/cake/product/5.png"
                                                                    class="img-fluid blur-up lazyload" alt="">
                                                            </a>

                                                            <div class="product-header-top">
                                                                <button class="btn wishlist-button close_button">
                                                                    <i data-feather="x"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="product-footer">
                                                        <div class="product-detail">
                                                            <span class="span-name">Snacks</span>
                                                            <a href="product-left-thumbnail.html">
                                                                <h5 class="name">Yumitos Chilli Sprinkled Potato Chips
                                                                    100 g
                                                                </h5>
                                                            </a>
                                                            <p class="text-content mt-1 mb-2 product-content">Cheddar
                                                                cheddar pecorino hard cheese hard cheese cheese and
                                                                biscuits
                                                                bocconcini babybel. Cow goat paneer cream cheese fromage
                                                                cottage cheese cauliflower cheese jarlsberg.</p>
                                                            <h6 class="unit mt-1">100 G</h6>
                                                            <h5 class="price">
                                                                <span class="theme-color">$10.25</span>
                                                                <del>$12.36</del>
                                                            </h5>
                                                            <div class="add-to-cart-box mt-2">
                                                                <button class="btn btn-add-cart addcart-button"
                                                                    tabindex="0">Add
                                                                    <span class="add-icon">
                                                                        <i class="fa-solid fa-plus"></i>
                                                                    </span>
                                                                </button>
                                                                <div class="cart_qty qty-box">
                                                                    <div class="input-group">
                                                                        <button type="button" class="qty-left-minus"
                                                                            data-type="minus" data-field="">
                                                                            <i class="fa fa-minus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
                                                                        <input
                                                                            class="form-control input-number qty-input"
                                                                            type="text" name="quantity" value="0">
                                                                        <button type="button" class="qty-right-plus"
                                                                            data-type="plus" data-field="">
                                                                            <i class="fa fa-plus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xxl-3 col-lg-6 col-md-4 col-sm-6">
                                                <div class="product-box-3 theme-bg-white h-100">
                                                    <div class="product-header">
                                                        <div class="product-image">
                                                            <a href="product-left-thumbnail.html">
                                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/cake/product/6.png"
                                                                    class="img-fluid blur-up lazyload" alt="">
                                                            </a>

                                                            <div class="product-header-top">
                                                                <button class="btn wishlist-button close_button">
                                                                    <i data-feather="x"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="product-footer">
                                                        <div class="product-detail">
                                                            <span class="span-name">Vegetable</span>
                                                            <a href="product-left-thumbnail.html">
                                                                <h5 class="name">Fantasy Crunchy Choco Chip Cookies</h5>
                                                            </a>
                                                            <p class="text-content mt-1 mb-2 product-content">Bavarian
                                                                bergkase smelly cheese swiss cut the cheese lancashire
                                                                who
                                                                moved my cheese manchego melted cheese. Red leicester
                                                                paneer
                                                                cow when the cheese comes out everybody's happy croque
                                                                monsieur goat melted cheese port-salut.</p>
                                                            <h6 class="unit mt-1">550 G</h6>
                                                            <h5 class="price">
                                                                <span class="theme-color">$14.25</span>
                                                                <del>$16.57</del>
                                                            </h5>
                                                            <div class="add-to-cart-box mt-2">
                                                                <button class="btn btn-add-cart addcart-button"
                                                                    tabindex="0">Add
                                                                    <span class="add-icon">
                                                                        <i class="fa-solid fa-plus"></i>
                                                                    </span>
                                                                </button>
                                                                <div class="cart_qty qty-box">
                                                                    <div class="input-group">
                                                                        <button type="button" class="qty-left-minus"
                                                                            data-type="minus" data-field="">
                                                                            <i class="fa fa-minus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
                                                                        <input
                                                                            class="form-control input-number qty-input"
                                                                            type="text" name="quantity" value="0">
                                                                        <button type="button" class="qty-right-plus"
                                                                            data-type="plus" data-field="">
                                                                            <i class="fa fa-plus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xxl-3 col-lg-6 col-md-4 col-sm-6">
                                                <div class="product-box-3 theme-bg-white h-100">
                                                    <div class="product-header">
                                                        <div class="product-image">
                                                            <a href="product-left-thumbnail.html">
                                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/cake/product/7.png"
                                                                    class="img-fluid blur-up lazyload" alt="">
                                                            </a>

                                                            <div class="product-header-top">
                                                                <button class="btn wishlist-button close_button">
                                                                    <i data-feather="x"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="product-footer">
                                                        <div class="product-detail">
                                                            <span class="span-name">Vegetable</span>
                                                            <a href="product-left-thumbnail.html">
                                                                <h5 class="name">Fresh Bread and Pastry Flour 200 g</h5>
                                                            </a>
                                                            <p class="text-content mt-1 mb-2 product-content">Melted
                                                                cheese
                                                                babybel chalk and cheese. Port-salut port-salut cream
                                                                cheese
                                                                when the cheese comes out everybody's happy cream cheese
                                                                hard cheese cream cheese red leicester.</p>
                                                            <h6 class="unit mt-1">1 Kg</h6>
                                                            <h5 class="price">
                                                                <span class="theme-color">$12.68</span>
                                                                <del>$14.69</del>
                                                            </h5>
                                                            <div class="add-to-cart-box mt-2">
                                                                <button class="btn btn-add-cart addcart-button"
                                                                    tabindex="0">Add
                                                                    <span class="add-icon">
                                                                        <i class="fa-solid fa-plus"></i>
                                                                    </span>
                                                                </button>
                                                                <div class="cart_qty qty-box">
                                                                    <div class="input-group">
                                                                        <button type="button" class="qty-left-minus"
                                                                            data-type="minus" data-field="">
                                                                            <i class="fa fa-minus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
                                                                        <input
                                                                            class="form-control input-number qty-input"
                                                                            type="text" name="quantity" value="0">
                                                                        <button type="button" class="qty-right-plus"
                                                                            data-type="plus" data-field="">
                                                                            <i class="fa fa-plus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xxl-3 col-lg-6 col-md-4 col-sm-6">
                                                <div class="product-box-3 theme-bg-white h-100">
                                                    <div class="product-header">
                                                        <div class="product-image">
                                                            <a href="product-left-thumbnail.html">
                                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/cake/product/2.png"
                                                                    class="img-fluid blur-up lazyload" alt="">
                                                            </a>

                                                            <div class="product-header-top">
                                                                <button class="btn wishlist-button close_button">
                                                                    <i data-feather="x"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="product-footer">
                                                        <div class="product-detail">
                                                            <span class="span-name">Vegetable</span>
                                                            <a href="product-left-thumbnail.html">
                                                                <h5 class="name">Fresh Bread and Pastry Flour 200 g</h5>
                                                            </a>
                                                            <p class="text-content mt-1 mb-2 product-content">Squirty
                                                                cheese
                                                                cottage cheese cheese strings. Red leicester paneer
                                                                danish
                                                                fontina queso lancashire when the cheese comes out
                                                                everybody's happy cottage cheese paneer.</p>
                                                            <h6 class="unit mt-1">250 ml</h6>
                                                            <h5 class="price">
                                                                <span class="theme-color">$08.02</span>
                                                                <del>$15.15</del>
                                                            </h5>
                                                            <div class="add-to-cart-box mt-2">
                                                                <button class="btn btn-add-cart addcart-button"
                                                                    tabindex="0">Add
                                                                    <span class="add-icon">
                                                                        <i class="fa-solid fa-plus"></i>
                                                                    </span>
                                                                </button>
                                                                <div class="cart_qty qty-box">
                                                                    <div class="input-group">
                                                                        <button type="button" class="qty-left-minus"
                                                                            data-type="minus" data-field="">
                                                                            <i class="fa fa-minus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
                                                                        <input
                                                                            class="form-control input-number qty-input"
                                                                            type="text" name="quantity" value="0">
                                                                        <button type="button" class="qty-right-plus"
                                                                            data-type="plus" data-field="">
                                                                            <i class="fa fa-plus"
                                                                                aria-hidden="true"></i>
                                                                        </button>
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

                                <div class="tab-pane fade show" id="pills-order" role="tabpanel"
                                    aria-labelledby="pills-order-tab">
                                    <div class="dashboard-order">
                                        <div class="title">
                                            <h2>My Orders History</h2>
                                            <span class="title-leaf title-leaf-gray">
                                                <svg class="icon-width bg-gray">
                                                    <use xlink:href="${pageContext.request.contextPath}/front-end/assets/svg/leaf.svg#leaf"></use>
                                                </svg>
                                            </span>
                                        </div>

                                        <div class="order-contain">
                                            <div class="order-box dashboard-bg-box">
                                                <div class="order-container">
                                                    <div class="order-icon">
                                                        <i data-feather="box"></i>
                                                    </div>

                                                    <div class="order-detail">
                                                        <h4>Delivere <span>Panding</span></h4>
                                                        <h6 class="text-content">Gouda parmesan caerphilly mozzarella
                                                            cottage cheese cauliflower cheese taleggio gouda.</h6>
                                                    </div>
                                                </div>

                                                <div class="product-order-detail">
                                                    <a href="product-left-thumbnail.html" class="order-image">
                                                        <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/1.png"
                                                            class="blur-up lazyload" alt="">
                                                    </a>

                                                    <div class="order-wrap">
                                                        <a href="product-left-thumbnail.html">
                                                            <h3>Fantasy Crunchy Choco Chip Cookies</h3>
                                                        </a>
                                                        <p class="text-content">Cheddar dolcelatte gouda. Macaroni
                                                            cheese
                                                            cheese strings feta halloumi cottage cheese jarlsberg cheese
                                                            triangles say cheese.</p>
                                                        <ul class="product-size">
                                                            <li>
                                                                <div class="size-box">
                                                                    <h6 class="text-content">Price : </h6>
                                                                    <h5>$20.68</h5>
                                                                </div>
                                                            </li>

                                                            <li>
                                                                <div class="size-box">
                                                                    <h6 class="text-content">Rate : </h6>
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
                                                                    <h6 class="text-content">Sold By : </h6>
                                                                    <h5>Fresho</h5>
                                                                </div>
                                                            </li>

                                                            <li>
                                                                <div class="size-box">
                                                                    <h6 class="text-content">Quantity : </h6>
                                                                    <h5>250 G</h5>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="order-box dashboard-bg-box">
                                                <div class="order-container">
                                                    <div class="order-icon">
                                                        <i data-feather="box"></i>
                                                    </div>

                                                    <div class="order-detail">
                                                        <h4>Delivered <span class="success-bg">Success</span></h4>
                                                        <h6 class="text-content">Cheese on toast cheesy grin cheesy grin
                                                            cottage cheese caerphilly everyone loves cottage cheese the
                                                            big
                                                            cheese.</h6>
                                                    </div>
                                                </div>

                                                <div class="product-order-detail">
                                                    <a href="product-left-thumbnail.html" class="order-image">
                                                        <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/2.png" alt=""
                                                            class="blur-up lazyload">
                                                    </a>

                                                    <div class="order-wrap">
                                                        <a href="product-left-thumbnail.html">
                                                            <h3>Cold Brew Coffee Instant Coffee 50 g</h3>
                                                        </a>
                                                        <p class="text-content">Pecorino paneer port-salut when the
                                                            cheese
                                                            comes out everybody's happy red leicester mascarpone blue
                                                            castello cauliflower cheese.</p>
                                                        <ul class="product-size">
                                                            <li>
                                                                <div class="size-box">
                                                                    <h6 class="text-content">Price : </h6>
                                                                    <h5>$20.68</h5>
                                                                </div>
                                                            </li>

                                                            <li>
                                                                <div class="size-box">
                                                                    <h6 class="text-content">Rate : </h6>
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
                                                                    <h6 class="text-content">Sold By : </h6>
                                                                    <h5>Fresho</h5>
                                                                </div>
                                                            </li>

                                                            <li>
                                                                <div class="size-box">
                                                                    <h6 class="text-content">Quantity : </h6>
                                                                    <h5>250 G</h5>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="order-box dashboard-bg-box">
                                                <div class="order-container">
                                                    <div class="order-icon">
                                                        <i data-feather="box"></i>
                                                    </div>

                                                    <div class="order-detail">
                                                        <h4>Delivere <span>Panding</span></h4>
                                                        <h6 class="text-content">Cheesy grin boursin cheesy grin
                                                            cheesecake
                                                            blue castello cream cheese lancashire melted cheese.</h6>
                                                    </div>
                                                </div>

                                                <div class="product-order-detail">
                                                    <a href="product-left-thumbnail.html" class="order-image">
                                                        <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/3.png" alt=""
                                                            class="blur-up lazyload">
                                                    </a>

                                                    <div class="order-wrap">
                                                        <a href="product-left-thumbnail.html">
                                                            <h3>Peanut Butter Bite Premium Butter Cookies 600 g</h3>
                                                        </a>
                                                        <p class="text-content">Cow bavarian bergkase mascarpone paneer
                                                            squirty cheese fromage frais cheese slices when the cheese
                                                            comes
                                                            out everybody's happy.</p>
                                                        <ul class="product-size">
                                                            <li>
                                                                <div class="size-box">
                                                                    <h6 class="text-content">Price : </h6>
                                                                    <h5>$20.68</h5>
                                                                </div>
                                                            </li>

                                                            <li>
                                                                <div class="size-box">
                                                                    <h6 class="text-content">Rate : </h6>
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
                                                                    <h6 class="text-content">Sold By : </h6>
                                                                    <h5>Fresho</h5>
                                                                </div>
                                                            </li>

                                                            <li>
                                                                <div class="size-box">
                                                                    <h6 class="text-content">Quantity : </h6>
                                                                    <h5>250 G</h5>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="order-box dashboard-bg-box">
                                                <div class="order-container">
                                                    <div class="order-icon">
                                                        <i data-feather="box"></i>
                                                    </div>

                                                    <div class="order-detail">
                                                        <h4>Delivered <span class="success-bg">Success</span></h4>
                                                        <h6 class="text-content">Caerphilly port-salut parmesan pecorino
                                                            croque monsieur dolcelatte melted cheese cheese and wine.
                                                        </h6>
                                                    </div>
                                                </div>

                                                <div class="product-order-detail">
                                                    <a href="product-left-thumbnail.html" class="order-image">
                                                        <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/4.png"
                                                            class="blur-up lazyload" alt="">
                                                    </a>

                                                    <div class="order-wrap">
                                                        <a href="product-left-thumbnail.html">
                                                            <h3>SnackAmor Combo Pack of Jowar Stick and Jowar Chips</h3>
                                                        </a>
                                                        <p class="text-content">The big cheese cream cheese pepper jack
                                                            cheese slices danish fontina everyone loves cheese on toast
                                                            bavarian bergkase.</p>
                                                        <ul class="product-size">
                                                            <li>
                                                                <div class="size-box">
                                                                    <h6 class="text-content">Price : </h6>
                                                                    <h5>$20.68</h5>
                                                                </div>
                                                            </li>

                                                            <li>
                                                                <div class="size-box">
                                                                    <h6 class="text-content">Rate : </h6>
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
                                                                    <h6 class="text-content">Sold By : </h6>
                                                                    <h5>Fresho</h5>
                                                                </div>
                                                            </li>

                                                            <li>
                                                                <div class="size-box">
                                                                    <h6 class="text-content">Quantity : </h6>
                                                                    <h5>250 G</h5>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade show" id="pills-address" role="tabpanel"
                                    aria-labelledby="pills-address-tab">
                                    <div class="dashboard-address">
                                        <div class="title title-flex">
                                            <div>
                                                <h2>My Address Book</h2>
                                                <span class="title-leaf">
                                                    <svg class="icon-width bg-gray">
                                                        <use xlink:href="${pageContext.request.contextPath}/front-end/assets/svg/leaf.svg#leaf"></use>
                                                    </svg>
                                                </span>
                                            </div>

                                            <button class="btn theme-bg-color text-white btn-sm fw-bold mt-lg-0 mt-3"
                                                data-bs-toggle="modal" data-bs-target="#add-address"><i
                                                    data-feather="plus" class="me-2"></i> Add New Address</button>
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
                                                                            <td>Address :</td>
                                                                            <td>
                                                                                <p>${a.address}
                                                                                </p>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>Pin Code :</td>
                                                                            <td>${a.pin_code}</td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>Phone :</td>
                                                                            <td>${user.phone}</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>

                                                        <div class="button-group">
                                                            <button class="btn btn-sm add-button w-100"
                                                                data-bs-toggle="modal" 
                                                                onclick="updateModal('${a.address_id}')"
                                                                data-bs-target="#editProfile"><i
                                                                    data-feather="edit"></i>
                                                                Edit</button>
                                                            <button class="btn btn-sm add-button w-100"
                                                                data-bs-toggle="modal"
                                                                data-bs-target="#removeProfile"><i
                                                                    data-feather="trash-2"></i>
                                                                Remove</button>
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
                                            <h2>My Profile</h2>
                                            <span class="title-leaf">
                                                <svg class="icon-width bg-gray">
                                                    <use xlink:href="${pageContext.request.contextPath}/front-end/assets/svg/leaf.svg#leaf"></use>
                                                </svg>
                                            </span>
                                        </div>

                                        <div class="profile-detail dashboard-bg-box">
<div class="dashboard-title">
                                            <h3>Profile Name</h3>
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
                                                        <h6>Licensed for 2 years</h6>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>

                                            <div class="profile-description">
                                                <p>Residences can be classified by and how they are connected to
                                                    neighbouring residences and land. Different types of housing tenure
                                                    can
                                                    be used for the same physical type.</p>
                                            </div>
                                        </div>

                                        <div class="profile-about dashboard-bg-box">
                                            <div class="row">
                                                <div class="col-xxl-9">
                                                    <div class="dashboard-title mb-3">
                                                        <h3>Profile About</h3>
                                                    </div>

                                                    <div class="table-responsive">
                                                        <table class="table">
                                                            <tbody>
                                                                <tr>
                                                                    <td>First Name :</td>
                                                                    <td>${user.given_name != "" ? user.given_name : "You
      need to update your first name !" }</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Last Name :</td>
                                                                    <td>${user.family_name!= "" ? user.family_name :
      "You need to update your family name !"}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Birthday :</td>
                                                                    <td>${user.dob!= "" ? user.dob: "You need to update
      your date of birth !"}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Phone Number :</td>
                                                                    <td>
                                                                        <a>${user.phone != "" ? user.phone : "You need
     to update your phone number !"}</a>
                                                                    </td>
                                                                </tr>

                                                            </tbody>
                                                        </table>
                                                    </div>

                                                    <div class="dashboard-title mb-3">
                                                        <h3>Login Details</h3>
                                                    </div>

                                                    <div class="table-responsive">
                                                        <table class="table">
                                                            <tbody>
                                                                <tr>
                                                                    <td>Email :</td>
                                                                    <td>
                                                                        <a href="javascript:void(0)">${user.email}
                                                                            <span data-bs-toggle="modal"
                                                                                data-bs-target="#editProfile">Edit</span></a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Password :</td>
                                                                    <td>
                                                                        <a href="reset">??????
                                                                            <span >Edit</span></a>
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
        <div class="modal fade theme-modal" id="add-address" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
                <div class="modal-content">
                    <div class="modal-header">


                        <h5 class="modal-title" id="exampleModalLabel">Add a new address</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>
                    <form action="dashboard?action=add&idz=${user.user_id}" method="POST">
                        <div class="modal-body">
                            <div class="form-floating mb-4 theme-form-floating">
                                <textarea class="form-control" name="address" placeholder="Leave a comment here"
                                    id="address" style="height: 100px" required></textarea>
                                <label for="address">Enter Address</label>
                            </div>
                            <div class="form-floating mb-4 theme-form-floating">
                                <input type="number" class="form-control" id="pin" name="pin"
                                    placeholder="Enter Pin Code" required>
                                <label for="pin">Pin Code</label>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary btn-md"
                                data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn theme-bg-color btn-md text-white">Save changes</button>
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

        <div class="modal fade theme-modal" id="editProfilee" tabindex="-1" aria-labelledby="exampleModalLabel2"
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
                                        <label for="pname">First Name</label>
                                    </div>

                                </div>

                                <div class="col-xxl-6">

                                    <div class="form-floating theme-form-floating">
                                        <input type="text" class="form-control" id="lname" name="lname">
                                        <label for="number">Last Name</label>
                                    </div>

                                </div>

                                <div class="col-xxl-6">

                                    <div class="form-floating theme-form-floating">
                                        <input type="date" class="form-control" id="dob" name="dob">
                                        <label for="number">DOB</label>
                                    </div>

                                </div>

                                <div class="col-xxl-6">

                                    <div class="form-floating theme-form-floating">
                                        <input type="number" class="form-control" id="phone" name="phone">
                                        <label for="number">Phone</label>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-animation btn-md fw-bold"
                                data-bs-dismiss="modal">Close</button>
                            <input type="submit" class="btn theme-bg-color btn-md fw-bold text-light"
                                value="Save changes"></button>
                        </div>
                    </form>



                </div>
            </div>
        </div>




        <!-- Edit Profile Start -->
        <div class="modal fade theme-modal" id="editProfile" tabindex="-1" aria-labelledby="exampleModalLabel2"
            aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered modal-fullscreen-sm-down">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel2">Edit Profile</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>

                    <form action="dashboard?action=edit&idz=${user.user_id}" method="POST">
                        <div class="modal-body">
                            <div class="row g-4">
                                <input type="hidden" id="address_id_input" name="address_id">
                                <div class="col-xxl-12">

                                    <div class="form-floating theme-form-floating">

                                        <input type="text" class="form-control" id="address" name="address">
                                        <label for="pname">Address</label>
                                    </div>

                                </div>

                                <div class="col-xxl-6">

                                    <div class="form-floating theme-form-floating">
                                        <input type="number" class="form-control" id="number" name="pin_code">
                                        <label for="number">Pin Code</label>
                                    </div>

                                </div>


                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-animation btn-md fw-bold"
                                data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn theme-bg-color btn-md fw-bold text-light">Save
                                changes</button>
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

        <!-- Remove Profile Modal Start -->
        <div class="modal fade theme-modal remove-profile" id="removeProfile" tabindex="-1"
            aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
                <div class="modal-content">
                    <div class="modal-header d-block text-center">
                        <h5 class="modal-title w-100" id="exampleModalLabel22">Are You Sure ?</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="remove-box">
                            <p>The permission for the use/group, preview is inherited from the object, object will
                                create a
                                new permission for this object</p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-animation btn-md fw-bold"
                            data-bs-dismiss="modal">No</button>
                        <button type="button" class="btn theme-bg-color btn-md fw-bold text-light"
                            data-bs-target="#removeAddress" data-bs-toggle="modal">Yes</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade theme-modal remove-profile" id="removeAddress" tabindex="-1"
            aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-center" id="exampleModalLabel12">Done!</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="remove-box text-center">
                            <h4 class="text-content">It's Removed.</h4>
                        </div>
                    </div>
                    <div class="modal-footer pt-0">
                        <button type="button" class="btn theme-bg-color btn-md fw-bold text-light"
                            data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Remove Profile Modal End -->

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
    </body>
    <script>
        function updateModal(addressId) {
            document.getElementById('address_id_input').value = addressId;
        }

    </script>

</html>