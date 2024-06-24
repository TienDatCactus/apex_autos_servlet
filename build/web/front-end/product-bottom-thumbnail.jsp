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
        <title>Product Right Thumbnail</title>

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

        <!-- wow css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/front-end/assets/css/animate.min.css" />

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
        <header class="pb-md-4 pb-0">
            <div class="header-top">
                <div class="container-fluid-lg">
                    <div class="row">
                        <div class="col-xxl-3 d-xxl-block d-none">
                            <div class="top-left-header">
                                <i class="iconly-Location icli text-white"></i>
                                <span class="text-white">FPT University</span>
                            </div>
                        </div>

                        <div class="col-xxl-6 col-lg-9 d-lg-block d-none">
                            <div class="header-offer">
                                <div class="notification-slider">
                                    <div>
                                        <div class="timer-notification" style="overflow-x: hidden;">
                                            <h6>
                                                <strong class="me-1">Welcome to myNiggaCar!</strong>Wrap
                                                new offers/gift every day on Weekends.<strong class="ms-1">New Coupon Code:
                                                    niggaWhat!
                                                </strong>
                                            </h6>
                                        </div>
                                    </div>

                                    <div>
                                        <div class="timer-notification">
                                            <h6>
                                                Something you love is now on sale!
                                                <a href="shop-left-sidebar.html" class="text-white">Buy Now !</a>
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3">
                            <ul class="about-list right-nav-about">
                                <li class="right-nav-list">
                                    <div class="dropdown theme-form-select">
                                        <button class="btn dropdown-toggle" type="button" id="select-language"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/country/united-states.png"
                                                 class="img-fluid blur-up lazyload" alt="" />
                                            <span>English</span>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="select-language">
                                            <li>
                                                <a class="dropdown-item" href="javascript:void(0)" id="english">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/country/united-kingdom.png"
                                                         class="img-fluid blur-up lazyload" alt="" />
                                                    <span>English</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="javascript:void(0)" id="chinese">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/country/vn.png"
                                                         class="img-fluid blur-up lazyload" alt="" />
                                                    <span>Viet Nam</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="right-nav-list">
                                    <div class="dropdown theme-form-select">
                                        <button class="btn dropdown-toggle" type="button" id="select-dollar"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                            <span>USD</span>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end sm-dropdown-menu"
                                            aria-labelledby="select-dollar">
                                            <li>
                                                <a class="dropdown-item" id="aud" href="javascript:void(0)">VND</a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" id="cny" href="javascript:void(0)">USD</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="top-nav top-header sticky-header">
                <div class="container-fluid-lg">
                    <div class="row">
                        <div class="col-12">
                            <div class="navbar-top">
                                <button class="navbar-toggler d-xl-none d-inline navbar-menu-button" type="button"
                                        data-bs-toggle="offcanvas" data-bs-target="#primaryMenu">
                                    <span class="navbar-toggler-icon">
                                        <i class="fa-solid fa-bars"></i>
                                    </span>
                                </button>
                                <a href="index.html" class="web-logo nav-logo">
                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/logo/1.png" class="img-fluid blur-up lazyload" alt="" />
                                </a>

                                <div class="middle-box">
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

                                    <div class="search-box">
                                        <div class="input-group">
                                            <input type="search" class="form-control" placeholder="I'm searching for..."
                                                   aria-label="Recipient's username" aria-describedby="button-addon2" />
                                            <button class="button-38" type="button" id="button-addon2">
                                                <i data-feather="search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="rightside-box">
                                    <div class="search-full">
                                        <div class="input-group">
                                            <span class="input-group-text">
                                                <i data-feather="search" class="font-light"></i>
                                            </span>
                                            <input type="text" class="form-control search-type"
                                                   placeholder="Search here.." />
                                            <span class="input-group-text close-search">
                                                <i data-feather="x" class="font-light"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <ul class="right-side-menu">
                                        <li class="right-side">
                                            <div class="delivery-login-box">
                                                <div class="delivery-icon">
                                                    <div class="search-box">
                                                        <i data-feather="search"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="right-side">
                                            <a href="contact-us.html" class="delivery-login-box">
                                                <div class="delivery-icon">
                                                    <i data-feather="phone-call"></i>
                                                </div>
                                                <div class="delivery-detail">
                                                    <h6>24/7 Delivery</h6>
                                                    <h5>+84 33 1234 567</h5>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="right-side">
                                            <div class="onhover-dropdown header-badge">
                                                <button type="button" class="btn p-0 position-relative header-wishlist">
                                                    <i data-feather="shopping-cart"></i>
                                                    <span class="position-absolute top-0 start-100 translate-middle badge">0
                                                        <span class="visually-hidden">unread messages</span>
                                                    </span>
                                                </button>

                                                <div class="onhover-div">
                                                    <ul class="cart-list">
                                                        <li class="product-box-contain">
                                                            <div class="drop-cart">
                                                                <a href="product-left-thumbnail.html" class="drop-image">
                                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/1.png"
                                                                         class="blur-up lazyload" alt="" />
                                                                </a>

                                                                <div class="drop-contain">
                                                                    <a href="product-left-thumbnail.html">
                                                                        <h5>Fantasy Crunchy Choco Chip Cookies</h5>
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
                                                                <a href="product-left-thumbnail.html" class="drop-image">
                                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/2.png"
                                                                         class="blur-up lazyload" alt="" />
                                                                </a>

                                                                <div class="drop-contain">
                                                                    <a href="product-left-thumbnail.html">
                                                                        <h5>
                                                                            Peanut Butter Bite Premium Butter Cookies
                                                                            600 g
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
                                                        <a href="cart.html" class="btn btn-sm cart-button">View Cart</a>
                                                        <a href="checkout.html"
                                                           class="btn btn-sm cart-button theme-bg-color text-white">Checkout</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="right-side onhover-dropdown">
                                            <div class="delivery-login-box">
                                                <div class="delivery-icon">
                                                    <i data-feather="user"></i>
                                                </div>
                                                <div class="delivery-detail">
                                                    <h6>Hello,</h6>
                                                    <h5>Anonymous user</h5>
                                                </div>
                                            </div>

                                            <div class="onhover-div onhover-div-login">
                                                <ul class="user-box-name">
                                                    <li class="product-box-contain">
                                                        <i></i>
                                                        <a href="login.html">Log In</a>
                                                    </li>

                                                    <li class="product-box-contain">
                                                        <a href="sign-up.html">Register</a>
                                                    </li>

                                                    <li class="product-box-contain">
                                                        <a href="forgot.html">Forgot Password</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container-fluid-lg">
                <div class="row">
                    <div class="col-12">
                        <div class="header-nav">
                            <div class="header-nav-left">
                                <button class="dropdown-category button-86">
                                    <span>All Categories</span>
                                </button>

                                <div class="category-dropdown mt-2">
                                    <div class="category-title">
                                        <h5>Categories</h5>
                                        <button type="button" class="btn p-0 close-button text-content">
                                            <i class="fa-solid fa-xmark"></i>
                                        </button>
                                    </div>

                                    <ul class="category-list">
                                        <li class="onhover-category-list">
                                            <a href="javascript:void(0)" class="category-name">
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/vegetable.svg" alt="" />
                                                <h6>Vegetables & Fruit</h6>
                                                <i class="fa-solid fa-angle-right"></i>
                                            </a>

                                            <div class="onhover-category-box">
                                                <div class="list-1">
                                                    <div class="category-title-box">
                                                        <h5>Organic Vegetables</h5>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <a href="javascript:void(0)">Potato & Tomato</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Cucumber & Capsicum</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Leafy Vegetables</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Root Vegetables</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Beans & Okra</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Cabbage & Cauliflower</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Gourd & Drumstick</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Specialty</a>
                                                        </li>
                                                    </ul>
                                                </div>

                                                <div class="list-2">
                                                    <div class="category-title-box">
                                                        <h5>Fresh Fruit</h5>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <a href="javascript:void(0)">Banana & Papaya</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Kiwi, Citrus Fruit</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Apples & Pomegranate</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Seasonal Fruits</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Mangoes</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Fruit Baskets</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="onhover-category-list">
                                            <a href="javascript:void(0)" class="category-name">
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/cup.svg" alt="" />
                                                <h6>Beverages</h6>
                                                <i class="fa-solid fa-angle-right"></i>
                                            </a>

                                            <div class="onhover-category-box w-100">
                                                <div class="list-1">
                                                    <div class="category-title-box">
                                                        <h5>Energy & Soft Drinks</h5>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <a href="javascript:void(0)">Soda & Cocktail Mix</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Soda & Cocktail Mix</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Sports & Energy Drinks</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Non Alcoholic Drinks</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Packaged Water</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Spring Water</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Flavoured Water</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="onhover-category-list">
                                            <a href="javascript:void(0)" class="category-name">
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/meats.svg" alt="" />
                                                <h6>Meats & Seafood</h6>
                                                <i class="fa-solid fa-angle-right"></i>
                                            </a>

                                            <div class="onhover-category-box">
                                                <div class="list-1">
                                                    <div class="category-title-box">
                                                        <h5>Meat</h5>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <a href="javascript:void(0)">Fresh Meat</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Frozen Meat</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Marinated Meat</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Fresh & Frozen Meat</a>
                                                        </li>
                                                    </ul>
                                                </div>

                                                <div class="list-2">
                                                    <div class="category-title-box">
                                                        <h5>Seafood</h5>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <a href="javascript:void(0)">Fresh Water Fish</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Dry Fish</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Frozen Fish & Seafood</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Marine Water Fish</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Canned Seafood</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Prawans & Shrimps</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Other Seafood</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="onhover-category-list">
                                            <a href="javascript:void(0)" class="category-name">
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/breakfast.svg" alt="" />
                                                <h6>Breakfast & Dairy</h6>
                                                <i class="fa-solid fa-angle-right"></i>
                                            </a>

                                            <div class="onhover-category-box">
                                                <div class="list-1">
                                                    <div class="category-title-box">
                                                        <h5>Breakfast Cereals</h5>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <a href="javascript:void(0)">Oats & Porridge</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Kids Cereal</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Muesli</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Flakes</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Granola & Cereal Bars</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Instant Noodles</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Pasta & Macaroni</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Frozen Non-Veg Snacks</a>
                                                        </li>
                                                    </ul>
                                                </div>

                                                <div class="list-2">
                                                    <div class="category-title-box">
                                                        <h5>Dairy</h5>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <a href="javascript:void(0)">Milk</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Curd</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Paneer, Tofu & Cream</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Butter & Margarine</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Condensed, Powdered Milk</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Buttermilk & Lassi</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Yogurt & Shrikhand</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Flavoured, Soya Milk</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="onhover-category-list">
                                            <a href="javascript:void(0)" class="category-name">
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/frozen.svg" alt="" />
                                                <h6>Frozen Foods</h6>
                                                <i class="fa-solid fa-angle-right"></i>
                                            </a>

                                            <div class="onhover-category-box w-100">
                                                <div class="list-1">
                                                    <div class="category-title-box">
                                                        <h5>Noodle, Pasta</h5>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <a href="javascript:void(0)">Instant Noodles</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Hakka Noodles</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Cup Noodles</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Vermicelli</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Instant Pasta</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="onhover-category-list">
                                            <a href="javascript:void(0)" class="category-name">
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/biscuit.svg" alt="" />
                                                <h6>Biscuits & Snacks</h6>
                                                <i class="fa-solid fa-angle-right"></i>
                                            </a>

                                            <div class="onhover-category-box">
                                                <div class="list-1">
                                                    <div class="category-title-box">
                                                        <h5>Biscuits & Cookies</h5>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <a href="javascript:void(0)">Salted Biscuits</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Marie, Health, Digestive</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Cream Biscuits & Wafers</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Glucose & Milk Biscuits</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Cookies</a>
                                                        </li>
                                                    </ul>
                                                </div>

                                                <div class="list-2">
                                                    <div class="category-title-box">
                                                        <h5>Bakery Snacks</h5>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <a href="javascript:void(0)">Bread Sticks & Lavash</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Cheese & Garlic Bread</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Puffs, Patties, Sandwiches</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Breadcrumbs & Croutons</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="onhover-category-list">
                                            <a href="javascript:void(0)" class="category-name">
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/grocery.svg" alt="" />
                                                <h6>Grocery & Staples</h6>
                                                <i class="fa-solid fa-angle-right"></i>
                                            </a>

                                            <div class="onhover-category-box">
                                                <div class="list-1">
                                                    <div class="category-title-box">
                                                        <h5>Grocery</h5>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <a href="javascript:void(0)">Lemon, Ginger & Garlic</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Indian & Exotic Herbs</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Organic Vegetables</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Organic Fruits</a>
                                                        </li>
                                                    </ul>
                                                </div>

                                                <div class="list-2">
                                                    <div class="category-title-box">
                                                        <h5>Organic Staples</h5>
                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <a href="javascript:void(0)">Organic Dry Fruits</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Organic Dals & Pulses</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Organic Millet & Flours</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Organic Sugar, Jaggery</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Organic Masalas & Spices</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Organic Rice, Other Rice</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Organic Flours</a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void(0)">Organic Edible Oil, Ghee</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="header-nav-middle">
                                <div class="main-nav navbar navbar-expand-xl navbar-light navbar-sticky">
                                    <div class="offcanvas offcanvas-collapse order-xl-2" id="primaryMenu">
                                        <div class="offcanvas-header navbar-shadow">
                                            <h5>Menu</h5>
                                            <button class="btn-close lead" type="button" data-bs-dismiss="offcanvas"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="offcanvas-body">
                                            <ul class="navbar-nav">
                                                <li class="nav-item button-39">
                                                    <a class="nav-link">Home</a>
                                                </li>

                                                <li class="nav-item dropdown button-39 ">
                                                    <a class="nav-link dropdown-toggle " href="javascript:void(0)"
                                                       data-bs-toggle="dropdown">Brand</a>

                                                    <ul class="dropdown-menu my-2 show" data-bs-popper="none">
                                                        <li>
                                                            <a class="dropdown-item " href="shop-category-slider.html">Shop
                                                                Category Slider</a>
                                                        </li>

                                                    </ul>
                                                </li>


                                                <li class="nav-item dropdown dropdown-mega button-39">
                                                    <a class="nav-link dropdown-toggle ps-xl-2 ps-0"
                                                       href="javascript:void(0)" data-bs-toggle="dropdown">Cars</a>

                                                    <div class="dropdown-menu dropdown-menu-2 my-2">
                                                        <div class="row">
                                                            <div class="dropdown-column col-xl-3">
                                                                <h5 class="dropdown-header">
                                                                    Daily Vegetables
                                                                </h5>
                                                                <a class="dropdown-item" href="shop-left-sidebar.html">Beans
                                                                    & Brinjals</a>

                                                            </div>

                                                            <div class="dropdown-column col-xl-3">
                                                                <h5 class="dropdown-header">Baby Tender</h5>
                                                                <a class="dropdown-item" href="shop-left-sidebar.html">Beans
                                                                    & Brinjals</a>

                                                            </div>

                                                            <div class="dropdown-column col-xl-3">
                                                                <h5 class="dropdown-header">
                                                                    Exotic Vegetables
                                                                </h5>
                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Asparagus & Artichokes</a>


                                                            </div>

                                                            <div class="dropdown-column dropdown-column-img col-3"></div>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li class="nav-item dropdown button-39">
                                                    <a class="nav-link dropdown-toggle " href="javascript:void(0)"
                                                       data-bs-toggle="dropdown">News</a>
                                                    <ul class="dropdown-menu my-2 show" data-bs-popper="none">
                                                        <li>
                                                            <a class="dropdown-item" href="blog-detail.html">Blog Detail</a>
                                                        </li>

                                                    </ul>
                                                </li>

                                                <!-- <li class="nav-item dropdown new-nav-item">
                                  <label class="new-dropdown">New</label>
                                  <a
                                    class="nav-link dropdown-toggle"
                                    href="javascript:void(0)"
                                    data-bs-toggle="dropdown"
                                    >Pages</a
                                  >
                                  <ul class="dropdown-menu">
                                    <li class="sub-dropdown-hover">
                                      <a class="dropdown-item" href="javascript:void(0)"
                                        >Email Template
                                        <span class="new-text"
                                          ><i
                                            class="fa-solid fa-bolt-lightning"
                                          ></i></span
                                      ></a>
                                      <ul class="sub-menu">
                                        <li>
                                          <a
                                            href="${pageContext.request.contextPath}/front-end/email-templete/abandonment-email.html"
                                            >Abandonment</a
                                          >
                                        </li>
                                        <li>
                                          <a
                                            href="${pageContext.request.contextPath}/front-end/email-templete/offer-template.html"
                                            >Offer Template</a
                                          >
                                        </li>
                                        <li>
                                          <a href="${pageContext.request.contextPath}/front-end/email-templete/order-success.html"
                                            >Order Success</a
                                          >
                                        </li>
                                        <li>
                                          <a
                                            href="${pageContext.request.contextPath}/front-end/email-templete/reset-password.html"
                                            >Reset Password</a
                                          >
                                        </li>
                                        <li>
                                          <a href="${pageContext.request.contextPath}/front-end/email-templete/welcome.html"
                                            >Welcome template</a
                                          >
                                        </li>
                                      </ul>
                                    </li>
                                    <li class="sub-dropdown-hover">
                                      <a class="dropdown-item" href="javascript:void(0)"
                                        >Invoice Template
                                        <span class="new-text"
                                          ><i
                                            class="fa-solid fa-bolt-lightning"
                                          ></i></span
                                      ></a>
                                      <ul class="sub-menu">
                                        <li>
                                          <a href="${pageContext.request.contextPath}/front-end/invoice/invoice-1.html"
                                            >Invoice 1</a
                                          >
                                        </li>
        
                                        <li>
                                          <a href="${pageContext.request.contextPath}/front-end/invoice/invoice-2.html"
                                            >Invoice 2</a
                                          >
                                        </li>
        
                                        <li>
                                          <a href="${pageContext.request.contextPath}/front-end/invoice/invoice-3.html"
                                            >Invoice 3</a
                                          >
                                        </li>
                                      </ul>
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="404.html">404</a>
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="about-us.html"
                                        >About Us</a
                                      >
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="cart.html">Cart</a>
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="contact-us.html"
                                        >Contact</a
                                      >
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="checkout.html"
                                        >Checkout</a
                                      >
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="coming-soon.html"
                                        >Coming Soon</a
                                      >
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="compare.html"
                                        >Compare</a
                                      >
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="faq.html">Faq</a>
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="order-success.html"
                                        >Order Success</a
                                      >
                                    </li>
                                    <li>
                                      <a
                                        class="dropdown-item"
                                        href="order-tracking.html"
                                        >Order Tracking</a
                                      >
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="otp.html">OTP</a>
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="search.html"
                                        >Search</a
                                      >
                                    </li>
                                    <li>
                                      <a
                                        class="dropdown-item"
                                        href="user-dashboard.html"
                                        >User Dashboard</a
                                      >
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="wishlist.html"
                                        >Wishlist</a
                                      >
                                    </li>
                                  </ul>
                                </li> -->

                                                <!-- <li class="nav-item dropdown">
                                  <a
                                    class="nav-link dropdown-toggle"
                                    href="javascript:void(0)"
                                    data-bs-toggle="dropdown"
                                    >Seller</a
                                  >
                                  <ul class="dropdown-menu">
                                    <li>
                                      <a class="dropdown-item" href="seller-become.html"
                                        >Become a Seller</a
                                      >
                                    </li>
                                    <li>
                                      <a
                                        class="dropdown-item"
                                        href="seller-dashboard.html"
                                        >Seller Dashboard</a
                                      >
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="seller-detail.html"
                                        >Seller Detail</a
                                      >
                                    </li>
                                    <li>
                                      <a
                                        class="dropdown-item"
                                        href="seller-detail-2.html"
                                        >Seller Detail 2</a
                                      >
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="seller-grid.html"
                                        >Seller Grid</a
                                      >
                                    </li>
                                    <li>
                                      <a class="dropdown-item" href="seller-grid-2.html"
                                        >Seller Grid 2</a
                                      >
                                    </li>
                                  </ul>
                                </li> -->
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="header-nav-right">
                                <button class="btn deal-button" data-bs-toggle="modal" data-bs-target="#deal-box">
                                    <i data-feather="zap"></i>
                                    <span>Deal Today</span>
                                </button>
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

                            <h2>${carDT.name}</h2>
                            <nav>
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item">
                                        <a href="index.html">
                                            <i class="fa-solid fa-house"></i>
                                        </a>
                                    </li>

                                    <li class="breadcrumb-item active">${carDT.name}</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Product Left Sidebar Start -->
        <section class="product-section">
            <div class="container-fluid-lg">
                <div class="row">
                    <div class="col-xxl-9 col-xl-8 col-lg-7 wow fadeInUp">
                        <div class="row g-4">
                            <c:forEach items="${carImage}" var="ci">

                                <c:if test="${not empty ci.image_url}">
                                    <c:set var="mainImage" value="${ci.image_url}"/>
                                    <c:set var="hasImages" value="true"/>
                                </c:if>
                            </c:forEach>
                            <div class="col-xl-6">
                                <div class="product-left-box">
                                    <div class="row g-sm-4 g-2">
                                        <div class="col-12 wow fadeInUp">
                                            <c:forEach var="ci" items="${carImage}">
                                                <c:if test="${ci.car_id eq carDT.car_id}">
                                                    <c:forEach var="im" items="${ci.image_url}">
                                                        <div class="slider-image my-1">
                                                            <img id="img-${carDT.car_id}" src="${im}" alt="img-${carDT.car_id}" class="
                                                                 img-fluid image_zoom_cls-3 blur-up lazyload rounded">
                                                        </div>
                                                    </c:forEach>
                                                </c:if>

                                            </c:forEach>

                                        </div>




                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="right-box-contain">

                                    <h2 class="name">${carDT.name}</h2>
                                    <div class="price-rating">
                                        <h3 class="theme-color price">${carDT.price} <del class="text-content">$90.00</del> <span
                                                class="offer theme-color">(20% off)</span></h3>
                                        <div class="product-rating custom-rate">
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



                                    <div class="product-packege">
                                        <div class="product-title">
                                            <h4>Weight</h4>
                                        </div>
                                        <div class="button-83 col-4">${carDT.weight} Kg</div>
                                    </div>

                                    <div class="time deal-timer product-deal-timer mx-md-0 mx-auto" id="clockdiv-1"
                                         data-hours="1" data-minutes="2" data-seconds="3">
                                        <div class="product-title">
                                            <h4>Hurry up! Sales Ends In</h4>
                                        </div>
                                        <ul>
                                            <li>
                                                <div class="counter d-block">
                                                    <div class="days d-block">
                                                        <h5></h5>
                                                    </div>
                                                    <h6>Days</h6>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="counter d-block">
                                                    <div class="hours d-block">
                                                        <h5></h5>
                                                    </div>
                                                    <h6>Hours</h6>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="counter d-block">
                                                    <div class="minutes d-block">
                                                        <h5></h5>
                                                    </div>
                                                    <h6>Min</h6>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="counter d-block">
                                                    <div class="seconds d-block">
                                                        <h5></h5>
                                                    </div>
                                                    <h6>Sec</h6>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>



                                    <div class="note-box product-packege">

                                        <button onclick="location.href = 'cart.html';"
                                                class="button-86 text-white w-100">Add To Cart</button>
                                    </div>

                                    <div class="buy-box">

                                        <a href="compare.html">
                                            <i data-feather="shuffle"></i>
                                            <span>Add To Compare</span>
                                        </a>
                                    </div>

                                    <div class="pickup-box">
                                        <div class="product-title">
                                            <h4>Car Information</h4>
                                        </div>



                                        <div class="product-info">
                                            <ul class="product-info-list product-info-list-2">
                                                <li>Cylinders : <a href="javascript:void(0)">${carDT.cylinders}</a></li>
                                                <li>Horsepower : <a href="javascript:void(0)">${carDT.horsepower}</a></li>
                                                <li>Weight : <a href="javascript:void(0)">${carDT.weight}</a></li>
                                                <li>Acceleration : <a href="javascript:void(0)">${carDT.acceleration}</a></li>
                                                <li>Model_year : <a href="javascript:void(0)">${carDT.model_year}</a></li>
                                                <li>Origin : <a href="javascript:void(0)">${carDT.origin}</a></li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="paymnet-option">
                                        <div class="product-title">
                                            <h4>Guaranteed Safe Checkout</h4>
                                        </div>
                                        <ul>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/product/payment/1.svg"
                                                         class="blur-up lazyload" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/product/payment/2.svg"
                                                         class="blur-up lazyload" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/product/payment/3.svg"
                                                         class="blur-up lazyload" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/product/payment/4.svg"
                                                         class="blur-up lazyload" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/product/payment/5.svg"
                                                         class="blur-up lazyload" alt="">
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="product-section-box">
                                    <ul class="nav nav-tabs custom-nav" id="myTab" role="tablist">
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link active" id="description-tab" data-bs-toggle="tab"
                                                    data-bs-target="#description" type="button" role="tab"
                                                    aria-controls="description" aria-selected="true">Description</button>
                                        </li>



                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="care-tab" data-bs-toggle="tab"
                                                    data-bs-target="#care" type="button" role="tab" aria-controls="care"
                                                    aria-selected="false">Care Instuctions</button>
                                        </li>


                                    </ul>

                                    <div class="tab-content custom-tab" id="myTabContent">
                                        <div class="tab-pane fade show active" id="description" role="tabpanel"
                                             aria-labelledby="description-tab">
                                            <div class="product-description">
                                                <div class="nav-desh">
                                                    <p>${carDT.description}</p>
                                                </div>



                                                <div class="banner-contain nav-desh">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/banner/14.jpg"
                                                         class="bg-img blur-up lazyload" alt="">
                                                    <div class="banner-details p-center banner-b-space w-100 text-center">
                                                        <div>
                                                            <h6 class="ls-expanded theme-color mb-sm-3 mb-1">SUMMER</h6>
                                                            <h2>VEGETABLE</h2>
                                                            <p class="mx-auto mt-1">Save up to 20% OFF</p>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="nav-desh">
                                                    <div class="desh-title">
                                                        <h5>From The Manufacturer:</h5>
                                                    </div>
                                                    <p>Jelly beans shortbread chupa chups carrot cake jelly-o halvah apple
                                                        pie pudding gingerbread. Apple pie halvah cake tiramisu shortbread
                                                        cotton candy croissant chocolate cake. Tart cupcake caramels gummi
                                                        bears macaroon gingerbread fruitcake marzipan wafer. Marzipan
                                                        dessert cupcake ice cream tootsie roll. Brownie chocolate cake
                                                        pudding cake powder candy ice cream ice cream cake. Jujubes soufflé
                                                        chupa chups cake candy halvah donut. Tart tart icing lemon drops
                                                        fruitcake apple pie.</p>

                                                    <p>Dessert liquorice tart soufflé chocolate bar apple pie pastry danish
                                                        soufflé. Gummi bears halvah gingerbread jelly icing. Chocolate cake
                                                        chocolate bar pudding chupa chups bear claw pie dragée donut halvah.
                                                        Gummi bears cookie ice cream jelly-o jujubes sweet croissant.
                                                        Marzipan cotton candy gummi bears lemon drops lollipop lollipop
                                                        chocolate. Ice cream cookie dragée cake sweet roll sweet roll.Lemon
                                                        drops cookie muffin carrot cake chocolate marzipan gingerbread
                                                        topping chocolate bar. Soufflé tiramisu pastry sweet dessert.</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="tab-pane fade" id="info" role="tabpanel" aria-labelledby="info-tab">
                                            <div class="table-responsive">
                                                <table class="table info-table">
                                                    <tbody>
                                                        <tr>
                                                            <td>Specialty</td>
                                                            <td>Vegetarian</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Ingredient Type</td>
                                                            <td>Vegetarian</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Brand</td>
                                                            <td>Lavian Exotique</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Form</td>
                                                            <td>Bar Brownie</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Package Information</td>
                                                            <td>Box</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Manufacturer</td>
                                                            <td>Prayagh Nutri Product Pvt Ltd</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Item part number</td>
                                                            <td>LE 014 - 20pcs Crème Bakes (Pack of 2)</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Net Quantity</td>
                                                            <td>40.00 count</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>

                                        <div class="tab-pane fade" id="care" role="tabpanel" aria-labelledby="care-tab">
                                            <div class="information-box">
                                                <ul>
                                                    <li>Regularly Check and Change Engine Oil: Engine oil is the 
                                                        lifeblood of your car's engine, helping to lubricate moving parts 
                                                        and reduce friction. Check the oil level regularly and change it according 
                                                        to the manufacturer's recommendations, usually every 5,000 to 10,000 km.</li>

                                                    <li>Inspect the Cooling System: Your car's engine needs proper cooling to prevent 
                                                        overheating. Check the coolant
                                                        level and top it up if necessary. Also, ensure 
                                                        the cooling system is free from leaks.</li>

                                                    <li>Check Tires: Tires should be inflated to the correct pressure and
                                                        inspected for even wear. Rotate the tires regularly to ensure they wear
                                                        evenly and last longer.</li>

                                                    <li>Check Brakes: The braking system is crucial for safe driving. Inspect the brake pads and discs for wear and replace them when necessary.

                                                    </li>

                                                    <li>Enjoy your car!</li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                                            <div class="review-box">
                                                <div class="row g-4">
                                                    <div class="col-xl-6">
                                                        <div class="review-title">
                                                            <h4 class="fw-500">Customer reviews</h4>
                                                        </div>

                                                        <div class="d-flex">
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
                                                                        <i data-feather="star"></i>
                                                                    </li>
                                                                    <li>
                                                                        <i data-feather="star"></i>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <h6 class="ms-3">4.2 Out Of 5</h6>
                                                        </div>

                                                        <div class="rating-box">
                                                            <ul>
                                                                <li>
                                                                    <div class="rating-list">
                                                                        <h5>5 Star</h5>
                                                                        <div class="progress">
                                                                            <div class="progress-bar" role="progressbar"
                                                                                 style="width: 68%" aria-valuenow="100"
                                                                                 aria-valuemin="0" aria-valuemax="100">
                                                                                68%
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="rating-list">
                                                                        <h5>4 Star</h5>
                                                                        <div class="progress">
                                                                            <div class="progress-bar" role="progressbar"
                                                                                 style="width: 67%" aria-valuenow="100"
                                                                                 aria-valuemin="0" aria-valuemax="100">
                                                                                67%
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="rating-list">
                                                                        <h5>3 Star</h5>
                                                                        <div class="progress">
                                                                            <div class="progress-bar" role="progressbar"
                                                                                 style="width: 42%" aria-valuenow="100"
                                                                                 aria-valuemin="0" aria-valuemax="100">
                                                                                42%
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="rating-list">
                                                                        <h5>2 Star</h5>
                                                                        <div class="progress">
                                                                            <div class="progress-bar" role="progressbar"
                                                                                 style="width: 30%" aria-valuenow="100"
                                                                                 aria-valuemin="0" aria-valuemax="100">
                                                                                30%
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="rating-list">
                                                                        <h5>1 Star</h5>
                                                                        <div class="progress">
                                                                            <div class="progress-bar" role="progressbar"
                                                                                 style="width: 24%" aria-valuenow="100"
                                                                                 aria-valuemin="0" aria-valuemax="100">
                                                                                24%
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <div class="col-xl-6">
                                                        <div class="review-title">
                                                            <h4 class="fw-500">Add a review</h4>
                                                        </div>

                                                        <div class="row g-4">
                                                            <div class="col-md-6">
                                                                <div class="form-floating theme-form-floating">
                                                                    <input type="text" class="form-control" id="name"
                                                                           placeholder="Name">
                                                                    <label for="name">Your Name</label>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="form-floating theme-form-floating">
                                                                    <input type="email" class="form-control" id="email"
                                                                           placeholder="Email Address">
                                                                    <label for="email">Email Address</label>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="form-floating theme-form-floating">
                                                                    <input type="url" class="form-control" id="website"
                                                                           placeholder="Website">
                                                                    <label for="website">Website</label>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="form-floating theme-form-floating">
                                                                    <input type="url" class="form-control" id="review1"
                                                                           placeholder="Give your review a title">
                                                                    <label for="review1">Review Title</label>
                                                                </div>
                                                            </div>

                                                            <div class="col-12">
                                                                <div class="form-floating theme-form-floating">
                                                                    <textarea class="form-control"
                                                                              placeholder="Leave a comment here"
                                                                              id="floatingTextarea2"
                                                                              style="height: 150px"></textarea>
                                                                    <label for="floatingTextarea2">Write Your
                                                                        Comment</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-12">
                                                        <div class="review-title">
                                                            <h4 class="fw-500">Customer questions & answers</h4>
                                                        </div>

                                                        <div class="review-people">
                                                            <ul class="review-list">
                                                                <li>
                                                                    <div class="people-box">
                                                                        <div>
                                                                            <div class="people-image">
                                                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/review/1.jpg"
                                                                                     class="img-fluid blur-up lazyload"
                                                                                     alt="">
                                                                            </div>
                                                                        </div>

                                                                        <div class="people-comment">
                                                                            <a class="name"
                                                                               href="javascript:void(0)">Tracey</a>
                                                                            <div class="date-time">
                                                                                <h6 class="text-content">14 Jan, 2022 at
                                                                                    12.58 AM</h6>

                                                                                <div class="product-rating">
                                                                                    <ul class="rating">
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
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

                                                                            <div class="reply">
                                                                                <p>Icing cookie carrot cake chocolate cake
                                                                                    sugar plum jelly-o danish. Dragée dragée
                                                                                    shortbread tootsie roll croissant muffin
                                                                                    cake I love gummi bears. Candy canes ice
                                                                                    cream caramels tiramisu marshmallow cake
                                                                                    shortbread candy canes cookie.<a
                                                                                        href="javascript:void(0)">Reply</a>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="people-box">
                                                                        <div>
                                                                            <div class="people-image">
                                                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/review/2.jpg"
                                                                                     class="img-fluid blur-up lazyload"
                                                                                     alt="">
                                                                            </div>
                                                                        </div>

                                                                        <div class="people-comment">
                                                                            <a class="name"
                                                                               href="javascript:void(0)">Olivia</a>
                                                                            <div class="date-time">
                                                                                <h6 class="text-content">01 May, 2022 at
                                                                                    08.31 AM</h6>
                                                                                <div class="product-rating">
                                                                                    <ul class="rating">
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
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

                                                                            <div class="reply">
                                                                                <p>Tootsie roll cake danish halvah powder
                                                                                    Tootsie roll candy marshmallow cookie
                                                                                    brownie apple pie pudding brownie
                                                                                    chocolate bar. Jujubes gummi bears I
                                                                                    love powder danish oat cake tart
                                                                                    croissant.<a
                                                                                        href="javascript:void(0)">Reply</a>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="people-box">
                                                                        <div>
                                                                            <div class="people-image">
                                                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/review/3.jpg"
                                                                                     class="img-fluid blur-up lazyload"
                                                                                     alt="">
                                                                            </div>
                                                                        </div>

                                                                        <div class="people-comment">
                                                                            <a class="name"
                                                                               href="javascript:void(0)">Gabrielle</a>
                                                                            <div class="date-time">
                                                                                <h6 class="text-content">21 May, 2022 at
                                                                                    05.52 PM</h6>

                                                                                <div class="product-rating">
                                                                                    <ul class="rating">
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
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

                                                                            <div class="reply">
                                                                                <p>Biscuit chupa chups gummies powder I love
                                                                                    sweet pudding jelly beans. Lemon drops
                                                                                    marzipan apple pie gingerbread macaroon
                                                                                    croissant cotton candy pastry wafer.
                                                                                    Carrot cake halvah I love tart caramels
                                                                                    pudding icing chocolate gummi bears.
                                                                                    Gummi bears danish cotton candy muffin
                                                                                    marzipan caramels awesome feel. <a
                                                                                        href="javascript:void(0)">Reply</a>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
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

                    <div class="col-xxl-3 col-xl-4 col-lg-5 d-none d-lg-block wow fadeInUp">
                        <div class="right-sidebar-box">
                            <div class="vendor-box">
                                 
                                <div class="verndor-contain">
                                   
                                    <div class="vendor-image">
                                        <c:forEach items="${tradeMark.url_logo}" var="obj">
                                            
                                                <img src="${obj}"  alt="Car Image" class="card-img-top "  style="object-fit: cover;max-width: 100%;border-radius: 50%">
                                                
                                        </c:forEach>
                                    </div>
                                    
                                    <div class="vendor-name">
                                        <h5>
                                            <a href="#">
                                                ${tradeMark.name}
                                            </a>

                                        </h5>

                                        <div class="product-rating mt-1">
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
                                </div>

                                

                                <div class="vendor-list">
                                    <ul>
                                        <li>
                                            <div class="address-contact">
                                                <i data-feather="map-pin"></i>
                                                <h5>Privacy: <span class="text-content">${tradeMark.privacy}</span></h5>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="address-contact">
                                                <i data-feather="headphones"></i>
                                                <h5>Terms: <span class="text-content">${tradeMark.terms}</span></h5>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <!-- Trending Product -->
                            <div class="pt-25">
                                <div class="category-menu">
                                    <h3>Trending Products</h3>

                                    <ul class="product-list product-right-sidebar border-0 p-0">
                                        <c:forEach items="${carTrending}" var="ct">
                                            <li>
                                                <div class="offer-product">
                                                    <a href="product-left-thumbnail.html" class="offer-image">

                                                        <c:set var="firstImagePrinted" value="false" />
                                                        <c:forEach items="${carImage}" var="ci">
                                                            <c:if test="${ci.car_id == ct.car_id}">
                                                                <c:forEach items="${ci.image_url}" var="obj">
                                                                    <c:if test="${not firstImagePrinted}">
                                                                        <img src="${obj}" alt="Car Image" 
                                                                             class="card-img-top "  style="object-fit: cover;max-width:100%; max-height: 100%;">
                                                                        <c:set var="firstImagePrinted" value="true" />
                                                                    </c:if>
                                                                </c:forEach>
                                                            </c:if> 
                                                        </c:forEach>
                                                    </a>

                                                    <div class="offer-detail">
                                                        <div>
                                                            <a href="product-left-thumbnail.html">
                                                                <h6 class="name">${ct.name}</h6>
                                                            </a>
                                                            <span>${ct.weight} kg</span>
                                                            <h6 class="price theme-color">${ct.price} $</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>


                                    </ul>
                                </div>
                            </div>

                            <!-- Banner Section -->
                            <div class="ratio_156 pt-25">
                                <div class="home-contain">
                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/banner/8.jpg" class="bg-img blur-up lazyload"
                                         alt="">
                                    <div class="home-detail p-top-left home-p-medium">
                                        <div>
                                            <h6 class="text-yellow home-banner">Seafood</h6>
                                            <h3 class="text-uppercase fw-normal"><span
                                                    class="theme-color fw-bold">Freshes</span> Products</h3>
                                            <h3 class="fw-light">every hour</h3>
                                            <button onclick="location.href = 'shop-left-sidebar.html';"
                                                    class="btn btn-animation btn-md fw-bold mend-auto">Shop Now <i
                                                    class="fa-solid fa-arrow-right icon"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Product Left Sidebar End -->

        <!-- Releted Product Section Start -->
        <section class="product-list-section section-b-space">
            <div class="container-fluid-lg">
                <div class="title">
                    <h2>Related Products</h2>
                    <span class="title-leaf">
                        <svg class="icon-width">
                        <use xlink:href="${pageContext.request.contextPath}/front-end/assets/svg/leaf.svg#leaf"></use>
                        </svg>
                    </span>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="slider-6_1 product-wrapper">
                            <c:forEach var="cl" items="${carList}">
                                <div>
                                    <div class="product-box-3 wow fadeInUp">
                                        <div class="product-header">
                                            <div class="product-image">
                                                <a href="detail?id=${cl.car_id}">
                                                    <c:set var="firstImagePrinted" value="false" />
                                                    <c:forEach items="${carImage}" var="ci">
                                                        <c:if test="${ci.car_id == cl.car_id}">
                                                            <c:forEach items="${ci.image_url}" var="obj">
                                                                <c:if test="${not firstImagePrinted}">
                                                                    <img src="${obj}"  alt="Car Image" class="card-img-top "  style="object-fit: cover;max-width:100%; max-height: 100%;">
                                                                    <c:set var="firstImagePrinted" value="true" />
                                                                </c:if>
                                                            </c:forEach>
                                                        </c:if> 
                                                    </c:forEach>
                                                </a>

                                                <ul class="product-option">
                                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">
                                                        <a href="detail?id=${cl.car_id}" data-bs-toggle="modal"
                                                           data-bs-target="#view">
                                                            <i data-feather="eye"></i>
                                                        </a>
                                                    </li>

                                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">
                                                        <a href="compare.html">
                                                            <i data-feather="refresh-cw"></i>
                                                        </a>
                                                    </li>

                                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Cart">
                                                        <a href="wishlist.html" class="notifi-wishlist">
                                                            <i data-feather="shopping-cart"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="product-footer">
                                            <div class="product-detail">
                                                <span class="span-name">${cl.category_id}</span>
                                                <a href="product-left-thumbnail.html">
                                                    <h5 class="name">${cl.name}</h5>
                                                </a>
                                                <div class="product-rating mt-2">
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
                                                            <i data-feather="star" class="fill"></i>
                                                        </li>
                                                    </ul>
                                                    <span>(5.0)</span>
                                                </div>
                                                <h6 class="unit">${cl.weight} Kg</h6>
                                                <h5 class="price"><span class="theme-color">$ ${cl.price}</span> <del>$ ${cl.price + 1000}</del>
                                                </h5>
                                                <div class="add-to-cart-box bg-white">
                                                    <button class="btn btn-add-cart addcart-button">Add
                                                    </button>
                                                </div>
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
        <!-- Releted Product Section End -->

        <!-- Footer Section Start -->
        <footer class="section-t-space py-3">
            <div class="container-fluid-lg">
                <div class="service-section pb-3">
                    <div class="row g-3">
                        <div class="col-12">
                            <div class="service-contain py-2">
                                <div class="service-box">
                                    <div class="service-image">
                                        <img src="${pageContext.request.contextPath}/front-end/assets/svg/sedan.png" class="blur-up lazyload" alt="" />
                                    </div>

                                    <div class="service-detail">
                                        <h5>Newest Cars</h5>
                                    </div>
                                </div>

                                <div class="service-box">
                                    <div class="service-image">
                                        <img src="${pageContext.request.contextPath}/front-end/assets/svg/delivery.svg" class="blur-up lazyload" alt="" />
                                    </div>

                                    <div class="service-detail">
                                        <h5>Free Delivery For Order Over $50k</h5>
                                    </div>
                                </div>

                                <div class="service-box">
                                    <div class="service-image">
                                        <img src="${pageContext.request.contextPath}/front-end/assets/svg/discount.svg" class="blur-up lazyload" alt="" />
                                    </div>

                                    <div class="service-detail">
                                        <h5>Monthly Mega Discounts</h5>
                                    </div>
                                </div>

                                <div class="service-box">
                                    <div class="service-image">
                                        <img src="${pageContext.request.contextPath}/front-end/assets/svg/market.svg" class="blur-up lazyload" alt="" />
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
                                        <img src="${pageContext.request.contextPath}/front-end/assets/images/logo/1.png" class="blur-up lazyload" alt="" />
                                    </a>
                                </div>

                                <div class="footer-logo-contain">
                                    <p>
                                        Discover a <b>seamless online car buying experience</b> with unbeatable prices,
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
                                                <h5>apexautos@hotmail.com</h5>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="social-app">
                                        <h5 class="mb-2 text-content">Download App :</h5>
                                        <ul>
                                            <li class="mb-0">
                                                <a href="https://play.google.com/store/apps" target="_blank">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/playstore.svg" class="blur-up lazyload"
                                                         alt="" />
                                                </a>
                                            </li>
                                            <li class="mb-0">
                                                <a href="https://www.apple.com/in/app-store/" target="_blank">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/appstore.svg" class="blur-up lazyload"
                                                         alt="" />
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
                        <h6 class="text-content">©2022 ApexAutos All rights reserved</h6>
                    </div>

                    <div class="payment">
                        <img src="${pageContext.request.contextPath}/front-end/assets/images/payment/1.png" class="blur-up lazyload" alt="" />
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
        <div class="modal fade theme-modal view-modal" id="view" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
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
                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/product/category/1.jpg" class="img-fluid blur-up lazyload"
                                         alt="">
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
                                        <p>Candy canes sugar plum tart cotton candy chupa chups sugar plum chocolate I love.
                                            Caramels marshmallow icing dessert candy canes I love soufflé I love toffee.
                                            Marshmallow pie sweet sweet roll sesame snaps tiramisu jelly bear claw. Bonbon
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

                                    <div class="select-size ">
                                        <h4>Cake Size :</h4>
                                        <select class="form-select select-form-size ">
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
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/10.png" class="blur-up lazyload"
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
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/11.png" class="blur-up lazyload"
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
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/12.png" class="blur-up lazyload"
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
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/13.png" class="blur-up lazyload"
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

        <!-- Add to cart Modal Start -->
        <div class="add-cart-box">
            <div class="add-iamge">
                <img src="${pageContext.request.contextPath}/front-end/assets/images/cake/pro/1.jpg" class="img-fluid" alt="">
            </div>

            <div class="add-contain">
                <h6>Added to Cart</h6>
            </div>
        </div>
        <!-- Add to cart Modal End -->

        <!-- Tap to top start -->
        <div class="theme-option">
            <div class="back-to-top">
                <a id="back-to-top" href="#">
                    <i class="fas fa-chevron-up"></i>
                </a>
            </div>
        </div>
        <!-- Tap to top end -->

        <!-- Sticky Cart Box Start -->
        <div class="sticky-bottom-cart">
            <div class="container-fluid-lg">
                <div class="row">
                    <div class="col-12">
                        <div class="cart-content">
                            <div class="product-image">
                                <img src="${pageContext.request.contextPath}/front-end/assets/images/product/category/1.jpg" class="img-fluid blur-up lazyload"
                                     alt="">
                                <div class="content">
                                    <h5>${carDT.name}</h5>
                                    <h6>${carDT.price}<del class="text-danger">$90.00</del><span>20% off</span></h6>
                                </div>
                            </div>

                            <div class="add-btn">
                                <a class="btn theme-bg-color text-white wishlist-btn" href="wishlist.html"><i
                                        class="fa fa-bookmark"></i> Wishlist</a>
                                <a class="btn theme-bg-color text-white" href="cart.html"><i
                                        class="fas fa-shopping-cart"></i> Add To Cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sticky Cart Box End -->

        <!-- Bg overlay Start -->
        <div class="bg-overlay"></div>
        <!-- Bg overlay End -->

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

        <!-- Slick js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/slick.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/slick-animation.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/custom-slick-animated.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/custom_slick.js"></script>

        <!-- Price Range Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/ion.rangeSlider.min.js"></script>

        <!-- sidebar open js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/filter-sidebar.js"></script>

        <!-- Quantity js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/quantity-2.js"></script>

        <!-- Zoom Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/jquery.elevatezoom.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/zoom-filter.js"></script>

        <!-- Timer Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/timer1.js"></script>

        <!-- Sticky-bar js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/sticky-cart-bottom.js"></script>

        <!-- WOW js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/wow.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/custom-wow.js"></script>

        <!-- script js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/script.js"></script>



    </body>

</html>