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
        <title>Seller Detail</title>

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
                                            <h6>Something you love is now on sale!
                                                <a href="shop-left-sidebar.html" class="text-white">Buy Now
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

                                            <div class="onhover-div onhover-div-login">
                                                <ul class="user-box-name">
                                                    <c:choose>
                                                        <c:when test="${not empty sessionScope.userd}">
                                                            <li class="product-box-contain">
                                                                <a href="userdashboard">User Profile</a>
                                                            </li>
                                                            <li class="product-box-contain">
                                                                <a href="logout">Log out</a>
                                                            </li>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <li class="product-box-contain">
                                                                <i></i>
                                                                <a href="login">Log In</a>
                                                            </li>
                                                            <li class="product-box-contain">
                                                                <a href="register">Register</a>
                                                            </li>
                                                        </c:otherwise>
                                                    </c:choose>
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
        <section class="vendore-breadscrumb-section">
            <div class="container-fluid-lg">
                <div class="row">
                    <div class="col-12">
                        <div class="breadscrumb-contain">
                            <h2>Vendor Details</h2>
                            <form>
                                <span>
                                    <i class="iconly-Search icli"></i>
                                </span>
                                <input type="text" class="form-control" placeholder="Example text with button add on">
                                <button class="btn theme-bg-color text-white m-0" type="button"
                                        id="button-addon1">Search</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Shop Section Start -->
        <section class="section-b-space shop-section">
            <div class="container-fluid-lg">
                <div class="row">
                    <div class="col-xxl-3 col-lg-4">
                        <div class="left-box wow fadeInUp">
                            <div class="shop-left-sidebar">
                                <div class="back-button">
                                    <h3><i class="fa-solid fa-arrow-left"></i> Back</h3>
                                </div>

                                <div class="vendor-detail-box">
                                    <div class="vendor-name vendor-bottom">
                                        <div class="vendor-logo">
                                            <c:forEach items="${tradeMark.url_logo}" var="obj">

                                                <img src="${obj}"  alt="Car Image" class=" "  style="object-fit: contain;max-width: 100%;border-radius: 50%">

                                            </c:forEach>
                                            <div>
                                                <h3>${tradeMark.name}</h3>
                                                <div class="product-rating vendor-rating">
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
                                                    <span>4.3 of 5</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="vendor-list">
                                            <h5>Describe: <span class="text-content" style="  display: block;
                                                                width: 100px;
                                                                overflow: hidden;
                                                                white-space: nowrap;
                                                                text-overflow: ellipsis;
                                                                " maxlength="20">${tradeMark.describe}</span></h5>
                                            <ul>

                                                <li>
                                                    <div class="address-contact">
                                                        <i data-feather="map-pin"></i>
                                                        <h5>Privacy: <span class="text-content">${tradeMark.privacy}</span></h5>
                                                    </div>
                                                </li>
                                                <br>
                                                <li>
                                                    <div class="address-contact">
                                                        <i data-feather="headphones"></i>
                                                        <h5>Terms: <span class="text-content">${tradeMark.terms}</span></h5>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="vendor-tag vendor-bottom">
                                        <h4>Perfect for you, if you like</h4>
                                        <ul>
                                            <li>Vegetable</li>
                                            <li>Fruit</li>
                                            <li>Meat</li>
                                            <li>Backery</li>
                                            <li>Cake</li>
                                            <li>Organic</li>
                                        </ul>
                                    </div>

                                    <div class="vendor-share">
                                        <h5>Follow Us :</h5>
                                        <ul>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <i class="fa-brands fa-facebook-f"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <i class="fa-brands fa-google-plus-g"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <i class="fa-brands fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <i class="fa-brands fa-instagram"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="accordion custome-accordion" id="accordionExample">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingOne">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapseOne" aria-expanded="true"
                                                    aria-controls="collapseOne">
                                                <span>Categories</span>
                                            </button>
                                        </h2>
                                        <div id="collapseOne" class="accordion-collapse collapse show"
                                             aria-labelledby="headingOne">
                                            <div class="accordion-body">
                                                <div class="form-floating theme-form-floating-2 search-box">
                                                    <input type="search" class="form-control" id="search"
                                                           placeholder="Search ..">
                                                    <label for="search">Search</label>
                                                </div>

                                                <ul class="category-list custom-padding custom-height">
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="fruit">
                                                            <label class="form-check-label" for="fruit">
                                                                <span class="name">Fruits & Vegetables</span>
                                                                <span class="number">(15)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="cake">
                                                            <label class="form-check-label" for="cake">
                                                                <span class="name">Bakery, Cake & Dairy</span>
                                                                <span class="number">(12)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="behe">
                                                            <label class="form-check-label" for="behe">
                                                                <span class="name">Beverages</span>
                                                                <span class="number">(20)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="snacks">
                                                            <label class="form-check-label" for="snacks">
                                                                <span class="name">Snacks & Branded Foods</span>
                                                                <span class="number">(05)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="beauty">
                                                            <label class="form-check-label" for="beauty">
                                                                <span class="name">Beauty & Household</span>
                                                                <span class="number">(30)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="pets">
                                                            <label class="form-check-label" for="pets">
                                                                <span class="name">Kitchen, Garden & Pets</span>
                                                                <span class="number">(50)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="egg">
                                                            <label class="form-check-label" for="egg">
                                                                <span class="name">Eggs, Meat & Fish</span>
                                                                <span class="number">(19)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="food">
                                                            <label class="form-check-label" for="food">
                                                                <span class="name">Gourment & World Food</span>
                                                                <span class="number">(30)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="care">
                                                            <label class="form-check-label" for="care">
                                                                <span class="name">Baby Care</span>
                                                                <span class="number">(20)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="fish">
                                                            <label class="form-check-label" for="fish">
                                                                <span class="name">Fish & Seafood</span>
                                                                <span class="number">(10)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="marinades">
                                                            <label class="form-check-label" for="marinades">
                                                                <span class="name">Marinades</span>
                                                                <span class="number">(05)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="lamb">
                                                            <label class="form-check-label" for="lamb">
                                                                <span class="name">Mutton & Lamb</span>
                                                                <span class="number">(09)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="other">
                                                            <label class="form-check-label" for="other">
                                                                <span class="name">Port & other Meats</span>
                                                                <span class="number">(06)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="pour">
                                                            <label class="form-check-label" for="pour">
                                                                <span class="name">Pourltry</span>
                                                                <span class="number">(01)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="salami">
                                                            <label class="form-check-label" for="salami">
                                                                <span class="name">Sausages, bacon & Salami</span>
                                                                <span class="number">(03)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingTwo">
                                            <button class="accordion-button collapsed" type="button"
                                                    data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                                    aria-expanded="false" aria-controls="collapseTwo">
                                                <span>Food Preference</span>
                                            </button>
                                        </h2>
                                        <div id="collapseTwo" class="accordion-collapse collapse show"
                                             aria-labelledby="headingTwo">
                                            <div class="accordion-body">
                                                <ul class="category-list custom-padding">
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="veget">
                                                            <label class="form-check-label" for="veget">
                                                                <span class="name">Vegetarian</span>
                                                                <span class="number">(08)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox" id="non">
                                                            <label class="form-check-label" for="non">
                                                                <span class="name">Non Vegetarian</span>
                                                                <span class="number">(09)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingThree">
                                            <button class="accordion-button collapsed" type="button"
                                                    data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                                    aria-expanded="false" aria-controls="collapseThree">
                                                <span>Price</span>
                                            </button>
                                        </h2>
                                        <div id="collapseThree" class="accordion-collapse collapse show"
                                             aria-labelledby="headingThree">
                                            <div class="accordion-body">
                                                <div class="range-slider">
                                                    <input type="text" class="js-range-slider" value="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingSix">
                                            <button class="accordion-button collapsed" type="button"
                                                    data-bs-toggle="collapse" data-bs-target="#collapseSix"
                                                    aria-expanded="false" aria-controls="collapseSix">
                                                <span>Rating</span>
                                            </button>
                                        </h2>
                                        <div id="collapseSix" class="accordion-collapse collapse show"
                                             aria-labelledby="headingSix">
                                            <div class="accordion-body">
                                                <ul class="category-list custom-padding">
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox">
                                                            <div class="form-check-label">
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
                                                                <span class="text-content">(5 Star)</span>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox">
                                                            <div class="form-check-label">
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
                                                                <span class="text-content">(4 Star)</span>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox">
                                                            <div class="form-check-label">
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
                                                                <span class="text-content">(3 Star)</span>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox">
                                                            <div class="form-check-label">
                                                                <ul class="rating">
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
                                                                    <li>
                                                                        <i data-feather="star"></i>
                                                                    </li>
                                                                </ul>
                                                                <span class="text-content">(2 Star)</span>
                                                            </div>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox">
                                                            <div class="form-check-label">
                                                                <ul class="rating">
                                                                    <li>
                                                                        <i data-feather="star" class="fill"></i>
                                                                    </li>
                                                                    <li>
                                                                        <i data-feather="star"></i>
                                                                    </li>
                                                                    <li>
                                                                        <i data-feather="star"></i>
                                                                    </li>
                                                                    <li>
                                                                        <i data-feather="star"></i>
                                                                    </li>
                                                                    <li>
                                                                        <i data-feather="star"></i>
                                                                    </li>
                                                                </ul>
                                                                <span class="text-content">(1 Star)</span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingFour">
                                            <button class="accordion-button collapsed" type="button"
                                                    data-bs-toggle="collapse" data-bs-target="#collapseFour"
                                                    aria-expanded="false" aria-controls="collapseFour">
                                                <span>Discount</span>
                                            </button>
                                        </h2>
                                        <div id="collapseFour" class="accordion-collapse collapse show"
                                             aria-labelledby="headingFour">
                                            <div class="accordion-body">
                                                <ul class="category-list custom-padding">
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault">
                                                            <label class="form-check-label" for="flexCheckDefault">
                                                                <span class="name">upto 5%</span>
                                                                <span class="number">(06)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault1">
                                                            <label class="form-check-label" for="flexCheckDefault1">
                                                                <span class="name">5% - 10%</span>
                                                                <span class="number">(08)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault2">
                                                            <label class="form-check-label" for="flexCheckDefault2">
                                                                <span class="name">10% - 15%</span>
                                                                <span class="number">(10)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault3">
                                                            <label class="form-check-label" for="flexCheckDefault3">
                                                                <span class="name">15% - 25%</span>
                                                                <span class="number">(14)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault4">
                                                            <label class="form-check-label" for="flexCheckDefault4">
                                                                <span class="name">More than 25%</span>
                                                                <span class="number">(13)</span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingFive">
                                            <button class="accordion-button collapsed" type="button"
                                                    data-bs-toggle="collapse" data-bs-target="#collapseFive"
                                                    aria-expanded="false" aria-controls="collapseFive">
                                                <span>Pack Size</span>
                                            </button>
                                        </h2>
                                        <div id="collapseFive" class="accordion-collapse collapse show"
                                             aria-labelledby="headingFive">
                                            <div class="accordion-body">
                                                <ul class="category-list custom-padding custom-height">
                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault5">
                                                            <label class="form-check-label" for="flexCheckDefault5">
                                                                <span class="name">400 to 500 g</span>
                                                                <span class="number">(05)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault6">
                                                            <label class="form-check-label" for="flexCheckDefault6">
                                                                <span class="name">500 to 700 g</span>
                                                                <span class="number">(02)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault7">
                                                            <label class="form-check-label" for="flexCheckDefault7">
                                                                <span class="name">700 to 1 kg</span>
                                                                <span class="number">(04)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault8">
                                                            <label class="form-check-label" for="flexCheckDefault8">
                                                                <span class="name">120 - 150 g each Vacuum 2 pcs</span>
                                                                <span class="number">(06)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault9">
                                                            <label class="form-check-label" for="flexCheckDefault9">
                                                                <span class="name">1 pc</span>
                                                                <span class="number">(09)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault10">
                                                            <label class="form-check-label" for="flexCheckDefault10">
                                                                <span class="name">1 to 1.2 kg</span>
                                                                <span class="number">(06)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault11">
                                                            <label class="form-check-label" for="flexCheckDefault11">
                                                                <span class="name">2 x 24 pcs Multipack</span>
                                                                <span class="number">(03)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault12">
                                                            <label class="form-check-label" for="flexCheckDefault12">
                                                                <span class="name">2x6 pcs Multipack</span>
                                                                <span class="number">(04)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault13">
                                                            <label class="form-check-label" for="flexCheckDefault13">
                                                                <span class="name">4x6 pcs Multipack</span>
                                                                <span class="number">(05)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault14">
                                                            <label class="form-check-label" for="flexCheckDefault14">
                                                                <span class="name">5x6 pcs Multipack</span>
                                                                <span class="number">(09)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault15">
                                                            <label class="form-check-label" for="flexCheckDefault15">
                                                                <span class="name">Combo 2 Items</span>
                                                                <span class="number">(10)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault16">
                                                            <label class="form-check-label" for="flexCheckDefault16">
                                                                <span class="name">Combo 3 Items</span>
                                                                <span class="number">(14)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault17">
                                                            <label class="form-check-label" for="flexCheckDefault17">
                                                                <span class="name">2 pcs</span>
                                                                <span class="number">(19)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault18">
                                                            <label class="form-check-label" for="flexCheckDefault18">
                                                                <span class="name">3 pcs</span>
                                                                <span class="number">(14)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault19">
                                                            <label class="form-check-label" for="flexCheckDefault19">
                                                                <span class="name">2 pcs Vacuum (140 g to 180 g each
                                                                    )</span>
                                                                <span class="number">(13)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault20">
                                                            <label class="form-check-label" for="flexCheckDefault20">
                                                                <span class="name">4 pcs</span>
                                                                <span class="number">(18)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault21">
                                                            <label class="form-check-label" for="flexCheckDefault21">
                                                                <span class="name">4 pcs Vacuum (140 g to 180 g each
                                                                    )</span>
                                                                <span class="number">(07)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault22">
                                                            <label class="form-check-label" for="flexCheckDefault22">
                                                                <span class="name">6 pcs</span>
                                                                <span class="number">(09)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault23">
                                                            <label class="form-check-label" for="flexCheckDefault23">
                                                                <span class="name">6 pcs carton</span>
                                                                <span class="number">(11)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault24">
                                                            <label class="form-check-label" for="flexCheckDefault24">
                                                                <span class="name">6 pcs Pouch</span>
                                                                <span class="number">(16)</span>
                                                            </label>
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

                    <div class="col-xxl-9 col-lg-8">
                        <div class="right-box">
                            <div class="show-button">
                                <div class="filter-button-group mt-0">
                                    <div class="filter-button d-inline-block d-lg-none">
                                        <a><i class="fa-solid fa-filter"></i> Filter Menu</a>
                                    </div>
                                </div>

                                <div class="top-filter-menu">


                                    <div class="grid-option">
                                        <ul>
                                            <li class="three-grid d-xxl-inline-block d-none">
                                                <a href="javascript:void(0)">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/svg/grid-3.svg" class="blur-up lazyload" alt="">
                                                </a>
                                            </li>
                                            <li class="grid-btn active">
                                                <a href="javascript:void(0)">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/svg/grid-4.svg"
                                                         class="blur-up lazyload d-lg-inline-block d-none" alt="">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/svg/grid.svg"
                                                         class="blur-up lazyload img-fluid d-lg-none d-inline-block" alt="">
                                                </a>
                                            </li>
                                            <li class="list-btn">
                                                <a href="javascript:void(0)">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/svg/list.svg" class="blur-up lazyload" alt="">
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div
                                class="row g-sm-4 g-3 row-cols-xxl-4 row-cols-xl-3 row-cols-lg-2 row-cols-md-3 row-cols-2 product-list-section">
                                <c:forEach items="${carList}" var="cl">
                                    <div>
                                        <div class="product-box-3 h-100 wow fadeInUp">
                                            <div class="product-header">
                                                <div class="product-image">
                                                    <a href="home?state=detail&id=${cl.car_id}">
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

                                                    <ul class="product-option" style="
                                                        width: 80%;
                                                        ">
                                                        <li data-bs-toggle="tooltip" data-bs-placement="top"
                                                            title="View" style="font-size:8px">
                                                            <a href="home?state=detail&id=${cl.car_id}&idSeller=${cl.seller_id}" data-bs-toggle="modal"
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
                                                            title="Add to Cart">
                                                            <c:if test="${sessionScope.user != null}">
                                                                <form id="form-cart-${cl.car_id}"
                                                                      action="cart?action=addtocart&id_car=${cl.car_id}"
                                                                      method="post">
                                                                </c:if>
                                                                <a style="cursor: pointer"
                                                                   onclick="document.getElementById('form-cart-${cl.car_id}').submit()">
                                                                    <i data-feather="shopping-cart"
                                                                       style="font-size: 8px"></i>
                                                                </a>
                                                                <c:if test="${sessionScope.user != null}">
                                                                </form>
                                                            </c:if>


                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-footer">
                                                <div class="product-detail">
                                                    <c:forEach var="cb" items="${carBrand}">
                                                        <c:if test="${cb.id == cl.brand_id}">
                                                            <span class="span-name">
                                                                ${cb.name}
                                                            </span>
                                                        </c:if>
                                                    </c:forEach>


                                                    <h5 class="name" > 
                                                        <a href="home?state=detail&id=${cl.car_id}">
                                                            ${cl.name}
                                                        </a>
                                                    </h5>


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
                                                                <i data-feather="star"></i>
                                                            </li>
                                                        </ul>
                                                        <span>(4.0)</span>
                                                    </div>

                                                    <h5 class="price"><span class="theme-color">$${cl.price}</span> 
                                                    </h5>
                                                    <div class="add-to-cart-box bg-white">
                                                        <button class="btn btn-add-cart addcart-button">Add
                                                            <span class="add-icon bg-light-gray">
                                                                <i class="fa-solid fa-plus"></i>
                                                            </span>
                                                        </button>
                                                        <div class="cart_qty qty-box">
                                                            <div class="input-group bg-white">
                                                                <button type="button" class="qty-left-minus bg-gray"
                                                                        data-type="minus" data-field="">
                                                                    <i class="fa fa-minus" aria-hidden="true"></i>
                                                                </button>
                                                                <input class="form-control input-number qty-input" type="text"
                                                                       name="quantity" value="0">
                                                                <button type="button" class="qty-right-plus bg-gray"
                                                                        data-type="plus" data-field="">
                                                                    <i class="fa fa-plus" aria-hidden="true"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                            <nav class="custome-pagination">
                                <ul class="pagination justify-content-center">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="javascript:void(0)" tabindex="-1" aria-disabled="true">
                                            <i class="fa-solid fa-angles-left"></i>
                                        </a>
                                    </li>
                                    <li class="page-item active">
                                        <a class="page-link" href="javascript:void(0)">1</a>
                                    </li>
                                    <li class="page-item" aria-current="page">
                                        <a class="page-link" href="javascript:void(0)">2</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="javascript:void(0)">3</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="javascript:void(0)">
                                            <i class="fa-solid fa-angles-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Shop Section End -->

    <!-- Footer Section Start -->
     <jsp:include page="footer.jsp"></jsp:include>
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
                                <img src="../assets/images/product/category/1.jpg" class="img-fluid blur-up lazyload"
                                    alt="">
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
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/playstore.svg" class="blur-up lazyload"
                                                         alt="">
                                                </a>
                                            </li>
                                            <li class="mb-0">
                                                <a href="https://www.apple.com/in/app-store/" target="_blank">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/appstore.svg" class="blur-up lazyload"
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
                        <h6 class="text-content">©2022 Fastkart All rights reserved</h6>
                    </div>

                    <div class="payment">
                        <img src="${pageContext.request.contextPath}/front-end/assets/images/payment/1.png" class="blur-up lazyload" alt="">
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

   

    <!-- Add to cart Modal Start -->
    <div class="add-cart-box">
        <div class="add-iamge">
            <img src="../assets/images/cake/pro/1.jpg" class="img-fluid blur-up lazyload" alt="">
        </div>
        <!-- Deal Box Modal End -->

        <!-- Add to cart Modal Start -->
        <div class="add-cart-box">
            <div class="add-iamge">
                <img src="${pageContext.request.contextPath}/front-end/assets/images/cake/pro/1.jpg" class="img-fluid blur-up lazyload" alt="">
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
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/custom_slick.js"></script>

        <!-- Price Range Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/ion.rangeSlider.min.js"></script>

        <!-- Quantity js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/quantity-2.js"></script>

        <!-- sidebar open js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/filter-sidebar.js"></script>

        <!-- WOW js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/wow.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/custom-wow.js"></script>

        <!-- script js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/script.js"></script>
    </body>

</html>