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
        <jsp:include page="header.jsp"></jsp:include>

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
                    <a href="cart">
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
                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/banner/mercedes-g-wagon-usa-yl.jpg"
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
                                                    <input type="search" id="searchBox" class="form-control"
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
        <section class="section-b-space shop-section">
            <div class="container-fluid-lg">
                <div class="row">
                    <div class="col-custome-3">
                        <div class="left-box wow fadeInUp">
                            <div class="shop-left-sidebar">
                                <div class="back-button">
                                    <h3><i class="fa-solid fa-arrow-left"></i> Back</h3>
                                </div>

                                <div class="filter-category">
                                    <div class="filter-title">
                                        <h2>Filters</h2>
                                        <a href="javascript:void(0)">Clear All</a>
                                    </div>
                                    <div class="form-floating theme-form-floating-2 search-box">
                                        <input type="search" class="form-control" id="search"
                                               placeholder="Search ..">
                                        <label for="search">Search</label>
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


                                                <ul class="category-list custom-padding custom-height">
                                                    <c:forEach var="cc" items="${carCate}">
                                                        <li>
                                                            <div class="form-check ps-0 m-0 category-list-box">
                                                                <input class="checkbox_animated" type="checkbox" id="cate-${cc.id}">
                                                                <label class="form-check-label" for="cate-${cc.id}">
                                                                    <span class="name">${cc.name}</span>
                                                                    <span class="number">(15)</span>
                                                                </label>
                                                            </div>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingTwo">
                                            <button class="accordion-button collapsed" type="button"
                                                    data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                                    aria-expanded="false" aria-controls="collapseTwo">
                                                <span>Brands</span>
                                            </button>
                                        </h2>
                                        <div id="collapseTwo" class="accordion-collapse collapse show"
                                             aria-labelledby="headingTwo">
                                            <div class="accordion-body">
                                                <ul class="category-list custom-padding custom-height">
                                                    <c:forEach var="cb" items="${carBrand}">
                                                        <li>
                                                            <div class="form-check ps-0 m-0 category-list-box">
                                                                <input class="checkbox_animated" type="checkbox" id="brand-${cb.id}">
                                                                <label class="form-check-label" for="brand-${cb.id}">
                                                                    <span class="name">${cb.name}</span>
                                                                    <span class="number">(09)</span>
                                                                </label>
                                                            </div>
                                                        </li>
                                                    </c:forEach>
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
                                            <div class="accordion-body py-0">
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
                                        <h2 class="accordion-header" id="headingFive">
                                            <button class="accordion-button collapsed" type="button"
                                                    data-bs-toggle="collapse" data-bs-target="#collapseFive"
                                                    aria-expanded="false" aria-controls="collapseFive">
                                                <span>Cylinders</span>
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
                                                                <span class="name">4</span>
                                                                <span class="number">(05)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault6">
                                                            <label class="form-check-label" for="flexCheckDefault6">
                                                                <span class="name">6</span>
                                                                <span class="number">(02)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault7">
                                                            <label class="form-check-label" for="flexCheckDefault7">
                                                                <span class="name">8</span>
                                                                <span class="number">(04)</span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="form-check ps-0 m-0 category-list-box">
                                                            <input class="checkbox_animated" type="checkbox"
                                                                   id="flexCheckDefault8">
                                                            <label class="form-check-label" for="flexCheckDefault8">
                                                                <input type="number" class="js-range-slider" value="" placeholder="Custom">
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

                    <div class="col-custome-9">
                        <div class="show-button">
                            <div class="filter-button-group mt-0">
                                <div class="filter-button d-inline-block d-lg-none">
                                    <a><i class="fa-solid fa-filter"></i> Filter Menu</a>
                                </div>
                            </div>

                            <div class="top-filter-menu">
                                <div class="category-dropdown">
                                    <h5 class="text-content">Sort By :</h5>
                                    <div class="dropdown">
                                        <button class="dropdown-toggle" type="button" id="dropdownMenuButton1"
                                                data-bs-toggle="dropdown">
                                            <span>Most Popular</span> <i class="fa-solid fa-angle-down"></i>
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                            <li>
                                                <a class="dropdown-item" id="pop" href="javascript:void(0)">Popularity</a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" id="low" href="javascript:void(0)">Low - High
                                                    Price</a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" id="high" href="javascript:void(0)">High - Low
                                                    Price</a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" id="rating" href="javascript:void(0)">Average
                                                    Rating</a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" id="aToz" href="javascript:void(0)">A - Z Order</a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" id="zToa" href="javascript:void(0)">Z - A Order</a>
                                            </li>
                                            <li>
                                                <a class="dropdown-item" id="off" href="javascript:void(0)">% Off - Hight To
                                                    Low</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="grid-option d-none d-md-block">
                                    <ul>
                                        <li class="three-grid">
                                            <a href="javascript:void(0)">
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/grid-3.svg" class="blur-up lazyload" alt="">
                                            </a>
                                        </li>
                                        <li class="grid-btn d-xxl-inline-block d-none">
                                            <a href="javascript:void(0)">
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/grid-4.svg"
                                                     class="blur-up lazyload d-lg-inline-block d-none" alt="">
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/grid.svg"
                                                     class="blur-up lazyload img-fluid d-lg-none d-inline-block" alt="">
                                            </a>
                                        </li>
                                        <li class="list-btn active">
                                            <a href="javascript:void(0)">
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/list.svg" class="blur-up lazyload" alt="">
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div
                            class="row g-sm-4 g-3 row-cols-xxl-4 row-cols-xl-3 row-cols-lg-2 row-cols-md-3 row-cols-2 product-list-section list-style">
                            <c:forEach var="cl" items="${carList}">
                                <div data-name="${cl.name}" class="car-card">
                                    <div class="product-box-3 h-100 wow fadeInUp">
                                        <div class="product-header">
                                            <div class="product-image p-1 mb-2 ">
                                                <a href="home?state=detail&id=${cl.car_id}&idSeller=${cl.seller_id}">
                                                    <c:set var="firstImagePrinted" value="false" />
                                                    <c:forEach items="${carImage}" var="ci">
                                                        <c:if test="${ci.car_id == cl.car_id}">
                                                            <c:forEach items="${ci.image_url}" var="obj">
                                                                <c:if test="${not firstImagePrinted}">
                                                                    <img src="${obj}" alt="Car Image" class="img-fluid blur-up lazyload rounded"  style="object-fit: cover;max-width:100%; max-height: 100%;">
                                                                    <c:set var="firstImagePrinted" value="true" />
                                                                </c:if>
                                                            </c:forEach>
                                                        </c:if> 
                                                    </c:forEach>

                                                </a>

                                                <ul class="product-option">
                                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">
                                                        <a href="javascript:void(0)" data-bs-toggle="modal"
                                                           data-bs-target="#view">
                                                            <i data-feather="eye"></i>
                                                        </a>
                                                    </li>

                                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">
                                                        <a href="compare.html">
                                                            <i data-feather="refresh-cw"></i>
                                                        </a>
                                                    </li>

                                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">
                                                        <a href="wishlist.html" class="notifi-wishlist">
                                                            <i data-feather="heart"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-footer">
                                            <div class="product-detail">
                                                <c:forEach var="cb" items="${carBrand}">
                                                    <c:if test="${cb.id == cl.brand_id}">
                                                        <span class="span-name">${cb.name}</span>
                                                    </c:if>
                                                </c:forEach>
                                                <a href="product-left-thumbnail.html">
                                                    <h5 class="name">${cl.name}</h5>
                                                </a>
                                                <p class="text-content mt-1 mb-2 product-content">${cl.description}</p>
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
                                                <h6 class="unit">${cl.model_year}</h6>
                                                <h5 class="price"><span class="theme-color">$${cl.price}</span> <del>$${cl.price + 100000}</del>
                                                </h5>
                                                <div class="add-to-cart-box bg-white">
                                                    <c:if test="${not empty sessionScope.user}">
                                                        <form method="post" id="form-cart-${cl.car_id}" action="home?state=cart&action=addtocart&item=${cl.car_id}">
                                                            <button class="btn btn-add-cart addcart-button"  onclick="document.getElementById('form-cart-${cl.car_id}').submit()">Add
                                                            </button>
                                                        </form>
                                                    </c:if>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </c:forEach>

                        </div>

                        <nav class="custome-pagination">
                            <ul class="d-flex justify-content-center pagination-md">
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
                        </nav>
                    </div>
                </div>
            </div>
        </section>



        <!-- Footer Section Start -->
         <jsp:include page="footer.jsp"></jsp:include>
        <!-- Footer Section End -->



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
                    <img src="${pageContext.request.contextPath}/front-end/assets/images/cookie-bar.png"
                         class="blur-up lazyload" alt="">
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
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/10.png"
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
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/11.png"
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
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/12.png"
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
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/13.png"
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
        <script src="${pageContext.request.contextPath}/front-end/assets/js/jquery-3.6.0.min.js"></script>

        <!-- jquery ui-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/jquery-ui.min.js"></script>

        <!-- Bootstrap js-->
        <script
        src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/bootstrap.bundle.min.js"></script>
        <script
        src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/bootstrap-notify.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/popper.min.js"></script>

        <!-- feather icon js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/feather/feather.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/feather/feather-icon.js"></script>

        <!-- Lazyload Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/lazysizes.min.js"></script>

        <!-- Slick js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/slick.js"></script>
        <script
        src="${pageContext.request.contextPath}/front-end/assets/js/slick/slick-animation.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/custom_slick.js"></script>

        <!-- Auto Height Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/auto-height.js"></script>

        <!-- Fly Cart Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/fly-cart.js"></script>

        <!-- Quantity js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/quantity-2.js"></script>

        <!-- WOW js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/wow.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/custom-wow.js"></script>

        <!-- script js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/script.js"></script>

        <script>
                                                                document.getElementById('searchBox').addEventListener('keyup', function () {
                                                                    let filter = this.value.toLowerCase();
                                                                    let carCards = document.querySelectorAll('.car-card');

                                                                    carCards.forEach(function (card) {
                                                                        let carName = card.getAttribute('data-name').toLowerCase();
                                                                        if (carName.includes(filter)) {
                                                                            card.style.display = 'block';
                                                                        } else {
                                                                            card.style.display = 'none';
                                                                        }
                                                                    });
                                                                });
        </script>
    </body>

</html>