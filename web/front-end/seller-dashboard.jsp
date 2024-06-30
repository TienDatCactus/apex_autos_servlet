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
    <link rel="icon" href="../assets/images/favicon/1.png" type="image/x-icon">
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
    <link id="rtl-link" rel="stylesheet" type="text/css" href="../assets/css/vendors/bootstrap.css">

    <!-- font-awesome css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/font-awesome.css">

    <!-- feather icon css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/feather-icon.css">

    <!-- slick css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/slick/slick-theme.css">

    <!-- Iconly css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bulk-style.css">

    <!-- Template css -->
    <link id="color-link" rel="stylesheet" type="text/css" href="../assets/css/style.css">
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
                                        <img src="../assets/images/country/united-states.png"
                                            class="img-fluid blur-up lazyload" alt="">
                                        <span>English</span>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="select-language">
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0)" id="english">
                                                <img src="../assets/images/country/united-kingdom.png"
                                                    class="img-fluid blur-up lazyload" alt="">
                                                <span>English</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0)" id="france">
                                                <img src="../assets/images/country/germany.png"
                                                    class="img-fluid blur-up lazyload" alt="">
                                                <span>Germany</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="javascript:void(0)" id="chinese">
                                                <img src="../assets/images/country/turkish.png"
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
                                <img src="../assets/images/logo/1.png" class="img-fluid blur-up lazyload" alt="">
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
                                                                <img src="../assets/images/vegetable/product/1.png"
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
                                                                <img src="../assets/images/vegetable/product/2.png"
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
                                            <img src="../assets/svg/1/vegetable.svg" alt="">
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
                                            <img src="../assets/svg/1/cup.svg" alt="">
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
                                            <img src="../assets/svg/1/meats.svg" alt="">
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
                                            <img src="../assets/svg/1/breakfast.svg" alt="">
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
                                            <img src="../assets/svg/1/frozen.svg" alt="">
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
                                            <img src="../assets/svg/1/biscuit.svg" alt="">
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
                                            <img src="../assets/svg/1/grocery.svg" alt="">
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
                                                                    href="../email-templete/abandonment-email.html">Abandonment</a>
                                                            </li>
                                                            <li>
                                                                <a href="../email-templete/offer-template.html">Offer
                                                                    Template</a>
                                                            </li>
                                                            <li>
                                                                <a href="../email-templete/order-success.html">Order
                                                                    Success</a>
                                                            </li>
                                                            <li>
                                                                <a href="../email-templete/reset-password.html">Reset
                                                                    Password</a>
                                                            </li>
                                                            <li>
                                                                <a href="../email-templete/welcome.html">Welcome
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
                                                                <a href="../invoice/invoice-1.html">Invoice 1</a>
                                                            </li>

                                                            <li>
                                                                <a href="../invoice/invoice-2.html">Invoice 2</a>
                                                            </li>

                                                            <li>
                                                                <a href="../invoice/invoice-3.html">Invoice 3</a>
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
            <li>
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
                                <li class="breadcrumb-item active" aria-current="page">User Dashboard</li>
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
                                <img src="../assets/images/inner-page/cover-img.jpg" class="img-fluid blur-up lazyload"
                                    alt="">
                            </div>

                            <div class="profile-contain">
                                <div class="profile-image">
                                    <div class="position-relative">
                                        <img src="../assets/images/vendor-page/logo.png"
                                            class="blur-up lazyload update_img" alt="">
                                    </div>
                                </div>

                                <div class="profile-name">
                                    <h3>Joshua D. Bass</h3>
                                    <h6 class="text-content">joshuadbass@rhyta.com</h6>
                                </div>
                            </div>
                        </div>

                        <ul class="nav nav-pills user-nav-pills" id="pills-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a href="#pills-tabContent" class="nav-link active" id="pills-dashboard-tab"
                                    data-bs-toggle="pill" data-bs-target="#pills-dashboard" role="tab"
                                    aria-controls="pills-dashboard" aria-selected="true"><i data-feather="home"></i>
                                    DashBoard</a>
                            </li>

                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-product-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-product" type="button" role="tab"
                                    aria-controls="pills-product" aria-selected="false"><i
                                        data-feather="shopping-bag"></i>Products</button>
                            </li>

                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-order-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-order" type="button" role="tab" aria-controls="pills-order"
                                    aria-selected="false"><i data-feather="shopping-bag"></i>Order</button>
                            </li>

                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-profile" type="button" role="tab"
                                    aria-controls="pills-profile" aria-selected="false"><i data-feather="user"></i>
                                    Profile</button>
                            </li>

                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-security-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-security" type="button" role="tab"
                                    aria-controls="pills-security" aria-selected="false"><i data-feather="settings"></i>
                                    Setting</button>
                            </li>

                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-out-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-out" type="button" role="tab" aria-selected="false"><i
                                        data-feather="log-out"></i>
                                    Log Out</button>
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
                                        <h2>My Dashboard</h2>
                                        <span class="title-leaf">
                                            <svg class="icon-width bg-gray">
                                                <use xlink:href="../assets/svg/leaf.svg#leaf"></use>
                                            </svg>
                                        </span>
                                    </div>

                                    <div class="dashboard-user-name">
                                        <h6 class="text-content">Hello, <b class="text-title">Vicki E. Pope</b></h6>
                                        <p class="text-content">From your My Account Dashboard you have the ability to
                                            view a snapshot of your recent account activity and update your account
                                            information. Select a link below to view or edit information.</p>
                                    </div>

                                    <div class="total-box">
                                        <div class="row g-sm-4 g-3">
                                            <div class="col-xxl-4 col-lg-6 col-md-4 col-sm-6">
                                                <div class="totle-contain">
                                                    <img src="../assets/images/svg/order.svg"
                                                        class="img-1 blur-up lazyload" alt="">
                                                    <img src="../assets/images/svg/order.svg" class="blur-up lazyload"
                                                        alt="">
                                                    <div class="totle-detail">
                                                        <h5>Total Products</h5>
                                                        <h3>25</h3>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xxl-4 col-lg-6 col-md-4 col-sm-6">
                                                <div class="totle-contain">
                                                    <img src="../assets/images/svg/pending.svg"
                                                        class="img-1 blur-up lazyload" alt="">
                                                    <img src="../assets/images/svg/pending.svg" class="blur-up lazyload"
                                                        alt="">
                                                    <div class="totle-detail">
                                                        <h5>Total Sales</h5>
                                                        <h3>12550</h3>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xxl-4 col-lg-6 col-md-4 col-sm-6">
                                                <div class="totle-contain">
                                                    <img src="../assets/images/svg/wishlist.svg"
                                                        class="img-1 blur-up lazyload" alt="">
                                                    <img src="../assets/images/svg/wishlist.svg"
                                                        class="blur-up lazyload" alt="">
                                                    <div class="totle-detail">
                                                        <h5>Order Pending</h5>
                                                        <h3>36</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row g-4">
                                        <div class="col-xxl-6">
                                            <div class="dashboard-bg-box">
                                                <div id="chart"></div>
                                            </div>
                                        </div>

                                        <div class="col-xxl-6">
                                            <div class="dashboard-bg-box">
                                                <div id="sale"></div>
                                            </div>
                                        </div>

                                        <div class="col-xxl-6">
                                            <div class="table-responsive dashboard-bg-box">
                                                <div class="dashboard-title mb-4">
                                                    <h3>Trending Products</h3>
                                                </div>

                                                <table class="table product-table">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Images</th>
                                                            <th scope="col">Product Name</th>
                                                            <th scope="col">Price</th>
                                                            <th scope="col">Sales</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="product-image">
                                                                <img src="../assets/images/vegetable/product/1.png"
                                                                    class="img-fluid" alt="">
                                                            </td>
                                                            <td>
                                                                <h6>Fantasy Crunchy Choco Chip Cookies</h6>
                                                            </td>
                                                            <td>
                                                                <h6>$25.69</h6>
                                                            </td>
                                                            <td>
                                                                <h6>152</h6>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td class="product-image">
                                                                <img src="../assets/images/vegetable/product/2.png"
                                                                    class="img-fluid" alt="">
                                                            </td>
                                                            <td>
                                                                <h6>Peanut Butter Bite Premium Butter Cookies 600 g</h6>
                                                            </td>
                                                            <td>
                                                                <h6>$35.36</h6>
                                                            </td>
                                                            <td>
                                                                <h6>34</h6>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td class="product-image">
                                                                <img src="../assets/images/vegetable/product/3.png"
                                                                    class="img-fluid" alt="">
                                                            </td>
                                                            <td>
                                                                <h6>Yumitos Chilli Sprinkled Potato Chips 100 g</h6>
                                                            </td>
                                                            <td>
                                                                <h6>$78.55</h6>
                                                            </td>
                                                            <td>
                                                                <h6>78</h6>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td class="product-image">
                                                                <img src="../assets/images/vegetable/product/4.png"
                                                                    class="img-fluid" alt="">
                                                            </td>
                                                            <td>
                                                                <h6>healthy Long Life Toned Milk 1 L</h6>
                                                            </td>
                                                            <td>
                                                                <h6>$32.98</h6>
                                                            </td>
                                                            <td>
                                                                <h6>135</h6>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>

                                        <div class="col-xxl-6">
                                            <div class="order-tab dashboard-bg-box">
                                                <div class="dashboard-title mb-4">
                                                    <h3>Recent Order</h3>
                                                </div>

                                                <div class="table-responsive">
                                                    <table class="table order-table">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">Order ID</th>
                                                                <th scope="col">Product Name</th>
                                                                <th scope="col">Status</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="product-image">#254834</td>
                                                                <td>
                                                                    <h6>Choco Chip Cookies</h6>
                                                                </td>
                                                                <td>
                                                                    <label class="success">Shipped</label>
                                                                </td>
                                                            </tr>

                                                            <tr>
                                                                <td class="product-image">#355678</td>
                                                                <td>
                                                                    <h6>Premium Butter Cookies</h6>
                                                                </td>
                                                                <td>
                                                                    <label class="danger">Pending</label>
                                                                </td>
                                                            </tr>

                                                            <tr>
                                                                <td class="product-image">#647536</td>
                                                                <td>
                                                                    <h6>Sprinkled Potato Chips</h6>
                                                                </td>
                                                                <td>
                                                                    <label class="success">Shipped</label>
                                                                </td>
                                                            </tr>

                                                            <tr>
                                                                <td class="product-image">#125689</td>
                                                                <td>
                                                                    <h6>Milk 1 L</h6>
                                                                </td>
                                                                <td>
                                                                    <label class="danger">Pending</label>
                                                                </td>
                                                            </tr>

                                                            <tr>
                                                                <td class="product-image">#215487</td>
                                                                <td>
                                                                    <h6>Raw Mutton Leg</h6>
                                                                </td>
                                                                <td>
                                                                    <label class="danger">Pending</label>
                                                                </td>
                                                            </tr>

                                                            <tr>
                                                                <td class="product-image">#365474</td>
                                                                <td>
                                                                    <h6>Instant Coffee</h6>
                                                                </td>
                                                                <td>
                                                                    <label class="success">Shipped</label>
                                                                </td>
                                                            </tr>

                                                            <tr>
                                                                <td class="product-image">#368415</td>
                                                                <td>
                                                                    <h6>Jowar Stick and Jowar Chips</h6>
                                                                </td>
                                                                <td>
                                                                    <label class="danger">Pending</label>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="pills-product" role="tabpanel"
                                aria-labelledby="pills-product-tab">
                                <div class="product-tab">
                                    <div class="title">
                                        <h2>All Product</h2>
                                        <span class="title-leaf">
                                            <svg class="icon-width bg-gray">
                                                <use xlink:href="../assets/svg/leaf.svg#leaf"></use>
                                            </svg>
                                        </span>
                                    </div>

                                    <div class="table-responsive dashboard-bg-box">
                                        <table class="table product-table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Images</th>
                                                    <th scope="col">Product Name</th>
                                                    <th scope="col">Price</th>
                                                    <th scope="col">Stock</th>
                                                    <th scope="col">Sales</th>
                                                    <th scope="col">Edit / Delete</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="product-image">
                                                        <img src="../assets/images/vegetable/product/1.png"
                                                            class="img-fluid" alt="">
                                                    </td>
                                                    <td>
                                                        <h6>Fantasy Crunchy Choco Chip Cookies</h6>
                                                    </td>
                                                    <td>
                                                        <h6 class="theme-color fw-bold">$25.69</h6>
                                                    </td>
                                                    <td>
                                                        <h6>63</h6>
                                                    </td>
                                                    <td>
                                                        <h6>152</h6>
                                                    </td>
                                                    <td class="efit-delete">
                                                        <i data-feather="edit" class="edit"></i>
                                                        <i data-feather="trash-2" class="delete"></i>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td class="product-image">
                                                        <img src="../assets/images/vegetable/product/2.png"
                                                            class="img-fluid" alt="">
                                                    </td>
                                                    <td>
                                                        <h6>Peanut Butter Bite Premium Butter Cookies 600 g</h6>
                                                    </td>
                                                    <td>
                                                        <h6 class="theme-color fw-bold">$35.36</h6>
                                                    </td>
                                                    <td>
                                                        <h6>14</h6>
                                                    </td>
                                                    <td>
                                                        <h6>34</h6>
                                                    </td>
                                                    <td class="efit-delete">
                                                        <i data-feather="edit" class="edit"></i>
                                                        <i data-feather="trash-2" class="delete"></i>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td class="product-image">
                                                        <img src="../assets/images/vegetable/product/3.png"
                                                            class="img-fluid" alt="">
                                                    </td>
                                                    <td>
                                                        <h6>Yumitos Chilli Sprinkled Potato Chips 100 g</h6>
                                                    </td>
                                                    <td>
                                                        <h6 class="theme-color fw-bold">$78.55</h6>
                                                    </td>
                                                    <td>
                                                        <h6>55</h6>
                                                    </td>
                                                    <td>
                                                        <h6>78</h6>
                                                    </td>
                                                    <td class="efit-delete">
                                                        <i data-feather="edit" class="edit"></i>
                                                        <i data-feather="trash-2" class="delete"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="product-image">
                                                        <img src="../assets/images/vegetable/product/4.png"
                                                            class="img-fluid" alt="">
                                                    </td>
                                                    <td>
                                                        <h6>healthy Long Life Toned Milk 1 L</h6>
                                                    </td>
                                                    <td>
                                                        <h6 class="theme-color fw-bold">$32.98</h6>
                                                    </td>
                                                    <td>
                                                        <h6>69</h6>
                                                    </td>
                                                    <td>
                                                        <h6>135</h6>
                                                    </td>
                                                    <td class="efit-delete">
                                                        <i data-feather="edit" class="edit"></i>
                                                        <i data-feather="trash-2" class="delete"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="product-image">
                                                        <img src="../assets/images/vegetable/product/5.png"
                                                            class="img-fluid" alt="">
                                                    </td>
                                                    <td>
                                                        <h6>Raw Mutton Leg, Packaging 5 Kg</h6>
                                                    </td>
                                                    <td>
                                                        <h6 class="theme-color fw-bold">$36.98</h6>
                                                    </td>
                                                    <td>
                                                        <h6>35</h6>
                                                    </td>
                                                    <td>
                                                        <h6>154</h6>
                                                    </td>
                                                    <td class="efit-delete">
                                                        <i data-feather="edit" class="edit"></i>
                                                        <i data-feather="trash-2" class="delete"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="product-image">
                                                        <img src="../assets/images/vegetable/product/6.png"
                                                            class="img-fluid" alt="">
                                                    </td>
                                                    <td>
                                                        <h6>Cold Brew Coffee Instant Coffee 50 g</h6>
                                                    </td>
                                                    <td>
                                                        <h6 class="theme-color fw-bold">$36.58</h6>
                                                    </td>
                                                    <td>
                                                        <h6>69</h6>
                                                    </td>
                                                    <td>
                                                        <h6>168</h6>
                                                    </td>
                                                    <td class="efit-delete">
                                                        <i data-feather="edit" class="edit"></i>
                                                        <i data-feather="trash-2" class="delete"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="product-image">
                                                        <img src="../assets/images/vegetable/product/7.png"
                                                            class="img-fluid" alt="">
                                                    </td>
                                                    <td>
                                                        <h6>SnackAmor Combo Pack of Jowar Stick and Jowar Chips</h6>
                                                    </td>
                                                    <td>
                                                        <h6 class="theme-color fw-bold">$25.69</h6>
                                                    </td>
                                                    <td>
                                                        <h6>63</h6>
                                                    </td>
                                                    <td>
                                                        <h6>152</h6>
                                                    </td>
                                                    <td class="efit-delete">
                                                        <i data-feather="edit" class="edit"></i>
                                                        <i data-feather="trash-2" class="delete"></i>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                        <nav class="custome-pagination">
                                            <ul class="pagination justify-content-center">
                                                <li class="page-item disabled">
                                                    <a class="page-link" href="javascript:void(0)" tabindex="-1">
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

                            <div class="tab-pane fade" id="pills-order" role="tabpanel"
                                aria-labelledby="pills-order-tab">
                                <div class="dashboard-order">
                                    <div class="title">
                                        <h2>All Order</h2>
                                        <span class="title-leaf title-leaf-gray">
                                            <svg class="icon-width bg-gray">
                                                <use xlink:href="../assets/svg/leaf.svg#leaf"></use>
                                            </svg>
                                        </span>
                                    </div>

                                    <div class="order-tab dashboard-bg-box">
                                        <div class="table-responsive">
                                            <table class="table order-table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Order ID</th>
                                                        <th scope="col">Product Name</th>
                                                        <th scope="col">Status</th>
                                                        <th scope="col">Price</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="product-image">#254834</td>
                                                        <td>
                                                            <h6>Fantasy Crunchy Choco Chip Cookies</h6>
                                                        </td>
                                                        <td>
                                                            <label class="success">Shipped</label>
                                                        </td>
                                                        <td>
                                                            <h6>$25.69</h6>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td class="product-image">#355678</td>
                                                        <td>
                                                            <h6>Peanut Butter Bite Premium Butter Cookies 600 g</h6>
                                                        </td>
                                                        <td>
                                                            <label class="danger">Pending</label>
                                                        </td>
                                                        <td>
                                                            <h6>$25.69</h6>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td class="product-image">#647536</td>
                                                        <td>
                                                            <h6>Yumitos Chilli Sprinkled Potato Chips 100 g</h6>
                                                        </td>
                                                        <td>
                                                            <label class="success">Shipped</label>
                                                        </td>
                                                        <td>
                                                            <h6>$25.69</h6>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td class="product-image">#125689</td>
                                                        <td>
                                                            <h6>healthy Long Life Toned Milk 1 L</h6>
                                                        </td>
                                                        <td>
                                                            <label class="danger">Pending</label>
                                                        </td>
                                                        <td>
                                                            <h6>$25.69</h6>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td class="product-image">#215487</td>
                                                        <td>
                                                            <h6>Raw Mutton Leg, Packaging 5 Kg</h6>
                                                        </td>
                                                        <td>
                                                            <label class="danger">Pending</label>
                                                        </td>
                                                        <td>
                                                            <h6>$25.69</h6>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td class="product-image">#365474</td>
                                                        <td>
                                                            <h6>Cold Brew Coffee Instant Coffee 50 g</h6>
                                                        </td>
                                                        <td>
                                                            <label class="success">Shipped</label>
                                                        </td>
                                                        <td>
                                                            <h6>$25.69</h6>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td class="product-image">#368415</td>
                                                        <td>
                                                            <h6>SnackAmor Combo Pack of Jowar Stick and Jowar Chips</h6>
                                                        </td>
                                                        <td>
                                                            <label class="danger">Pending</label>
                                                        </td>
                                                        <td>
                                                            <h6>$25.69</h6>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <nav class="custome-pagination">
                                            <ul class="pagination justify-content-center">
                                                <li class="page-item disabled">
                                                    <a class="page-link" href="javascript:void(0)" tabindex="-1">
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

                            <div class="tab-pane fade" id="pills-profile" role="tabpanel"
                                aria-labelledby="pills-profile-tab">
                                <div class="dashboard-profile">
                                    <div class="title">
                                        <h2>My Profile</h2>
                                        <span class="title-leaf">
                                            <svg class="icon-width bg-gray">
                                                <use xlink:href="../assets/svg/leaf.svg#leaf"></use>
                                            </svg>
                                        </span>
                                    </div>

                                    <div class="profile-tab dashboard-bg-box">
                                        <div class="dashboard-title dashboard-flex">
                                            <h3>Profile Name</h3>
                                            <button class="btn btn-sm theme-bg-color text-white" data-bs-toggle="modal"
                                                data-bs-target="#edit-profile">Edit Profile</button>
                                        </div>

                                        <ul>
                                            <li>
                                                <h5>Company Name :</h5>
                                                <h5>Grocery Store</h5>
                                            </li>
                                            <li>
                                                <h5>Email Address :</h5>
                                                <h5>joshuadbass@rhyta.com</h5>
                                            </li>
                                            <li>
                                                <h5>Country / Region :</h5>
                                                <h5>107 Veltri Drive</h5>
                                            </li>

                                            <li>
                                                <h5>Year Established :</h5>
                                                <h5>2022</h5>
                                            </li>

                                            <li>
                                                <h5>Total Employees :</h5>
                                                <h5>154 - 360 People</h5>
                                            </li>
                                            <li>
                                                <h5>Category :</h5>
                                                <h5>Grocery</h5>
                                            </li>

                                            <li>
                                                <h5>Street Address :</h5>
                                                <h5>234 High St</h5>
                                            </li>

                                            <li>
                                                <h5>City / State :</h5>
                                                <h5>107 Veltri Drive</h5>
                                            </li>

                                            <li>
                                                <h5>Zip :</h5>
                                                <h5>B23 6SN</h5>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="pills-security" role="tabpanel"
                                aria-labelledby="pills-security-tab">
                                <div class="dashboard-privacy">
                                    <div class="title">
                                        <h2>My Setting</h2>
                                        <span class="title-leaf">
                                            <svg class="icon-width bg-gray">
                                                <use xlink:href="../assets/svg/leaf.svg#leaf"></use>
                                            </svg>
                                        </span>
                                    </div>

                                    <div class="dashboard-bg-box">
                                        <div class="dashboard-title mb-4">
                                            <h3>Notifications</h3>
                                        </div>

                                        <div class="privacy-box">
                                            <div
                                                class="form-check custom-form-check custom-form-check-2 d-flex align-items-center">
                                                <input class="form-check-input" type="radio" id="desktop" name="desktop"
                                                    checked>
                                                <label class="form-check-label ms-2" for="desktop">Show
                                                    Desktop Notifications</label>
                                            </div>
                                        </div>

                                        <div class="privacy-box">
                                            <div
                                                class="form-check custom-form-check custom-form-check-2 d-flex align-items-center">
                                                <input class="form-check-input" type="radio" id="enable" name="desktop">
                                                <label class="form-check-label ms-2" for="enable">Enable
                                                    Notifications</label>
                                            </div>
                                        </div>

                                        <div class="privacy-box">
                                            <div
                                                class="form-check custom-form-check custom-form-check-2 d-flex align-items-center">
                                                <input class="form-check-input" type="radio" id="activity"
                                                    name="desktop">
                                                <label class="form-check-label ms-2" for="activity">Get
                                                    notification for my own activity</label>
                                            </div>
                                        </div>

                                        <div class="privacy-box">
                                            <div
                                                class="form-check custom-form-check custom-form-check-2 d-flex align-items-center">
                                                <input class="form-check-input" type="radio" id="dnd" name="desktop">
                                                <label class="form-check-label ms-2" for="dnd">DND</label>
                                            </div>
                                        </div>

                                        <button class="btn theme-bg-color btn-md fw-bold mt-4 text-white">Save
                                            Changes</button>
                                    </div>

                                    <div class="dashboard-bg-box">
                                        <div class="dashboard-title mb-4">
                                            <h3>Deactivate Account</h3>
                                        </div>
                                        <div class="privacy-box">
                                            <div
                                                class="form-check custom-form-check custom-form-check-2 d-flex align-items-center">
                                                <input class="form-check-input" type="radio" id="concern"
                                                    name="concern">
                                                <label class="form-check-label ms-2" for="concern">I have a privacy
                                                    concern</label>
                                            </div>
                                        </div>
                                        <div class="privacy-box">
                                            <div
                                                class="form-check custom-form-check custom-form-check-2 d-flex align-items-center">
                                                <input class="form-check-input" type="radio" id="temporary"
                                                    name="concern">
                                                <label class="form-check-label ms-2" for="temporary">This is
                                                    temporary</label>
                                            </div>
                                        </div>
                                        <div class="privacy-box">
                                            <div
                                                class="form-check custom-form-check custom-form-check-2 d-flex align-items-center">
                                                <input class="form-check-input" type="radio" id="other" name="concern">
                                                <label class="form-check-label ms-2" for="other">other</label>
                                            </div>
                                        </div>

                                        <button class="btn theme-bg-color btn-md fw-bold mt-4 text-white">Deactivate
                                            Account</button>
                                    </div>

                                    <div class="dashboard-bg-box">
                                        <div class="dashboard-title mb-4">
                                            <h3>Delete Account</h3>
                                        </div>
                                        <div class="privacy-box">
                                            <div
                                                class="form-check custom-form-check custom-form-check-2 d-flex align-items-center">
                                                <input class="form-check-input" type="radio" id="usable" name="usable">
                                                <label class="form-check-label ms-2" for="usable">No longer
                                                    usable</label>
                                            </div>
                                        </div>
                                        <div class="privacy-box">
                                            <div
                                                class="form-check custom-form-check custom-form-check-2 d-flex align-items-center">
                                                <input class="form-check-input" type="radio" id="account" name="usable">
                                                <label class="form-check-label ms-2" for="account">Want to switch on
                                                    other
                                                    account</label>
                                            </div>
                                        </div>
                                        <div class="privacy-box">
                                            <div
                                                class="form-check custom-form-check custom-form-check-2 d-flex align-items-center">
                                                <input class="form-check-input" type="radio" id="other-2" name="usable">
                                                <label class="form-check-label ms-2" for="other-2">Other</label>
                                            </div>
                                        </div>

                                        <button class="btn theme-bg-color btn-md fw-bold mt-4 text-white">Delete My
                                            Account</button>
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
                <div class="modal-body">
                    <form>
                        <div class="form-floating mb-4 theme-form-floating">
                            <input type="text" class="form-control" id="fname" placeholder="Enter First Name">
                            <label for="fname">First Name</label>
                        </div>
                    </form>

                    <form>
                        <div class="form-floating mb-4 theme-form-floating">
                            <input type="text" class="form-control" id="lname" placeholder="Enter Last Name">
                            <label for="lname">Last Name</label>
                        </div>
                    </form>

                    <form>
                        <div class="form-floating mb-4 theme-form-floating">
                            <input type="email" class="form-control" id="email" placeholder="Enter Email Address">
                            <label for="email">Email Address</label>
                        </div>
                    </form>

                    <form>
                        <div class="form-floating mb-4 theme-form-floating">
                            <textarea class="form-control" placeholder="Leave a comment here" id="address"
                                style="height: 100px"></textarea>
                            <label for="address">Enter Address</label>
                        </div>
                    </form>

                    <form>
                        <div class="form-floating mb-4 theme-form-floating">
                            <input type="email" class="form-control" id="pin" placeholder="Enter Pin Code">
                            <label for="pin">Pin Code</label>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-md" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn theme-bg-color btn-md text-white" data-bs-dismiss="modal">Save
                        changes</button>
                </div>
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
                <div class="modal-body">
                    <div class="row g-4">
                        <div class="col-xxl-12">
                            <form>
                                <div class="form-floating theme-form-floating">
                                    <input type="text" class="form-control" id="pname" value="Jack Jennas">
                                    <label for="pname">Full Name</label>
                                </div>
                            </form>
                        </div>

                        <div class="col-xxl-6">
                            <form>
                                <div class="form-floating theme-form-floating">
                                    <input type="email" class="form-control" id="email1" value="vicki.pope@gmail.com">
                                    <label for="email1">Email address</label>
                                </div>
                            </form>
                        </div>

                        <div class="col-xxl-6">
                            <form>
                                <div class="form-floating theme-form-floating">
                                    <input class="form-control" type="tel" value="4567891234" name="mobile" id="mobile"
                                        maxlength="10" oninput="javascript: if (this.value.length > this.maxLength) this.value =
                                            this.value.slice(0, this.maxLength);">
                                    <label for="mobile">Email address</label>
                                </div>
                            </form>
                        </div>

                        <div class="col-12">
                            <form>
                                <div class="form-floating theme-form-floating">
                                    <input type="text" class="form-control" id="address1"
                                        value="8424 James Lane South San Francisco">
                                    <label for="address1">Add Address</label>
                                </div>
                            </form>
                        </div>

                        <div class="col-12">
                            <form>
                                <div class="form-floating theme-form-floating">
                                    <input type="text" class="form-control" id="address2" value="CA 94080">
                                    <label for="address2">Add Address 2</label>
                                </div>
                            </form>
                        </div>

                        <div class="col-xxl-4">
                            <form>
                                <div class="form-floating theme-form-floating">
                                    <select class="form-select" id="floatingSelect1"
                                        aria-label="Floating label select example">
                                        <option selected>Choose Your Country</option>
                                        <option value="kindom">United Kingdom</option>
                                        <option value="states">United States</option>
                                        <option value="fra">France</option>
                                        <option value="china">China</option>
                                        <option value="spain">Spain</option>
                                        <option value="italy">Italy</option>
                                        <option value="turkey">Turkey</option>
                                        <option value="germany">Germany</option>
                                        <option value="russian">Russian Federation</option>
                                        <option value="malay">Malaysia</option>
                                        <option value="mexico">Mexico</option>
                                        <option value="austria">Austria</option>
                                        <option value="hong">Hong Kong SAR, China</option>
                                        <option value="ukraine">Ukraine</option>
                                        <option value="thailand">Thailand</option>
                                        <option value="saudi">Saudi Arabia</option>
                                        <option value="canada">Canada</option>
                                        <option value="singa">Singapore</option>
                                    </select>
                                    <label for="floatingSelect">Country</label>
                                </div>
                            </form>
                        </div>

                        <div class="col-xxl-4">
                            <form>
                                <div class="form-floating theme-form-floating">
                                    <select class="form-select" id="floatingSelect">
                                        <option selected>Choose Your City</option>
                                        <option value="kindom">India</option>
                                        <option value="states">Canada</option>
                                        <option value="fra">Dubai</option>
                                        <option value="china">Los Angeles</option>
                                        <option value="spain">Thailand</option>
                                    </select>
                                    <label for="floatingSelect">City</label>
                                </div>
                            </form>
                        </div>

                        <div class="col-xxl-4">
                            <form>
                                <div class="form-floating theme-form-floating">
                                    <input type="text" class="form-control" id="address3" value="94080">
                                    <label for="address3">Pin Code</label>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-animation btn-md fw-bold"
                        data-bs-dismiss="modal">Close</button>
                    <button type="button" data-bs-dismiss="modal"
                        class="btn theme-bg-color btn-md fw-bold text-light">Save changes</button>
                </div>
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
                        <p>The permission for the use/group, preview is inherited from the object, object will create a
                            new permission for this object</p>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-animation btn-md fw-bold" data-bs-dismiss="modal">No</button>
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

    <!-- Edit Profile Modal Start -->
    <div class="modal fade theme-modal" id="edit-profile" tabindex="-1" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel3">Edit Your Profile</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <i class="fa-solid fa-xmark"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="companyName" class="form-label">Company Name</label>
                            <input type="text" class="form-control" id="companyName" value="Grocery Store">
                        </div>
                        <div class="mb-3">
                            <label for="emailAddress" class="form-label">Email Address</label>
                            <input type="email" class="form-control" id="emailAddress" value="joshuadbass@rhyta.com">
                        </div>
                        <div class="mb-3">
                            <label for="country" class="form-label">Country / Region</label>
                            <input type="text" class="form-control" id="country" value="107 Veltri Drive">
                        </div>
                        <div class="mb-3">
                            <label for="established" class="form-label">Year Established</label>
                            <input type="email" class="form-control" id="established" value="2022">
                        </div>
                        <div class="mb-3">
                            <label for="employees" class="form-label">Total Employees</label>
                            <input type="text" class="form-control" id="employees" value="154 - 360 People">
                        </div>
                        <div class="mb-3">
                            <label for="category" class="form-label">Category</label>
                            <input type="email" class="form-control" id="category" value="Grocery">
                        </div>
                        <div class="mb-3">
                            <label for="street" class="form-label">Street Address</label>
                            <input type="text" class="form-control" id="street" value="234 High St">
                        </div>
                        <div class="mb-3">
                            <label for="city" class="form-label">City / State</label>
                            <input type="email" class="form-control" id="city" value="107 Veltri Drive">
                        </div>
                        <div class="mb-3">
                            <label for="zip" class="form-label">Zip</label>
                            <input type="text" class="form-control" id="zip" value="B23 6SN">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-animation btn-md fw-bold"
                        data-bs-dismiss="modal">Cancle</button>
                    <button type="button" class="btn theme-bg-color btn-md fw-bold text-light"
                        data-bs-dismiss="modal">Save</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Edit Profile Modal End -->

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
    <script src="../assets/js/slick/custom_slick.js"></script>

    <!-- Apexchart Js -->
    <script src="../assets/js/apexchart.js"></script>
    <script src="../assets/js/custom-chart.js"></script>

    <!-- Nav & tab upside js -->
    <script src="../assets/js/nav-tab.js"></script>

    <!-- script js -->
    <script src="../assets/js/script.js"></script>
</body>

</html>