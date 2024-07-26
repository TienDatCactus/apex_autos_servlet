<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="ApexAutos" />
        <meta name="keywords" content="ApexAutos" />
        <meta name="author" content="ApexAutos" />
        <link rel="apple-touch-icon" sizes="180x180"
              href="${pageContext.request.contextPath}/front-end/assets/images/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32"
              href="${pageContext.request.contextPath}/front-end/assets/images/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16"
              href="${pageContext.request.contextPath}/front-end/assets/images/favicon/favicon-16x16.png">
        <link rel="manifest"
              href="${pageContext.request.contextPath}/front-end/assets/images/favicon/site.webmanifest">
        <title>On-demand last-mile delivery</title>

        <!-- Google font -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wdth,wght@0,75..100,300..800;1,75..100,300..800&display=swap" rel="stylesheet">
        <!-- bootstrap css -->
        <link id="rtl-link" rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/vendors/bootstrap.css">

        <!-- wow css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/front-end/assets/css/animate.min.css" />

        <!-- font-awesome css -->
        <link rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/vendors/font-awesome.css">

        <!-- feather icon css -->
        <link rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/vendors/feather-icon.css">

        <!-- slick css -->
        <link rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/vendors/slick/slick.css">
        <link rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/vendors/slick/slick-theme.css">

        <!-- Iconly css -->
        <link rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/bulk-style.css">
        <link rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/vendors/animate.css">

        <!-- Template css -->
        <link id="color-link" rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/style.css">
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
                                <h2>Order Tracking</h2>
                                <nav>
                                    <ol class="breadcrumb mb-0">
                                        <li class="breadcrumb-item">
                                            <a href="index.html">
                                                <i class="fa-solid fa-house"></i>
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item active" aria-current="page">Order Tracking</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- Order Detail Section Start -->
            <section class="order-detail">
                <div class="container-fluid-lg">
                    <div class="row g-sm-4 g-3">
                        <div class="col-xxl-3 col-xl-4 col-lg-6">
                            <div class="order-image">
                            <c:if test="${not empty qrFilePath}">
                                <img src="${qrFilePath}" alt="QR Code" class="img-fluid blur-up lazyload" alt="">
                            </c:if>
                        </div>
                    </div>

                    <div class="col-xxl-9 col-xl-8 col-lg-6">
                        <div class="row g-sm-4 g-3">
                            <div class="col-xl-4 col-sm-6">
                                <div class="order-details-contain">
                                    <div class="order-tracking-icon">
                                        <i data-feather="package" class="text-content"></i>
                                    </div>

                                    <div class="order-details-name">
                                        <h5 class="text-content">Tracking Code</h5>
                                        <h2 class="theme-color">MH4285UY</h2>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-4 col-sm-6">
                                <div class="order-details-contain">
                                    <div class="order-tracking-icon">
                                        <i data-feather="truck" class="text-content"></i>
                                    </div>

                                    <div class="order-details-name">
                                        <h5 class="text-content">Service</h5>
                                        <img src="../assets/images/inner-page/brand-name.svg"
                                             class="img-fluid blur-up lazyload" alt="">
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-4 col-sm-6">
                                <div class="order-details-contain">
                                    <div class="order-tracking-icon">
                                        <i class="text-content" data-feather="info"></i>
                                    </div>

                                    <div class="order-details-name">
                                        <h5 class="text-content">Package Info</h5>
                                        <h4>Letter</h4>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-4 col-sm-6">
                                <div class="order-details-contain">
                                    <div class="order-tracking-icon">
                                        <i class="text-content" data-feather="crosshair"></i>
                                    </div>

                                    <div class="order-details-name">
                                        <h5 class="text-content">From</h5>
                                        <h4>STR. Smardan 9, Bucuresti, romania.</h4>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-4 col-sm-6">
                                <div class="order-details-contain">
                                    <div class="order-tracking-icon">
                                        <i class="text-content" data-feather="map-pin"></i>
                                    </div>

                                    <div class="order-details-name">
                                        <h5 class="text-content">Destination</h5>
                                        <h4>Flokagata 24, 105 Reykjavik, Iceland</h4>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-4 col-sm-6">
                                <div class="order-details-contain">
                                    <div class="order-tracking-icon">
                                        <i class="text-content" data-feather="calendar"></i>
                                    </div>

                                    <div class="order-details-name">
                                        <h5 class="text-content">Estimated Time</h5>
                                        <h4>7 Frb, 05:05pm</h4>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12 overflow-hidden">
                                <ol class="progtrckr">
                                    <li class="progtrckr-done">
                                        <h5>Order Processing</h5>
                                        <h6>05:43 AM</h6>
                                    </li>
                                    <li class="progtrckr-done">
                                        <h5>Pre-Production</h5>
                                        <h6>01:21 PM</h6>
                                    </li>
                                    <li class="progtrckr-done">
                                        <h5>In Production</h5>
                                        <h6>Processing</h6>
                                    </li>
                                    <li class="progtrckr-todo">
                                        <h5>Shipped</h5>
                                        <h6>Pending</h6>
                                    </li>
                                    <li class="progtrckr-todo">
                                        <h5>Delivered</h5>
                                        <h6>Pending</h6>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Order Detail Section End -->

        <!-- Order Table Section Start -->

        <!-- Order Table Section End -->

        <!-- Footer Section Start -->
        <footer class="section-t-space">
            <div class="container-fluid-lg">
                <div class="service-section">
                    <div class="row g-3">
                        <div class="col-12">
                            <div class="service-contain">
                                <div class="service-box">
                                    <div class="service-image">
                                        <img src="../assets/svg/product.svg" class="blur-up lazyload" alt="">
                                    </div>

                                    <div class="service-detail">
                                        <h5>Every Fresh Products</h5>
                                    </div>
                                </div>

                                <div class="service-box">
                                    <div class="service-image">
                                        <img src="../assets/svg/delivery.svg" class="blur-up lazyload" alt="">
                                    </div>

                                    <div class="service-detail">
                                        <h5>Free Delivery For Order Over $50</h5>
                                    </div>
                                </div>

                                <div class="service-box">
                                    <div class="service-image">
                                        <img src="../assets/svg/discount.svg" class="blur-up lazyload" alt="">
                                    </div>

                                    <div class="service-detail">
                                        <h5>Daily Mega Discounts</h5>
                                    </div>
                                </div>

                                <div class="service-box">
                                    <div class="service-image">
                                        <img src="../assets/svg/market.svg" class="blur-up lazyload" alt="">
                                    </div>

                                    <div class="service-detail">
                                        <h5>Best Price On The Market</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="main-footer section-b-space section-t-space">
                    <div class="row g-md-4 g-3">
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="footer-logo">
                                <div class="theme-logo">
                                    <a href="index.html">
                                        <img src="../assets/images/logo/1.png" class="blur-up lazyload" alt="">
                                    </a>
                                </div>

                                <div class="footer-logo-contain">
                                    <p>We are a friendly bar serving a variety of cocktails, wines and beers. Our bar is a
                                        perfect place for a couple.</p>

                                    <ul class="address">
                                        <li>
                                            <i data-feather="home"></i>
                                            <a href="javascript:void(0)">1418 Riverwood Drive, CA 96052, US</a>
                                        </li>
                                        <li>
                                            <i data-feather="mail"></i>
                                            <a href="javascript:void(0)">support@fastkart.com</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                            <div class="footer-title">
                                <h4>Categories</h4>
                            </div>

                            <div class="footer-contain">
                                <ul>
                                    <li>
                                        <a href="shop-left-sidebar.html" class="text-content">Vegetables & Fruit</a>
                                    </li>
                                    <li>
                                        <a href="shop-left-sidebar.html" class="text-content">Beverages</a>
                                    </li>
                                    <li>
                                        <a href="shop-left-sidebar.html" class="text-content">Meats & Seafood</a>
                                    </li>
                                    <li>
                                        <a href="shop-left-sidebar.html" class="text-content">Frozen Foods</a>
                                    </li>
                                    <li>
                                        <a href="shop-left-sidebar.html" class="text-content">Biscuits & Snacks</a>
                                    </li>
                                    <li>
                                        <a href="shop-left-sidebar.html" class="text-content">Grocery & Staples</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-xl col-lg-2 col-sm-3">
                            <div class="footer-title">
                                <h4>Useful Links</h4>
                            </div>

                            <div class="footer-contain">
                                <ul>
                                    <li>
                                        <a href="index.html" class="text-content">Home</a>
                                    </li>
                                    <li>
                                        <a href="shop-left-sidebar.html" class="text-content">Shop</a>
                                    </li>
                                    <li>
                                        <a href="about-us.html" class="text-content">About Us</a>
                                    </li>
                                    <li>
                                        <a href="blog-list.html" class="text-content">Blog</a>
                                    </li>
                                    <li>
                                        <a href="contact-us.html" class="text-content">Contact Us</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-xl-2 col-sm-3">
                            <div class="footer-title">
                                <h4>Help Center</h4>
                            </div>

                            <div class="footer-contain">
                                <ul>
                                    <li>
                                        <a href="order-success.html" class="text-content">Your Order</a>
                                    </li>
                                    <li>
                                        <a href="user-dashboard.html" class="text-content">Your Account</a>
                                    </li>
                                    <li>
                                        <a href="order-tracking.html" class="text-content">Track Order</a>
                                    </li>
                                    <li>
                                        <a href="wishlist.html" class="text-content">Your Wishlist</a>
                                    </li>
                                    <li>
                                        <a href="search.html" class="text-content">Search</a>
                                    </li>
                                    <li>
                                        <a href="faq.html" class="text-content">FAQ</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="footer-title">
                                <h4>Contact Us</h4>
                            </div>

                            <div class="footer-contact">
                                <ul>
                                    <li>
                                        <div class="footer-number">
                                            <i data-feather="phone"></i>
                                            <div class="contact-number">
                                                <h6 class="text-content">Hotline 24/7 :</h6>
                                                <h5>+91 888 104 2340</h5>
                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="footer-number">
                                            <i data-feather="mail"></i>
                                            <div class="contact-number">
                                                <h6 class="text-content">Email Address :</h6>
                                                <h5>fastkart@hotmail.com</h5>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="social-app">
                                        <h5 class="mb-2 text-content">Download App :</h5>
                                        <ul>
                                            <li class="mb-0">
                                                <a href="https://play.google.com/store/apps" target="_blank">
                                                    <img src="../assets/images/playstore.svg" class="blur-up lazyload"
                                                         alt="">
                                                </a>
                                            </li>
                                            <li class="mb-0">
                                                <a href="https://www.apple.com/in/app-store/" target="_blank">
                                                    <img src="../assets/images/appstore.svg" class="blur-up lazyload"
                                                         alt="">
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="sub-footer section-small-space">
                    <div class="reserve">
                        <h6 class="text-content">Â©2022 Fastkart All rights reserved</h6>
                    </div>

                    <div class="payment">
                        <img src="../assets/images/payment/1.png" class="blur-up lazyload" alt="">
                    </div>

                    <div class="social-link">
                        <h6 class="text-content">Stay connected :</h6>
                        <ul>
                            <li>
                                <a href="https://www.facebook.com/" target="_blank">
                                    <i class="fa-brands fa-facebook-f"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://twitter.com/" target="_blank">
                                    <i class="fa-brands fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/" target="_blank">
                                    <i class="fa-brands fa-instagram"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://in.pinterest.com/" target="_blank">
                                    <i class="fa-brands fa-pinterest-p"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Location Modal Start -->
        <div class="modal location-modal fade theme-modal" id="locationModal" tabindex="-1"
             aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Choose your Delivery Location</h5>
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

        <!-- Deal Box Modal Start -->
        <div class="modal fade theme-modal deal-modal" id="deal-box" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
                <div class="modal-content">
                    <div class="modal-header">
                        <div>
                            <h5 class="modal-title w-100" id="deal_today">Deal Today</h5>
                            <p class="mt-1 text-content">Recommended deals for you.</p>
                        </div>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                            <i class="fa-solid fa-xmark"></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="deal-offer-box">
                            <ul class="deal-offer-list">
                                <li class="list-1">
                                    <div class="deal-offer-contain">
                                        <a href="shop-left-sidebar.html" class="deal-image">
                                            <img src="../assets/images/vegetable/product/10.png" class="blur-up lazyload"
                                                 alt="">
                                        </a>

                                        <a href="shop-left-sidebar.html" class="deal-contain">
                                            <h5>Blended Instant Coffee 50 g Buy 1 Get 1 Free</h5>
                                            <h6>$52.57 <del>57.62</del> <span>500 G</span></h6>
                                        </a>
                                    </div>
                                </li>

                                <li class="list-2">
                                    <div class="deal-offer-contain">
                                        <a href="shop-left-sidebar.html" class="deal-image">
                                            <img src="../assets/images/vegetable/product/11.png" class="blur-up lazyload"
                                                 alt="">
                                        </a>

                                        <a href="shop-left-sidebar.html" class="deal-contain">
                                            <h5>Blended Instant Coffee 50 g Buy 1 Get 1 Free</h5>
                                            <h6>$52.57 <del>57.62</del> <span>500 G</span></h6>
                                        </a>
                                    </div>
                                </li>

                                <li class="list-3">
                                    <div class="deal-offer-contain">
                                        <a href="shop-left-sidebar.html" class="deal-image">
                                            <img src="../assets/images/vegetable/product/12.png" class="blur-up lazyload"
                                                 alt="">
                                        </a>

                                        <a href="shop-left-sidebar.html" class="deal-contain">
                                            <h5>Blended Instant Coffee 50 g Buy 1 Get 1 Free</h5>
                                            <h6>$52.57 <del>57.62</del> <span>500 G</span></h6>
                                        </a>
                                    </div>
                                </li>

                                <li class="list-1">
                                    <div class="deal-offer-contain">
                                        <a href="shop-left-sidebar.html" class="deal-image">
                                            <img src="../assets/images/vegetable/product/13.png" class="blur-up lazyload"
                                                 alt="">
                                        </a>

                                        <a href="shop-left-sidebar.html" class="deal-contain">
                                            <h5>Blended Instant Coffee 50 g Buy 1 Get 1 Free</h5>
                                            <h6>$52.57 <del>57.62</del> <span>500 G</span></h6>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Deal Box Modal End -->

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

        <!-- latest jquery-->
        <script src="../assets/js/jquery-3.6.0.min.js"></script>

        <!-- jquery ui-->
        <script src="../assets/js/jquery-ui.min.js"></script>

        <!-- Bootstrap js-->
        <script src="../assets/js/bootstrap/bootstrap.bundle.min.js"></script>
        <script src="../assets/js/bootstrap/bootstrap-notify.min.js"></script>
        <script src="../assets/js/bootstrap/popper.min.js"></script>

        <!-- feather icon js-->
        <script src="../assets/js/feather/feather.min.js"></script>
        <script src="../assets/js/feather/feather-icon.js"></script>

        <!-- Lazyload Js -->
        <script src="../assets/js/lazysizes.min.js"></script>

        <!-- Slick js-->
        <script src="../assets/js/slick/slick.js"></script>
        <script src="../assets/js/slick/slick-animation.min.js"></script>
        <script src="../assets/js/custom-slick-animated.js"></script>
        <script src="../assets/js/slick/custom_slick.js"></script>

        <!-- Price Range Js -->
        <script src="../assets/js/ion.rangeSlider.min.js"></script>

        <!-- sidebar open js -->
        <script src="../assets/js/filter-sidebar.js"></script>

        <!-- Zoom Js -->
        <script src="../assets/js/jquery.elevatezoom.js"></script>
        <script src="../assets/js/zoom-filter.js"></script>

        <!-- script js -->
        <script src="../assets/js/script.js"></script>



    </body>

</html>