<!DOCTYPE html>
<html lang="en">
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Fastkart">
        <meta name="keywords" content="Fastkart">
        <meta name="author" content="Fastkart">
        <link rel="icon" href="${pageContext.request.contextPath}/front-end/assets/images/favicon/1.png" type="image/x-icon">
        <title>Blog List</title>

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
                                <span class="text-white">1418 Riverwood Drive, CA 96052, US</span>
                            </div>
                        </div>

                        <div class="col-xxl-6 col-lg-9 d-lg-block d-none">
                            <div class="header-offer">
                                <div class="notification-slider">
                                    <div>
                                        <div class="timer-notification">
                                            <h6><strong class="me-1">Welcome to Fastkart!</strong>Wrap new offers/gift
                                                every signle day on Weekends.<strong class="ms-1">New Coupon Code: Fast024
                                                </strong>
                                            </h6>
                                        </div>
                                    </div>

                                    <div>
                                        <div class="timer-notification">
                                            <h6>Something you love is now on sale!<a href="shop-left-sidebar.html"
                                                                                     class="text-white">Buy Now
                                                    !</a>
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
                                                 class="img-fluid blur-up lazyload" alt="">
                                            <span>English</span>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="select-language">
                                            <li>
                                                <a class="dropdown-item" href="javascript:void(0)" id="english">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/country/united-kingdom.png"
                                                         class="img-fluid blur-up lazyload" alt="">
                                                    <span>English</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="javascript:void(0)" id="france">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/country/germany.png"
                                                         class="img-fluid blur-up lazyload" alt="">
                                                    <span>Germany</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="javascript:void(0)" id="chinese">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/country/turkish.png"
                                                         class="img-fluid blur-up lazyload" alt="">
                                                    <span>Turki</span>
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
                                                <a class="dropdown-item" id="aud" href="javascript:void(0)">AUD</a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" id="eur" href="javascript:void(0)">EUR</a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" id="cny" href="javascript:void(0)">CNY</a>
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
                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/logo/1.png" class="img-fluid blur-up lazyload" alt="">
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
                                                   aria-label="Recipient's username" aria-describedby="button-addon2">
                                            <button class="btn" type="button" id="button-addon2">
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
                                            <input type="text" class="form-control search-type" placeholder="Search here..">
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
                                                    <h5>+91 888 104 2340</h5>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="right-side">
                                            <a href="wishlist.html" class="btn p-0 position-relative header-wishlist">
                                                <i data-feather="heart"></i>
                                            </a>
                                        </li>
                                        <li class="right-side">
                                            <div class="onhover-dropdown header-badge">
                                                <button type="button" class="btn p-0 position-relative header-wishlist">
                                                    <i data-feather="shopping-cart"></i>
                                                    <span class="position-absolute top-0 start-100 translate-middle badge">2
                                                        <span class="visually-hidden">unread messages</span>
                                                    </span>
                                                </button>

                                                <div class="onhover-div">
                                                    <ul class="cart-list">
                                                        <li class="product-box-contain">
                                                            <div class="drop-cart">
                                                                <a href="product-left-thumbnail.html" class="drop-image">
                                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/1.png"
                                                                         class="blur-up lazyload" alt="">
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
                                                                         class="blur-up lazyload" alt="">
                                                                </a>

                                                                <div class="drop-contain">
                                                                    <a href="product-left-thumbnail.html">
                                                                        <h5>Peanut Butter Bite Premium Butter Cookies 600 g
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
                                                <div class="delivery-detail">
                                                    <h6>Hello,</h6>
                                                    <h5>My Account</h5>
                                                </div>
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
                                                            <a href="user/dashboard">Dashboard</a>
                                                        </li>

                                                        <li class="product-box-contain">
                                                            <a href="cart">Cart</a>
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

            <div class="container-fluid-lg">
                <div class="row">
                    <div class="col-12">
                        <div class="header-nav">
                            <div class="header-nav-left">
                                <button class="dropdown-category">
                                    <i data-feather="align-left"></i>
                                    <span>All Categories</span>
                                </button>

                                <div class="category-dropdown">
                                    <div class="category-title">
                                        <h5>Categories</h5>
                                        <button type="button" class="btn p-0 close-button text-content">
                                            <i class="fa-solid fa-xmark"></i>
                                        </button>
                                    </div>

                                    <ul class="category-list">
                                        <li class="onhover-category-list">
                                            <a href="javascript:void(0)" class="category-name">
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/vegetable.svg" alt="">
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
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/cup.svg" alt="">
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
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/meats.svg" alt="">
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
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/breakfast.svg" alt="">
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
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/frozen.svg" alt="">
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
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/biscuit.svg" alt="">
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
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/1/grocery.svg" alt="">
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
                                                <li class="nav-item dropdown">
                                                    <a class="nav-link dropdown-toggle" href="javascript:void(0)"
                                                       data-bs-toggle="dropdown">Home</a>

                                                    <ul class="dropdown-menu">
                                                        <li>
                                                            <a class="dropdown-item" href="index.html">Kartshop</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="index-2.html">Sweetshop</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="index-3.html">Organic</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="index-4.html">Supershop</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="index-5.html">Classic shop</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="index-6.html">Furniture</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="index-7.html">Search Oriented</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="index-8.html">Category Focus</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="index-9.html">Fashion</a>
                                                        </li>
                                                    </ul>
                                                </li>

                                                <li class="nav-item dropdown">
                                                    <a class="nav-link dropdown-toggle" href="javascript:void(0)"
                                                       data-bs-toggle="dropdown">Shop</a>

                                                    <ul class="dropdown-menu">
                                                        <li>
                                                            <a class="dropdown-item" href="shop-category-slider.html">Shop
                                                                Category Slider</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="shop-category.html">Shop
                                                                Category Sidebar</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="shop-banner.html">Shop Banner</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="shop-left-sidebar.html">Shop Left
                                                                Sidebar</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="shop-list.html">Shop List</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="shop-right-sidebar.html">Shop
                                                                Right Sidebar</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="shop-top-filter.html">Shop Top
                                                                Filter</a>
                                                        </li>
                                                    </ul>
                                                </li>

                                                <li class="nav-item dropdown">
                                                    <a class="nav-link dropdown-toggle" href="javascript:void(0)"
                                                       data-bs-toggle="dropdown">Product</a>

                                                    <ul class="dropdown-menu">
                                                        <li>
                                                            <a class="dropdown-item" href="product-4-image.html">Product
                                                                4 Image</a>
                                                        </li>
                                                        <li class="sub-dropdown-hover">
                                                            <a href="javascript:void(0)" class="dropdown-item">Product
                                                                Thumbnail</a>
                                                            <ul class="sub-menu">
                                                                <li>
                                                                    <a href="product-left-thumbnail.html">Left Thumbnail</a>
                                                                </li>

                                                                <li>
                                                                    <a href="product-right-thumbnail.html">Right
                                                                        Thumbnail</a>
                                                                </li>

                                                                <li>
                                                                    <a href="product-bottom-thumbnail.html">Bottom
                                                                        Thumbnail</a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <a href="product-bundle.html" class="dropdown-item">Product
                                                                Bundle</a>
                                                        </li>
                                                        <li>
                                                            <a href="product-slider.html" class="dropdown-item">Product
                                                                Slider</a>
                                                        </li>
                                                        <li>
                                                            <a href="product-sticky.html" class="dropdown-item">Product
                                                                Sticky</a>
                                                        </li>
                                                    </ul>
                                                </li>

                                                <li class="nav-item dropdown dropdown-mega">
                                                    <a class="nav-link dropdown-toggle ps-xl-2 ps-0"
                                                       href="javascript:void(0)" data-bs-toggle="dropdown">Mega Menu</a>

                                                    <div class="dropdown-menu dropdown-menu-2">
                                                        <div class="row">
                                                            <div class="dropdown-column col-xl-3">
                                                                <h5 class="dropdown-header">Daily Vegetables</h5>
                                                                <a class="dropdown-item" href="shop-left-sidebar.html">Beans
                                                                    & Brinjals</a>

                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Broccoli & Cauliflower</a>

                                                                <a href="shop-left-sidebar.html"
                                                                   class="dropdown-item">Chilies, Garlic</a>

                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Vegetables & Salads</a>

                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Gourd, Cucumber</a>

                                                                <a class="dropdown-item" href="shop-left-sidebar.html">Herbs
                                                                    & Sprouts</a>

                                                                <a href="demo-personal-portfolio.html"
                                                                   class="dropdown-item">Lettuce & Leafy</a>
                                                            </div>

                                                            <div class="dropdown-column col-xl-3">
                                                                <h5 class="dropdown-header">Baby Tender</h5>
                                                                <a class="dropdown-item" href="shop-left-sidebar.html">Beans
                                                                    & Brinjals</a>

                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Broccoli & Cauliflower</a>

                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Chilies, Garlic</a>

                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Vegetables & Salads</a>

                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Gourd, Cucumber</a>

                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Potatoes & Tomatoes</a>

                                                                <a href="shop-left-sidebar.html" class="dropdown-item">Peas
                                                                    & Corn</a>
                                                            </div>

                                                            <div class="dropdown-column col-xl-3">
                                                                <h5 class="dropdown-header">Exotic Vegetables</h5>
                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Asparagus & Artichokes</a>

                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Avocados & Peppers</a>

                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Broccoli & Zucchini</a>

                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Celery, Fennel & Leeks</a>

                                                                <a class="dropdown-item"
                                                                   href="shop-left-sidebar.html">Chilies & Lime</a>
                                                            </div>

                                                            <div class="dropdown-column dropdown-column-img col-3"></div>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li class="nav-item dropdown">
                                                    <a class="nav-link dropdown-toggle" href="javascript:void(0)"
                                                       data-bs-toggle="dropdown">Blog</a>
                                                    <ul class="dropdown-menu">
                                                        <li>
                                                            <a class="dropdown-item" href="blog-detail.html">Blog Detail</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="blog-grid.html">Blog Grid</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="blog-list.html">Blog List</a>
                                                        </li>
                                                    </ul>
                                                </li>

                                                <li class="nav-item dropdown new-nav-item">
                                                    <label class="new-dropdown">New</label>
                                                    <a class="nav-link dropdown-toggle" href="javascript:void(0)"
                                                       data-bs-toggle="dropdown">Pages</a>
                                                    <ul class="dropdown-menu">
                                                        <li class="sub-dropdown-hover">
                                                            <a class="dropdown-item" href="javascript:void(0)">Email
                                                                Template <span class="new-text"><i
                                                                        class="fa-solid fa-bolt-lightning"></i></span></a>
                                                            <ul class="sub-menu">
                                                                <li>
                                                                    <a
                                                                        href="${pageContext.request.contextPath}/front-end/email-templete/abandonment-email.html">Abandonment</a>
                                                                </li>
                                                                <li>
                                                                    <a href="${pageContext.request.contextPath}/front-end/email-templete/offer-template.html">Offer
                                                                        Template</a>
                                                                </li>
                                                                <li>
                                                                    <a href="${pageContext.request.contextPath}/front-end/email-templete/order-success.html">Order
                                                                        Success</a>
                                                                </li>
                                                                <li>
                                                                    <a href="${pageContext.request.contextPath}/front-end/email-templete/reset-password.html">Reset
                                                                        Password</a>
                                                                </li>
                                                                <li>
                                                                    <a href="${pageContext.request.contextPath}/front-end/email-templete/welcome.html">Welcome
                                                                        template</a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li class="sub-dropdown-hover">
                                                            <a class="dropdown-item" href="javascript:void(0)">Invoice
                                                                Template <span class="new-text"><i
                                                                        class="fa-solid fa-bolt-lightning"></i></span></a>
                                                            <ul class="sub-menu">
                                                                <li>
                                                                    <a href="${pageContext.request.contextPath}/front-end/invoice/invoice-1.html">Invoice 1</a>
                                                                </li>

                                                                <li>
                                                                    <a href="${pageContext.request.contextPath}/front-end/invoice/invoice-2.html">Invoice 2</a>
                                                                </li>

                                                                <li>
                                                                    <a href="${pageContext.request.contextPath}/front-end/invoice/invoice-3.html">Invoice 3</a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="404.html">404</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="about-us.html">About Us</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="cart.html">Cart</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="contact-us.html">Contact</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="checkout.html">Checkout</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="coming-soon.html">Coming Soon</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="compare.html">Compare</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="faq.html">Faq</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="order-success.html">Order
                                                                Success</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="order-tracking.html">Order
                                                                Tracking</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="otp.html">OTP</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="search.html">Search</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="user-dashboard.html">User
                                                                Dashboard</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="wishlist.html">Wishlist</a>
                                                        </li>
                                                    </ul>
                                                </li>

                                                <li class="nav-item dropdown">
                                                    <a class="nav-link dropdown-toggle" href="javascript:void(0)"
                                                       data-bs-toggle="dropdown">Seller</a>
                                                    <ul class="dropdown-menu">
                                                        <li>
                                                            <a class="dropdown-item" href="seller-become.html">Become a
                                                                Seller</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="seller-dashboard.html">Seller
                                                                Dashboard</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="seller-detail.html">Seller
                                                                Detail</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="seller-detail-2.html">Seller
                                                                Detail 2</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="seller-grid.html">Seller Grid</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="seller-grid-2.html">Seller Grid
                                                                2</a>
                                                        </li>
                                                    </ul>
                                                </li>
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
                            <h2>Blog List</h2>
                            <nav>
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item">
                                        <a href="index.html">
                                            <i class="fa-solid fa-house"></i>
                                        </a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Blog List</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Blog Section Start -->


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Upload new post</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="home?state=blog&action=add" method="post" enctype="multipart/form-data">
                        <div class="modal-body">

                            <input type="hidden" name="idu" value="${sessionScope.user.user_id}"> 

                            <div class="form-group">
                                <label for="titleInput">Title:</label>
                                <input type="text" class="form-control" id="titleInput" placeholder="Enter title" name="title">
                            </div>

                            <div class="form-group">
                                <label for="postContent">Content:</label>
                                <textarea name="content" class="form-control" id="postContent" rows="5" placeholder="Write your content here..."></textarea>
                            </div>

                            <div class="mb-3">
                                <label for="image" class="form-label">Images</label>
                                <input type="file" class="form-control" onchange="displayImage(this)" name="image" multiple>
                                <img id="previewImage" style="max-width: 300px; max-height: 300px;">
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Upload</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <c:if test="${sessionScope.user != null}">
            <div class="container mt-5" style="display: flex;justify-content: space-between">
                <div class="card" style="width: 200px;margin-left: 400px">
                    <div class="form-group" >
                        <div class="form-control" id="postContent" rows="3"
                             data-toggle="modal" data-target="#exampleModal">
                            What's on your mind?
                        </div>
                    </div>
                </div>
                <div style="width: 200px;margin-left: 400px">
                    <div class="form-group" >
                        <div>
                            <a href="home?state=manage&id=${sessionScope.user.user_id}">
                                Manage your status
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>
        <section class="blog-section section-b-space">
            <div class="container-fluid-lg">
                <div class="row g-4">
                    <div class="col-xxl-9 col-xl-8 col-lg-7 order-lg-2">
                        <div class="row g-4">
                            <c:forEach items="${allStatus}" var="as">
                                <div class="col-12">
                                    <div class="blog-box blog-list wow fadeInUp">
                                        <div class="blog-contain blog-contain-2">
                                            <div class="blog-label">
                                                <c:forEach items="${allAccounts}" var="aa">
                                                    <c:if test="${as.user_id == aa.user_id}">                                                
                                                        <span class="super"><i data-feather="user"></i> 
                                                            <span>${aa.email}</span>                                               
                                                        </span>
                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                            <h3>${as.status_title}</h3>
                                            <p>${as.status_content}</p>
                                            <c:forEach items="${as.status_images}" var="obj">
                                                <img src="${obj}" alt="Car Image" class="card-img-top" style="object-fit: cover; max-width: 100%; max-height: 100%;">
                                            </c:forEach>

                                            <c:forEach items="${allComment}" var="ac">

                                                <div class="comments">
                                                    <c:forEach items="${allAccounts}" var="aa">    
                                                        <c:if test="${aa.user_id == ac.user_id && as.status_id == ac.status_id}">
                                                            <div class="comment">
                                                                <span class="super"><i data-feather="user"></i> 
                                                                    <span class="comment-content">${aa.email}</span>                                              
                                                                </span>   
                                                            </div>
                                                            <div class="comment">
                                                                <span class="comment-user">${ac.comment_content}</span>
                                                            </div>
                                                        </c:if>
                                                    </c:forEach>     
                                                </div>

                                            </c:forEach>
                                            <form action="home?state=blog&action=addcmt" method="post">
                                                <div class="form-group">
                                                    <label for="comment">Write you comment here:</label>
                                                    <textarea class="form-control" id="comment" name="comment" rows="3"></textarea>
                                                </div>
                                                <input type="hidden" name="status_id" value="${as.status_id}">
                                                <input type="hidden" name="user_id" value="${sessionScope.user.user_id}">
                                                <button type="submit" class="btn btn-primary">Comment</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>


                    <div class="col-xxl-3 col-xl-4 col-lg-5 order-lg-1">
                        <div class="left-sidebar-box wow fadeInUp">


                            <div class="accordion left-accordion-box" id="accordionPanelsStayOpenExample">


                                <div class="accordion-item" style="margin-top: 40px">
                                    <h2 class="accordion-header" id="panelsStayOpen-headingFour">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                                data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false"
                                                aria-controls="panelsStayOpen-collapseFour">
                                            Trending Products
                                        </button>
                                    </h2>
                                    <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse collapse show"
                                         aria-labelledby="panelsStayOpen-headingFour">
                                        <div class="accordion-body">
                                            <ul class="product-list product-list-2 border-0 p-0">
                                                <c:forEach items="${carTrending}" var="ct">
                                                    <li>
                                                        <div class="offer-product">
                                                            <a href="shop-left-sidebar.html" class="offer-image">
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
                                                                    <a href="shop-left-sidebar.html">
                                                                        <h6 class="name">${ct.name}</h6>
                                                                    </a>
                                                                    <span>450 G</span>
                                                                    <h6 class="price theme-color">$ ${ct.price}</h6>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </c:forEach>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Blog Section End -->

        <!-- Footer Section Start -->
        <footer class="section-t-space">
            <div class="container-fluid-lg">
                <div class="service-section">
                    <div class="row g-3">
                        <div class="col-12">
                            <div class="service-contain">
                                <div class="service-box">
                                    <div class="service-image">
                                        <img src="${pageContext.request.contextPath}/front-end/assets/svg/product.svg" class="blur-up lazyload" alt="">
                                    </div>

                                    <div class="service-detail">
                                        <h5>Every Fresh Products</h5>
                                    </div>
                                </div>

                                <div class="service-box">
                                    <div class="service-image">
                                        <img src="${pageContext.request.contextPath}/front-end/assets/svg/delivery.svg" class="blur-up lazyload" alt="">
                                    </div>

                                    <div class="service-detail">
                                        <h5>Free Delivery For Order Over $50</h5>
                                    </div>
                                </div>

                                <div class="service-box">
                                    <div class="service-image">
                                        <img src="${pageContext.request.contextPath}/front-end/assets/svg/discount.svg" class="blur-up lazyload" alt="">
                                    </div>

                                    <div class="service-detail">
                                        <h5>Daily Mega Discounts</h5>
                                    </div>
                                </div>

                                <div class="service-box">
                                    <div class="service-image">
                                        <img src="${pageContext.request.contextPath}/front-end/assets/svg/market.svg" class="blur-up lazyload" alt="">
                                    </div>

                                    <div class="service-detail">
                                        <h5>Best Price On The Market</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

    <!-- Footer Section Start -->
   <jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer Section End -->

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

    <!-- Deal Box Modal Start -->
  
    <!-- Deal Box Modal End -->

        <!-- Bg overlay Start -->
        <div class="bg-overlay"></div>
        <!-- Bg overlay End -->

        <!-- latest jquery-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/jquery-3.6.0.min.js"></script>

        <!-- jquery ui-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/jquery-ui.min.js"></script>

        <!-- Bootstrap js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/bootstrap-notify.min.js"></script>

        <!-- feather icon js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/feather/feather.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/feather/feather-icon.js"></script>

        <!-- Lazyload Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/lazysizes.min.js"></script>

        <!-- Slick js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/slick.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/custom_slick.js"></script>

        <!-- WOW js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/wow.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/custom-wow.js"></script>

        <!-- script js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/script.js"></script>

        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- Bootstrap JavaScript -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
                                    $(document).ready(function () {
                                        // B?t s? ki?n click v�o input
                                        $('#postContent').click(function () {
                                            // Hi?n th? modal khi click v�o input
                                            $('#exampleModal').modal('show');
                                        });
                                    });
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
        </script>
    </body>

</html>