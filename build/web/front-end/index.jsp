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
                <link rel="apple-touch-icon" sizes="180x180" href="./assets/images/favicon/apple-touch-icon.png">
                <link rel="icon" type="image/png" sizes="32x32" href="./assets/images/favicon/favicon-32x32.png">
                <link rel="icon" type="image/png" sizes="16x16" href="./assets/images/favicon/favicon-16x16.png">
                <link rel="manifest" href="./assets/images/favicon/site.webmanifest">
                <title>On-demand last-mile delivery</title>

                <!-- Google font -->
                <link rel="preconnect" href="https://fonts.gstatic.com">
                <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Exo+2:wght@400;500;600;700;800;900&display=swap"
                    rel="stylesheet">
                <link
                    href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
                    rel="stylesheet">

                <!-- bootstrap css -->
                <link id="rtl-link" rel="stylesheet" type="text/css" href="./assets/css/vendors/bootstrap.css">

                <!-- wow css -->
                <link rel="stylesheet" href="./assets/css/animate.min.css" />

                <!-- font-awesome css -->
                <link rel="stylesheet" type="text/css" href="./assets/css/vendors/font-awesome.css">

                <!-- feather icon css -->
                <link rel="stylesheet" type="text/css" href="./assets/css/vendors/feather-icon.css">

                <!-- slick css -->
                <link rel="stylesheet" type="text/css" href="./assets/css/vendors/slick/slick.css">
                <link rel="stylesheet" type="text/css" href="./assets/css/vendors/slick/slick-theme.css">

                <!-- Iconly css -->
                <link rel="stylesheet" type="text/css" href="./assets/css/bulk-style.css">
                <link rel="stylesheet" type="text/css" href="./assets/css/vendors/animate.css">

                <!-- Template css -->
                <link id="color-link" rel="stylesheet" type="text/css" href="./assets/css/style.css">
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
                <header class="header-compact header-absolute">
                    <div class="top-nav top-header sticky-header">
                        <div class="container-fluid-lg">
                            <div class="row">
                                <div class="col-12">
                                    <div class="navbar-top">
                                        <button class="navbar-toggler d-xl-none d-inline navbar-menu-button me-3"
                                            type="button" data-bs-toggle="offcanvas" data-bs-target="#primaryMenu">
                                            <span class="navbar-toggler-icon">
                                                <i class="fa-solid fa-bars"></i>
                                            </span>
                                        </button>
                                        <a href="index.html" class="web-logo nav-logo">
                                            <img src="./assets/images/logo/1.png" class="img-fluid blur-up lazyload"
                                                alt="">
                                        </a>

                                        <div class="middle-box">
                                            <div class="header-nav-middle">
                                                <div
                                                    class="main-nav navbar navbar-expand-xl navbar-light navbar-sticky">
                                                    <div class="offcanvas offcanvas-collapse order-xl-2"
                                                        id="primaryMenu">
                                                        <div class="offcanvas-header navbar-shadow">
                                                            <h5>Menu</h5>
                                                            <button class="btn-close lead" type="button"
                                                                data-bs-dismiss="offcanvas" aria-label="Close"></button>
                                                        </div>
                                                        <div class="offcanvas-body">
                                                            <ul class="navbar-nav">
                                                                <li class="nav-item dropdown">
                                                                    <a class="nav-link dropdown-toggle"
                                                                        href="javascript:void(0)"
                                                                        data-bs-toggle="dropdown">Home </a>

                                                                    <ul class="dropdown-menu">
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="index.html">Kartshop</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="index-2.html">Sweetshop</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="index-3.html">Organic</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="index-4.html">Supershop</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="index-5.html">Classic
                                                                                shop</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="index-6.html">Furniture</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="index-7.html">Search
                                                                                Oriented</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="index-8.html">Category
                                                                                Focus</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="index-9.html">Fashion</a>
                                                                        </li>
                                                                    </ul>
                                                                </li>



                                                                <li class="nav-item dropdown">
                                                                    <a class="nav-link dropdown-toggle"
                                                                        href="javascript:void(0)"
                                                                        data-bs-toggle="dropdown">Product</a>

                                                                    <ul class="dropdown-menu">
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="product-4-image.html">Product
                                                                                4 Image</a>
                                                                        </li>
                                                                        <li class="sub-dropdown-hover">
                                                                            <a href="javascript:void(0)"
                                                                                class="dropdown-item">Product
                                                                                Thumbnail</a>
                                                                            <ul class="sub-menu">
                                                                                <li>
                                                                                    <a
                                                                                        href="product-left-thumbnail.html">Left
                                                                                        Thumbnail</a>
                                                                                </li>

                                                                                <li>
                                                                                    <a
                                                                                        href="product-right-thumbnail.html">Right
                                                                                        Thumbnail</a>
                                                                                </li>

                                                                                <li>
                                                                                    <a
                                                                                        href="product-bottom-thumbnail.html">Bottom
                                                                                        Thumbnail</a>
                                                                                </li>
                                                                            </ul>
                                                                        </li>
                                                                        <li>
                                                                            <a href="product-bundle.html"
                                                                                class="dropdown-item">Product
                                                                                Bundle</a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="product-slider.html"
                                                                                class="dropdown-item">Product
                                                                                Slider</a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="product-sticky.html"
                                                                                class="dropdown-item">Product
                                                                                Sticky</a>
                                                                        </li>
                                                                    </ul>
                                                                </li>

                                                                <li class="nav-item dropdown dropdown-mega">
                                                                    <a class="nav-link dropdown-toggle ps-xl-2 ps-0"
                                                                        href="javascript:void(0)"
                                                                        data-bs-toggle="dropdown">Mega
                                                                        Menu</a>

                                                                    <div class="dropdown-menu dropdown-menu-2">
                                                                        <div class="row">
                                                                            <div class="dropdown-column col-xl-3">
                                                                                <h5 class="dropdown-header">Daily
                                                                                    Vegetables
                                                                                </h5>
                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Beans
                                                                                    & Brinjals</a>

                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Broccoli
                                                                                    &
                                                                                    Cauliflower</a>

                                                                                <a href="shop-left-sidebar.html"
                                                                                    class="dropdown-item">Chilies,
                                                                                    Garlic</a>

                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Vegetables
                                                                                    &
                                                                                    Salads</a>

                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Gourd,
                                                                                    Cucumber</a>

                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Herbs
                                                                                    & Sprouts</a>

                                                                                <a href="demo-personal-portfolio.html"
                                                                                    class="dropdown-item">Lettuce &
                                                                                    Leafy</a>
                                                                            </div>

                                                                            <div class="dropdown-column col-xl-3">
                                                                                <h5 class="dropdown-header">Baby Tender
                                                                                </h5>
                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Beans
                                                                                    & Brinjals</a>

                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Broccoli
                                                                                    &
                                                                                    Cauliflower</a>

                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Chilies,
                                                                                    Garlic</a>

                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Vegetables
                                                                                    &
                                                                                    Salads</a>

                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Gourd,
                                                                                    Cucumber</a>

                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Potatoes
                                                                                    &
                                                                                    Tomatoes</a>

                                                                                <a href="shop-left-sidebar.html"
                                                                                    class="dropdown-item">Peas
                                                                                    & Corn</a>
                                                                            </div>

                                                                            <div class="dropdown-column col-xl-3">
                                                                                <h5 class="dropdown-header">Exotic
                                                                                    Vegetables</h5>
                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Asparagus
                                                                                    &
                                                                                    Artichokes</a>

                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Avocados
                                                                                    &
                                                                                    Peppers</a>

                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Broccoli
                                                                                    &
                                                                                    Zucchini</a>

                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Celery,
                                                                                    Fennel &
                                                                                    Leeks</a>

                                                                                <a class="dropdown-item"
                                                                                    href="shop-left-sidebar.html">Chilies
                                                                                    &
                                                                                    Lime</a>
                                                                            </div>

                                                                            <div
                                                                                class="dropdown-column dropdown-column-img col-3">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li class="nav-item dropdown">
                                                                    <a class="nav-link dropdown-toggle"
                                                                        href="javascript:void(0)"
                                                                        data-bs-toggle="dropdown">Blog</a>
                                                                    <ul class="dropdown-menu">
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="blog-detail.html">Blog
                                                                                Detail</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="blog-grid.html">Blog
                                                                                Grid</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="blog-list.html">Blog
                                                                                List</a>
                                                                        </li>
                                                                    </ul>
                                                                </li>

                                                                <li class="nav-item dropdown new-nav-item">
                                                                    <label class="new-dropdown">New</label>
                                                                    <a class="nav-link dropdown-toggle"
                                                                        href="javascript:void(0)"
                                                                        data-bs-toggle="dropdown">Pages</a>
                                                                    <ul class="dropdown-menu">
                                                                        <li class="sub-dropdown-hover">
                                                                            <a class="dropdown-item"
                                                                                href="javascript:void(0)">Email
                                                                                Template <span class="new-text"><i
                                                                                        class="fa-solid fa-bolt-lightning"></i></span></a>
                                                                            <ul class="sub-menu">
                                                                                <li>
                                                                                    <a
                                                                                        href="./email-templete/abandonment-email.html">Abandonment</a>
                                                                                </li>
                                                                                <li>
                                                                                    <a
                                                                                        href="./email-templete/offer-template.html">Offer
                                                                                        Template</a>
                                                                                </li>
                                                                                <li>
                                                                                    <a
                                                                                        href="./email-templete/order-success.html">Order
                                                                                        Success</a>
                                                                                </li>
                                                                                <li>
                                                                                    <a
                                                                                        href="./email-templete/reset-password.html">Reset
                                                                                        Password</a>
                                                                                </li>
                                                                                <li>
                                                                                    <a
                                                                                        href="./email-templete/welcome.html">Welcome
                                                                                        template</a>
                                                                                </li>
                                                                            </ul>
                                                                        </li>
                                                                        <li class="sub-dropdown-hover">
                                                                            <a class="dropdown-item"
                                                                                href="javascript:void(0)">Invoice
                                                                                Template <span class="new-text"><i
                                                                                        class="fa-solid fa-bolt-lightning"></i></span></a>
                                                                            <ul class="sub-menu">
                                                                                <li>
                                                                                    <a href="./invoice/invoice-1.html">Invoice
                                                                                        1</a>
                                                                                </li>

                                                                                <li>
                                                                                    <a href="./invoice/invoice-2.html">Invoice
                                                                                        2</a>
                                                                                </li>

                                                                                <li>
                                                                                    <a href="./invoice/invoice-3.html">Invoice
                                                                                        3</a>
                                                                                </li>
                                                                            </ul>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="404.html">404</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="about-us.html">About
                                                                                Us</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="cart.html">Cart</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="contact-us.html">Contact</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="checkout.html">Checkout</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="coming-soon.html">Coming
                                                                                Soon</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="compare.html">Compare</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="faq.html">Faq</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="order-success.html">Order
                                                                                Success</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="order-tracking.html">Order
                                                                                Tracking</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="otp.html">OTP</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="search.html">Search</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="user-dashboard.html">User
                                                                                Dashboard</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="wishlist">Wishlist</a>
                                                                        </li>
                                                                    </ul>
                                                                </li>

                                                                <li class="nav-item dropdown">
                                                                    <a class="nav-link dropdown-toggle"
                                                                        href="javascript:void(0)"
                                                                        data-bs-toggle="dropdown">Seller</a>
                                                                    <ul class="dropdown-menu">
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="seller-become.html">Become a
                                                                                Seller</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="seller-dashboard.html">Seller
                                                                                Dashboard</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="seller-detail.html">Seller
                                                                                Detail</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="seller-detail-2.html">Seller
                                                                                Detail 2</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="seller-grid.html">Seller
                                                                                Grid</a>
                                                                        </li>
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="seller-grid-2.html">Seller Grid
                                                                                2</a>
                                                                        </li>
                                                                    </ul>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="rightside-box">
                                            <div class="location-box">
                                                <button class="btn location-button" data-bs-toggle="modal"
                                                    data-bs-target="#locationModal">
                                                    <span class="location-arrow">
                                                        <i data-feather="map-pin"></i>
                                                    </span>
                                                    <span class="locat-name">Your Location</span>
                                                    <i class="fa-solid fa-angle-down"></i>
                                                </button>
                                            </div>
                                            <ul class="right-side-menu">
                                                <li class="right-side">
                                                    <a href="contact-us.html" class="delivery-login-box">
                                                        <div class="delivery-icon">
                                                            <i data-feather="phone-call"></i>
                                                        </div>
                                                        <div class="delivery-detail">
                                                            <h6>24/7 Delivery</h6>
                                                            <h5>+91 888 104 2340
                                                            </h5>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="right-side">
                                                    <a href="wishlist"
                                                        class="btn p-0 position-relative header-wishlist">
                                                        <i data-feather="heart"></i>
                                                    </a>
                                                </li>
                                                <li class="right-side">
                                                    <div class="onhover-dropdown header-badge">
                                                        <button type="button"
                                                            class="btn p-0 position-relative header-wishlist">
                                                            <i data-feather="shopping-cart"></i>
                                                            <span
                                                                class="position-absolute top-0 start-100 translate-middle badge">2
                                                                <span class="visually-hidden">unread messages</span>
                                                            </span>
                                                        </button>

                                                        <div class="onhover-div">
                                                            <ul class="cart-list">
                                                                <li class="product-box-contain">
                                                                    <div class="drop-cart">
                                                                        <a href="product-left-thumbnail.html"
                                                                            class="drop-image">
                                                                            <img src="./assets/images/vegetable/product/1.png"
                                                                                class="blur-up lazyload" alt="">
                                                                        </a>

                                                                        <div class="drop-contain">
                                                                            <a href="product-left-thumbnail.html">
                                                                                <h5>Fantasy Crunchy Choco Chip Cookies
                                                                                </h5>
                                                                            </a>
                                                                            <h6><span>1 x</span> $80.58</h6>
                                                                            <button class="close-button close_button">
                                                                                <i class="fa-solid fa-xmark"></i>
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li class="product-box-contain">
                                                                    <div class="drop-cart">
                                                                        <a href="product-left-thumbnail.html"
                                                                            class="drop-image">
                                                                            <img src="./assets/images/vegetable/product/2.png"
                                                                                class="blur-up lazyload" alt="">
                                                                        </a>

                                                                        <div class="drop-contain">
                                                                            <a href="product-left-thumbnail.html">
                                                                                <h5>Peanut Butter Bite Premium Butter
                                                                                    Cookies 600 g
                                                                                </h5>
                                                                            </a>
                                                                            <h6><span>1 x</span> $25.68</h6>
                                                                            <button class="close-button close_button">
                                                                                <i class="fa-solid fa-xmark"></i>
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>

                                                            <div class="price-box">
                                                                <h5>Total :</h5>
                                                                <h4 class="theme-color fw-bold">$106.58</h4>
                                                            </div>

                                                            <div class="button-group">
                                                                <a href="cart.html" class="btn btn-sm cart-button">View
                                                                    Cart</a>
                                                                <a href="checkout.html" class="btn btn-sm cart-button theme-bg-color
                                                    text-white">Checkout</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="right-side onhover-dropdown">
                                                    <div class="delivery-login-box">
                                                        <div class="delivery-icon">
                                                            <i data-feather="user"></i>
                                                        </div>
                                                        <c:if test="${sessionScope.user == null}">
                                                            <div class="delivery-detail">
                                                                <h6>Sorry,</h6>
                                                                <h5>Not logged-In</h5>
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${sessionScope.user != null}">
                                                            <c:set var="username"
                                                                value="${fn:substringBefore(user.email, '@')}" />
                                                            <div class="delivery-detail">
                                                                <h6>Hello,</h6>
                                                                <h5>${username}</h5>
                                                            </div>
                                                        </c:if>
                                                    </div>
                                                    <c:if test="${sessionScope.user == null}">
                                                        <div class="onhover-div onhover-div-login">
                                                            <ul class="user-box-name">
                                                                <li class="product-box-contain">
                                                                    <i></i>
                                                                    <a href="login">Log In</a>
                                                                </li>

                                                                <li class="product-box-contain">
                                                                    <a href="register">Register</a>
                                                                </li>

                                                                <li class="product-box-contain">
                                                                    <a href="mail">Forgot Password</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${sessionScope.user != null}">
                                                        <div class="onhover-div onhover-div-login">
                                                            <ul class="user-box-name">
                                                                <li class="product-box-contain">
                                                                    <i></i>
                                                                    <a href="userdashboard">Dashboard</a>
                                                                </li>

                                                                <li class="product-box-contain">
                                                                    <a href="register">Cart</a>
                                                                </li>

                                                                <li class="product-box-contain">
                                                                    <a href="logout">Logout</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </c:if>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>

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
                            <a href="wishlist" class="notifi-wishlist">
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

                <!-- Home Section Start -->
                <section class="home-search-full pt-0 overflow-hidden">
                    <div class="container-fluid p-0">
                        <div class="row">
                            <div class="col-12">
                                <div class="slider-animate">
                                    <div>
                                        <div class="home-contain rounded-0 p-0">
                                            <img src="./assets/images/vegetable/banner/mercedes-g-wagon-usa-yl.jpg"
                                                class="img-fluid bg-img blur-up lazyload bg-to" alt="banner">
                                            <div
                                                class="home-detail p-center text-center home-overlay position-relative">
                                                <div>
                                                    <div class="content ">
                                                        <h1 class="text-light">Find your dream car online</h1>
                                                        <h3 class="text-light">Explore a wide selection of car models
                                                            and
                                                            make your
                                                            purchase today</h3>
                                                        <div class="search-box">
                                                            <input type="search" class="form-control"
                                                                placeholder="I'm searching for..."
                                                                aria-label="Recipient's username">
                                                            <i data-feather="search"></i>
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
                <!-- Home Section End -->

                <!-- product section start -->
                <section class="section-b-space pb-0">
                    <div class="container-fluid-lg">
                        er-flu <div class="row">
                            <div class="col-xxl-3 col-lg-4 d-none d-lg-block">
                                <div class="category-menu menu-xl">
                                    <ul>
                                        <li>
                                            <div class="category-list">
                                                <img src="./assets/svg/1/vegetable.svg" class="blur-up lazyload" alt="">
                                                <h5>
                                                    <a href="shop-left-sidebar.html">Vegetables & Fruit</a>
                                                </h5>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                            </div>

                            <div class="col-xxl-9 col-lg-8">
                                <div class="title d-block">
                                    <h2 class="text-theme font-sm">Food Cupboard</h2>
                                    <p>A virtual assistant collects the products from your list</p>
                                </div>
                                <div class="row row-cols-xxl-5 row-cols-xl-4 row-cols-md-3 row-cols-2 g-sm-4 g-3 no-arrow
                        section-b-space">
                                    <c:forEach var="cl" items="${carList}">
                                        <div>
                                            <div class="product-box product-white-bg wow fadeIn">
                                                <div class="product-image">
                                                    <a href="detail?id=${cl.car_id}">
                                                        <img src="./assets/images/cake/product/3.png"
                                                            class="img-fluid blur-up lazyload" alt="">
                                                    </a>
                                                    <ul class="product-option">
                                                        <li data-bs-toggle="tooltip" data-bs-placement="top"
                                                            title="View" style="font-size:8px">
                                                            <a href="detail?id=${cl.car_id}" data-bs-toggle="modal"
                                                                data-bs-target="#view">
                                                                <i data-feather="eye"></i>
                                                            </a>
                                                        </li>

                                                        <li data-bs-toggle="tooltip" data-bs-placement="top"
                                                            title="Compare" style="font-size:8px">
                                                            <a href="compare.html">
                                                                <i data-feather="refresh-cw"></i>
                                                            </a>
                                                        </li>
                                                        <li data-bs-toggle="tooltip" data-bs-placement="top"
                                                            title="Wishlist">
                                                           <form action="wishlist?action=addtowish&idcar=${cl.car_id}&iduser=${user.user_id}" method="post">
                                                                     <button type="submit" class="notifi-wishlist" style="background: none; border: none; cursor: pointer;">
                                                                     <i data-feather="heart" style="font-size: 8px"></i>
                                                                      </button>
                                                                 </form>

                                                           

                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="product-detail position-relative">
                                                    <a href="detail?id=${cl.car_id}">
                                                        <h6 class="name" style="font-size:16px">
                                                            ${cl.name}
                                                        </h6>
                                                    </a>

                                                    <h6 class="sold weight text-content fw-normal">${cl.weight}</h6>

                                                    <h6 class="price theme-color">$ ${cl.price}</h6>

                                                    <div class="add-to-cart-btn-2 addtocart_btn">
                                                        <button class="btn addcart-button btn buy-button"><i
                                                                class="fa-solid fa-plus"></i></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- product section end -->
                <section class=" section-b-space pt-0">
                    <ul class="d-flex justify-content-center pagination-lg">
                        <c:if test="${page.index != 0}">
                            <li class="page-item">
                                <a href='${pageContext.request.contextPath}/home?index=0' class="page-link"
                                    style="color: var(--theme-color);"> Home </a>
                                </>
                            <li class="page-item">
                                <a href='${pageContext.request.contextPath}/home?index=${page.index -1}'
                                    class="page-link" style="color: var(--theme-color);">
                                    Previous </a>
                            </li>
                        </c:if>
                        <c:forEach var="p" begin='${page.pageStart}' end='${page.pageEnd}'>
                            <li class="page-item">
                                <a href='${pageContext.request.contextPath}/home?index=${p}' class="page-link"
                                    style="color: var(--theme-color);"> Page ${p
                                    +1}</a>
                            </li>
                        </c:forEach>
                        <c:if test="${page.index  != page.totalPage - 1}">
                            <li class="page-item">
                                <a href='${pageContext.request.contextPath}/home?index=${page.index+1}'
                                    class="page-link" style="color: var(--theme-color);">
                                    Next</a>
                            </li>
                            <li class="page-item">
                                <a href='${pageContext.request.contextPath}/home?index=${page.totalPage-1}'
                                    class="page-link" style="color: var(--theme-color);"> End </a>
                            </li>
                        </c:if>
                    </ul>
                </section>


                <!-- Footer Section Start -->
                <footer class="section-t-space py-3">
                    <div class="container-fluid-lg">
                        <div class="service-section pb-3">
                            <div class="row g-3">
                                <div class="col-12">
                                    <div class="service-contain py-2">
                                        <div class="service-box">
                                            <div class="service-image">
                                                <img src="./assets/svg/sedan.png" class="blur-up lazyload" alt="" />
                                            </div>

                                            <div class="service-detail">
                                                <h5>Newest Cars</h5>
                                            </div>
                                        </div>

                                        <div class="service-box">
                                            <div class="service-image">
                                                <img src="./assets/svg/delivery.svg" class="blur-up lazyload" alt="" />
                                            </div>

                                            <div class="service-detail">
                                                <h5>Free Delivery For Order Over $50k</h5>
                                            </div>
                                        </div>

                                        <div class="service-box">
                                            <div class="service-image">
                                                <img src="./assets/svg/discount.svg" class="blur-up lazyload" alt="" />
                                            </div>

                                            <div class="service-detail">
                                                <h5>Monthly Mega Discounts</h5>
                                            </div>
                                        </div>

                                        <div class="service-box">
                                            <div class="service-image">
                                                <img src="./assets/svg/market.svg" class="blur-up lazyload" alt="" />
                                            </div>

                                            <div class="service-detail">
                                                <h5>Best Price On The Market</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="main-footer section-b-space section-t-space py-3">
                            <div class="row g-md-4 g-3">
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                    <div class="footer-logo">
                                        <div class="theme-logo">
                                            <a href="index.html">
                                                <img src="./assets/images/logo/1.png" class="blur-up lazyload" alt="" />
                                            </a>
                                        </div>

                                        <div class="footer-logo-contain">
                                            <p>
                                                Discover a <b>seamless online car buying experience</b> with unbeatable
                                                prices,
                                                extensive selections,
                                                and
                                                convenient delivery.
                                            </p>

                                            <ul class="address">
                                                <li>
                                                    <i data-feather="home"></i>
                                                    <a href="javascript:void(0)">FPT University
                                                    </a>
                                                </li>
                                                <li>
                                                    <i data-feather="mail"></i>
                                                    <a href="javascript:void(0)">niggawhat@fpt.edu.vn</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                                    <label class="switch">
                                        <input type="checkbox" checked="checked">
                                        <div class="button">
                                            <div class="light"></div>
                                            <div class="dots"></div>
                                            <div class="characters"></div>
                                            <div class="shine"></div>
                                            <div class="shadow"></div>
                                        </div>
                                    </label>
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
                                                <a href="wishlist" class="text-content">Your Wishlist</a>
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
                                                        <h5>apexautos@hotmail.com</h5>
                                                    </div>
                                                </div>
                                            </li>

                                            <li class="social-app">
                                                <h5 class="mb-2 text-content">Download App :</h5>
                                                <ul>
                                                    <li class="mb-0">
                                                        <a href="https://play.google.com/store/apps" target="_blank">
                                                            <img src="./assets/images/playstore.svg"
                                                                class="blur-up lazyload" alt="" />
                                                        </a>
                                                    </li>
                                                    <li class="mb-0">
                                                        <a href="https://www.apple.com/in/app-store/" target="_blank">
                                                            <img src="./assets/images/appstore.svg"
                                                                class="blur-up lazyload" alt="" />
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="sub-footer section-small-space py-3">
                            <div class="reserve">
                                <h6 class="text-content">?2022 ApexAutos All rights reserved</h6>
                            </div>

                            <div class="payment">
                                <img src="./assets/images/payment/1.png" class="blur-up lazyload" alt="" />
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

                <!-- Quick View Modal Box Start -->
                <div class="modal fade theme-modal view-modal" id="view" tabindex="-1"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-xl modal-fullscreen-sm-down">
                        <div class="modal-content">
                            <div class="modal-header p-0">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                    <i class="fa-solid fa-xmark"></i>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="row g-sm-4 g-2">
                                    <div class="col-lg-6">
                                        <div class="slider-image">
                                            <img src="./assets/images/product/category/1.jpg"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="right-sidebar-modal">
                                            <h4 class="title-name">Peanut Butter Bite Premium Butter Cookies 600 g</h4>
                                            <h4 class="price">$36.99</h4>
                                            <div class="product-rating">
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
                                                <span class="ms-2">8 Reviews</span>
                                                <span class="ms-2 text-danger">6 sold in last 16 hours</span>
                                            </div>

                                            <div class="product-detail">
                                                <h4>Product Details :</h4>
                                                <p>Candy canes sugar plum tart cotton candy chupa chups sugar plum
                                                    chocolate
                                                    I love.
                                                    Caramels marshmallow icing dessert candy canes I love souffl? I love
                                                    toffee.
                                                    Marshmallow pie sweet sweet roll sesame snaps tiramisu jelly bear
                                                    claw.
                                                    Bonbon
                                                    muffin I love carrot cake sugar plum dessert bonbon.</p>
                                            </div>

                                            <ul class="brand-list">
                                                <li>
                                                    <div class="brand-box">
                                                        <h5>Brand Name:</h5>
                                                        <h6>Black Forest</h6>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="brand-box">
                                                        <h5>Product Code:</h5>
                                                        <h6>W0690034</h6>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="brand-box">
                                                        <h5>Product Type:</h5>
                                                        <h6>White Cream Cake</h6>
                                                    </div>
                                                </li>
                                            </ul>

                                            <div class="select-size">
                                                <h4>Cake Size :</h4>
                                                <select class="form-select select-form-size">
                                                    <option selected>Select Size</option>
                                                    <option value="1.2">1/2 KG</option>
                                                    <option value="0">1 KG</option>
                                                    <option value="1.5">1/5 KG</option>
                                                    <option value="red">Red Roses</option>
                                                    <option value="pink">With Pink Roses</option>
                                                </select>
                                            </div>

                                            <div class="modal-button">
                                                <button onclick="location.href = 'cart.html';"
                                                    class="btn btn-md add-cart-button icon">Add
                                                    To Cart</button>
                                                <button onclick="location.href = 'product-left.html';"
                                                    class="btn theme-bg-color view-button icon text-white fw-bold btn-md">
                                                    View More Details</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Quick View Modal Box End -->

                <!-- Location Modal Start -->
                <div class="modal location-modal fade theme-modal" id="locationModal" tabindex="-1"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Choose your Delivery Location</h5>
                                <p class="mt-1 text-content">Enter your address and we will specify the offer for your
                                    area.
                                </p>
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

                <!-- Cookie Bar Box Start -->
                <div class="cookie-bar-box">
                    <div class="cookie-box">
                        <div class="cookie-image">
                            <img src="./assets/images/cookie-bar.png" class="blur-up lazyload" alt="">
                            <h2>Cookies!</h2>
                        </div>

                        <div class="cookie-contain">
                            <h5 class="text-content">We use cookies to make your experience better</h5>
                        </div>
                    </div>

                    <div class="button-group">
                        <button class="btn privacy-button">Privacy Policy</button>
                        <button class="btn ok-button">OK</button>
                    </div>
                </div>
                <!-- Cookie Bar Box End -->

                <!-- Deal Box Modal Start -->
                <div class="modal fade theme-modal deal-modal" id="deal-box" tabindex="-1"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                                    <img src="./assets/images/vegetable/product/10.png"
                                                        class="blur-up lazyload" alt="">
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
                                                    <img src="./assets/images/vegetable/product/11.png"
                                                        class="blur-up lazyload" alt="">
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
                                                    <img src="./assets/images/vegetable/product/12.png"
                                                        class="blur-up lazyload" alt="">
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
                                                    <img src="./assets/images/vegetable/product/13.png"
                                                        class="blur-up lazyload" alt="">
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
                <script src="./assets/js/jquery-3.6.0.min.js"></script>

                <!-- jquery ui-->
                <script src="./assets/js/jquery-ui.min.js"></script>

                <!-- Bootstrap js-->
                <script src="./assets/js/bootstrap/bootstrap.bundle.min.js"></script>
                <script src="./assets/js/bootstrap/bootstrap-notify.min.js"></script>
                <script src="./assets/js/bootstrap/popper.min.js"></script>

                <!-- feather icon js-->
                <script src="./assets/js/feather/feather.min.js"></script>
                <script src="./assets/js/feather/feather-icon.js"></script>

                <!-- Lazyload Js -->
                <script src="./assets/js/lazysizes.min.js"></script>

                <!-- Slick js-->
                <script src="./assets/js/slick/slick.js"></script>
                <script src="./assets/js/slick/slick-animation.min.js"></script>
                <script src="./assets/js/slick/custom_slick.js"></script>

                <!-- Auto Height Js -->
                <script src="./assets/js/auto-height.js"></script>

                <!-- Fly Cart Js -->
                <script src="./assets/js/fly-cart.js"></script>

                <!-- Quantity js -->
                <script src="./assets/js/quantity-2.js"></script>

                <!-- WOW js -->
                <script src="./assets/js/wow.min.js"></script>
                <script src="./assets/js/custom-wow.js"></script>

                <!-- script js -->
                <script src="./assets/js/script.js"></script>
            </body>

            </html>