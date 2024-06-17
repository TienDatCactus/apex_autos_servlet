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
        <title>Checkout</title>

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
                                                new offers/gift every day on Weekends.<strong class="ms-1">New Coupon Code: niggaWhat!
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
                                        <button class="btn dropdown-toggle" type="button" id="select-language" data-bs-toggle="dropdown"
                                                aria-expanded="false">
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/country/united-states.png" class="img-fluid blur-up lazyload"
                                                 alt="" />
                                            <span>English</span>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="select-language">
                                            <li>
                                                <a class="dropdown-item" href="javascript:void(0)" id="english">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/country/united-kingdom.png" class="img-fluid blur-up lazyload"
                                                         alt="" />
                                                    <span>English</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" href="javascript:void(0)" id="chinese">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/country/vn.png" class="img-fluid blur-up lazyload" alt="" />
                                                    <span>Viet Nam</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="right-nav-list">
                                    <div class="dropdown theme-form-select">
                                        <button class="btn dropdown-toggle" type="button" id="select-dollar" data-bs-toggle="dropdown"
                                                aria-expanded="false">
                                            <span>USD</span>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end sm-dropdown-menu" aria-labelledby="select-dollar">
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
                                <a href="home" class="web-logo nav-logo">
                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/logo/1.png" class="img-fluid blur-up lazyload" alt="" />
                                </a>

                                <div class="middle-box">
                                    <div class="location-box" style="background-color: #acacac;">
                                        <button class="btn location-button" data-bs-toggle="modal" data-bs-target="#locationModal">
                                            <span class="location-arrow">
                                                <i data-feather="map-pin"></i>
                                            </span>
                                            <span class="locat-name" style="text-decoration: line-through;color: #5e5e5e;">Your
                                                Location</span>
                                            <i class="fa-solid fa-angle-down"></i>
                                        </button>
                                    </div>

                                    <div class="search-box">
                                        <div class="input-group">
                                            <input type="search" class="form-control" placeholder="I'm searching for..."
                                                   aria-label="Recipient's username" aria-describedby="button-addon2" />
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
                                            <input type="text" class="form-control search-type" placeholder="Search here.." />
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
                                                            <a class="dropdown-item " href="shop-category-slider.html">Shop Category Slider</a>
                                                        </li>

                                                    </ul>
                                                </li>


                                                <li class="nav-item dropdown dropdown-mega button-39">
                                                    <a class="nav-link dropdown-toggle ps-xl-2 ps-0" href="javascript:void(0)"
                                                       data-bs-toggle="dropdown">Cars</a>

                                                    <div class="dropdown-menu dropdown-menu-2 my-2">
                                                        <div class="row">
                                                            <div class="dropdown-column col-xl-3">
                                                                <h5 class="dropdown-header">
                                                                    Daily Vegetables
                                                                </h5>
                                                                <a class="dropdown-item" href="shop-left-sidebar.html">Beans & Brinjals</a>

                                                            </div>

                                                            <div class="dropdown-column col-xl-3">
                                                                <h5 class="dropdown-header">Baby Tender</h5>
                                                                <a class="dropdown-item" href="shop-left-sidebar.html">Beans & Brinjals</a>

                                                            </div>

                                                            <div class="dropdown-column col-xl-3">
                                                                <h5 class="dropdown-header">
                                                                    Exotic Vegetables
                                                                </h5>
                                                                <a class="dropdown-item" href="shop-left-sidebar.html">Asparagus & Artichokes</a>


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
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="header-nav-right">
                                <button class="btn deal-button" data-bs-toggle="modal" data-bs-target="#deal-box"
                                        style="background-color: #acacac;color: #5e5e5e;text-decoration: line-through;">
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
                            <h2>Checkout</h2>
                            <nav>
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item">
                                        <a href="index.html">
                                            <i class="fa-solid fa-house"></i>
                                        </a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Checkout</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Checkout section Start -->
        <section class="checkout-section-2 section-b-space">
            <div class="container-fluid-lg">
                <div class="row g-sm-4 g-3">
                    <div class="col-lg-8">
                        <div class="left-sidebar-checkout">
                            <div class="checkout-detail-box">
                                <ul>
                                    <li>
                                        <div class="checkout-icon">
                                            <lord-icon target=".nav-item" src="https://cdn.lordicon.com/ggihhudh.json"
                                                       trigger="loop-on-hover"
                                                       colors="primary:#121331,secondary:#646e78,tertiary:#0baf9a"
                                                       class="lord-icon">
                                            </lord-icon>
                                        </div>
                                        <div class="checkout-box">
                                            <div class="checkout-title">
                                                <h4>Delivery Address</h4>
                                            </div>

                                            <div class="checkout-detail">
                                                <div class="row g-4">
                                                    <div class="col-xxl-6 col-lg-12 col-md-6">
                                                        <div class="delivery-address-box">
                                                            <div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" name="jack"
                                                                           id="flexRadioDefault1">
                                                                </div>

                                                                <div class="label">
                                                                    <label>Home</label>
                                                                </div>

                                                                <ul class="delivery-address-detail">
                                                                    <li>
                                                                        <h4 class="fw-500">Jack Jennas</h4>
                                                                    </li>

                                                                    <li>
                                                                        <p class="text-content"><span
                                                                                class="text-title">Address
                                                                                : </span>8424 James Lane South San
                                                                            Francisco, CA 94080</p>
                                                                    </li>

                                                                    <li>
                                                                        <h6 class="text-content"><span
                                                                                class="text-title">Pin Code
                                                                                :</span> +380</h6>
                                                                    </li>

                                                                    <li>
                                                                        <h6 class="text-content mb-0"><span
                                                                                class="text-title">Phone
                                                                                :</span> + 380 (0564) 53 - 29 - 68</h6>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-xxl-6 col-lg-12 col-md-6">
                                                        <div class="delivery-address-box">
                                                            <div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" name="jack"
                                                                           id="flexRadioDefault2" checked="checked">
                                                                </div>

                                                                <div class="label">
                                                                    <label>Office</label>
                                                                </div>

                                                                <ul class="delivery-address-detail">
                                                                    <li>
                                                                        <h4 class="fw-500">Jack Jennas</h4>
                                                                    </li>

                                                                    <li>
                                                                        <p class="text-content"><span
                                                                                class="text-title">Address
                                                                                :</span>Nakhimovskiy R-N / Lastovaya Ul.,
                                                                            bld. 5/A, appt. 12
                                                                        </p>
                                                                    </li>

                                                                    <li>
                                                                        <h6 class="text-content"><span
                                                                                class="text-title">Pin Code :</span>
                                                                            +380</h6>
                                                                    </li>

                                                                    <li>
                                                                        <h6 class="text-content mb-0"><span
                                                                                class="text-title">Phone
                                                                                :</span> + 380 (0564) 53 - 29 - 68</h6>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="checkout-icon">
                                            <lord-icon target=".nav-item" src="https://cdn.lordicon.com/qmcsqnle.json"
                                                       trigger="loop-on-hover" colors="primary:#0baf9a,secondary:#0baf9a"
                                                       class="lord-icon">
                                            </lord-icon>
                                        </div>
                                        <div class="checkout-box">
                                            <div class="checkout-title">
                                                <h4>Payment Option</h4>
                                            </div>

                                            <div class="checkout-detail">
                                                <div class="accordion accordion-flush custom-accordion"
                                                     id="accordionFlushExample">




                                                    <div class="accordion-item">
                                                        <div class="accordion-header" id="flush-headingTwo">
                                                            <div class="accordion-button collapsed"
                                                                 data-bs-toggle="collapse"
                                                                 data-bs-target="#flush-collapseTwo">
                                                                <div class="custom-form-check form-check mb-0">
                                                                    <label class="form-check-label" for="banking"><input
                                                                            class="form-check-input mt-0" type="radio"
                                                                            name="flexRadioDefault" id="banking" checked>VNPay</label>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <form id="frmCreateOrder" action="${pageContext.request.contextPath}/vnpayajax" method="post">
                            <input type="hidden" id="totalAmount" name="amount" value="">
                            <div class="right-side-summery-box">
                                <div class="summery-box-2">
                                    <div class="summery-header">
                                        <h3>Order Summery</h3>
                                    </div>

                                    <ul class="summery-contain">
                                        <c:forEach var="ci" items="${cartItems}">
                                            <li>
                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/1.png"
                                                     class="img-fluid blur-up lazyloaded checkout-image" alt="">
                                                <h4>${ci.car.name}<span>X 1</span></h4>
                                                <h4 id="pricee" class="price">${ci.car.price}</h4>
                                            </li>
                                        </c:forEach>

                                    </ul>

                                    <ul class="summery-total">
                                        <li>
                                            <h4>Subtotal</h4>
                                            <h4 id="Subtotal" class="price">$111.81</h4>
                                        </li>

                                        <li>
                                            <h3 class="price">FreeShip</h3>
                                        </li>
                                        <li class="list-total">
                                            <h4>Total (USD)</h4>
                                            <h4 id="priceTotal" class="price">$19.28</h4>
                                        </li>
                                    </ul>
                                </div>

                                <button class="btn theme-bg-color text-white btn-md w-100 mt-4 fw-bold">Place Order</button>
                            </div></form>
                    </div>


                </div>
            </div>
        </section>
        <!-- Checkout section End -->

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
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/playstore.svg" class="blur-up lazyload" alt="" />
                                                </a>
                                            </li>
                                            <li class="mb-0">
                                                <a href="https://www.apple.com/in/app-store/" target="_blank">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/appstore.svg" class="blur-up lazyload" alt="" />
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

        <!--         Location Modal Start 
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
                </div>-->
        <!-- Location Modal End -->

        <!--         Add address modal box start 
                <div class="modal fade theme-modal" id="add-address" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel1">Add a new address</h5>
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
                 Add address modal box end 
        
                 Deal Box Modal Start 
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
                 Deal Box Modal End -->

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

        <!-- Lordicon Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/lusqsztk.js"></script>

        <!-- Bootstrap js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/bootstrap-notify.min.js"></script>

        <!-- feather icon js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/feather/feather.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/feather/feather-icon.js"></script>

        <!-- Lazyload Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/lazysizes.min.js"></script>

        <!-- Delivery Option js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/delivery-option.js"></script>

        <!-- Slick js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/slick.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/custom_slick.js"></script>

        <!-- Quantity js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/quantity.js"></script>

        <!-- script js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/script.js"></script>
        <script>
            window.onload = updateSubTotal();
            function updateSubTotal() {
                let totalPriceOfEachProduct = document.querySelectorAll('h4#pricee');
                let totalCart = 0;
                totalPriceOfEachProduct.forEach(e => {
                    let totalPrice = parseFloat(e.textContent.trim());
                    totalCart += totalPrice;
                });
                document.querySelector('#Subtotal').innerHTML = totalCart;
                document.querySelector('#priceTotal').innerHTML = totalCart;
                document.querySelector('#totalAmount').value = totalCart;
            }


        </script>
        <script type="text/javascript">
            $("#frmCreateOrder").submit(function (e) {
                e.preventDefault(); // Prevent the form from submitting the default way
                var postData = $(this).serialize();
                var submitUrl = $(this).attr("action");
                $.ajax({
                    type: "POST",
                    url: submitUrl,
                    data: postData,
                    dataType: 'JSON',
                    success: function (x) {
                        if (x.code === '00') {
                            if (window.vnpay) {
                                vnpay.open({width: 768, height: 600, url: x.data});
                            } else {
                                location.href = x.data;
                            }
                        } else {
                            alert(x.message);
                        }
                    }
                });
            });
        </script>
    </body>

</html>