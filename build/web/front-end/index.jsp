<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
        <style>
            .hidden {
                display: none;
            }
            .feature-icon {
                width: 4rem;
                height: 4rem;
                border-radius: 0.75rem;
            }

            .icon-square {
                width: 3rem;
                height: 3rem;
                border-radius: 0.75rem;
            }

            .text-shadow-1 {
                text-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.25);
            }
            .text-shadow-2 {
                text-shadow: 0 0.25rem 0.5rem rgba(0, 0, 0, 0.25);
            }
            .text-shadow-3 {
                text-shadow: 0 0.5rem 1.5rem rgba(0, 0, 0, 0.25);
            }

            .card-cover {
                background-repeat: no-repeat;
                background-position: center center;
                background-size: cover;
            }

            .feature-icon-small {
                width: 3rem;
                height: 3rem;
            }

            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }

            .b-example-divider {
                width: 100%;
                height: 3rem;
                background-color: rgba(0, 0, 0, 0.1);
                border: solid rgba(0, 0, 0, 0.15);
                border-width: 1px 0;
                box-shadow: inset 0 0.5em 1.5em rgba(0, 0, 0, 0.1),
                    inset 0 0.125em 0.5em rgba(0, 0, 0, 0.15);
            }

            .b-example-vr {
                flex-shrink: 0;
                width: 1.5rem;
                height: 100vh;
            }

            .bi {
                vertical-align: -0.125em;
                fill: currentColor;
            }

            .nav-scroller {
                position: relative;
                z-index: 2;
                height: 2.75rem;
                overflow-y: hidden;
            }

            .nav-scroller .nav {
                display: flex;
                flex-wrap: nowrap;
                padding-bottom: 1rem;
                margin-top: -1px;
                overflow-x: auto;
                text-align: center;
                white-space: nowrap;
                -webkit-overflow-scrolling: touch;
            }

            .btn-bd-primary {
                --bd-violet-bg: #712cf9;
                --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

                --bs-btn-font-weight: 600;
                --bs-btn-color: var(--bs-white);
                --bs-btn-bg: var(--bd-violet-bg);
                --bs-btn-border-color: var(--bd-violet-bg);
                --bs-btn-hover-color: var(--bs-white);
                --bs-btn-hover-bg: #6528e0;
                --bs-btn-hover-border-color: #6528e0;
                --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
                --bs-btn-active-color: var(--bs-btn-hover-color);
                --bs-btn-active-bg: #5a23c8;
                --bs-btn-active-border-color: #5a23c8;
            }

            .bd-mode-toggle {
                z-index: 1500;
            }

            .bd-mode-toggle .dropdown-menu .active .bi {
                display: block !important;
            }
        </style>
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
                        <a href="home">
                            <i class="iconly-Home icli"></i>
                            <span>Trang chủ</span>
                        </a>
                    </li>

                    <li class="mobile-category">
                        <a href="${pageContext.request.contextPath}/${user.permission_id == 3 ? "user" : (user.permission_id == 2 ? "seller" : (user.permission_id == 1 ? "admin" : ""))  }/dashboard">
                        <i class="iconly-Category icli js-link"></i>
                        <span>${user.permission_id == 3 ? "Hồ sơ" : "Điều khiển"}</span>
                    </a>
                </li>

                <li>
                    <a class="search-box" href="${pageContext.request.contextPath}/home?state=cart&user=${user.user_id}">
                        <i class="iconly-Search icli"></i>
                        <span>Giỏ hàng</span>
                    </a>
                </li>


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
                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/logo/mercedes-g-wagon-usa-yl.jpg"
                                         class="img-fluid bg-img blur-up lazyload bg-to" alt="banner">
                                    <div
                                        class="home-detail p-center text-center home-overlay position-relative">
                                        <div>
                                            <div class="content ">
                                                <h1 class="text-light">Tìm kiếm chiếc xe mơ ước của bạn tại đây</h1>
                                                <h3 class="text-light">Khám phá vô vàn mẫu mã và đưa ra lựa chọn trong hôm nay</h3>
                                                <div class="search-box">
                                                    <input type="search" id="searchBox" class="form-control"
                                                           placeholder="Bạn đang tìm kiếm ..."
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
                            <div class="shop-left-sidebar custom-height" style="padding-right: 20px;max-height: 860px">
                                <div class="back-button">
                                    <h3><i class="fa-solid fa-arrow-left"></i>Quay lại</h3>
                                </div>

                                <div class="filter-category">
                                    <div class="filter-title">
                                        <h2>Bộ lọc</h2>
                                        <a href="javascript:void(0)" id="resetFilters">Xóa tất cả</a>

                                    </div>
                                    <div class="form-floating theme-form-floating-2 search-box">
                                        <input type="search" class="form-control" id="searchProp"
                                               placeholder="Search ...">
                                        <label for="searchProp">Tìm kiếm</label>
                                    </div>
                                </div>

                                <div class="accordion custome-accordion" id="accordionExample">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingOne">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapseOne" aria-expanded="true"
                                                    aria-controls="collapseOne">
                                                <span>Kiểu loại</span>
                                            </button>
                                        </h2>
                                        <div id="collapseOne" class="accordion-collapse collapse show"
                                             aria-labelledby="headingOne">
                                            <div class="accordion-body">


                                                <ul class="category-list custom-padding custom-height">
                                                    <c:forEach var="cc" items="${carCate}">
                                                        <li class="cateItems" data-name="${cc.name}">
                                                            <div class="form-check ps-0 m-0 category-list-box">
                                                                <input class="checkbox_animated" type="checkbox" id="cate-${cc.id}" data-cate-id="${cc.id}">
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
                                                <span>Nhãn hàng</span>
                                            </button>
                                        </h2>
                                        <div id="collapseTwo" class="accordion-collapse collapse show"
                                             aria-labelledby="headingTwo">
                                            <div class="accordion-body">
                                                <ul class="category-list custom-padding custom-height">
                                                    <c:forEach var="cb" items="${carBrand}">
                                                        <li class="brandItems" data-name="${cb.name}">
                                                            <div class="form-check ps-0 m-0 category-list-box">
                                                                <input class="checkbox_animated" type="checkbox" id="brand-${cb.id}" data-brand-id="${cb.id}">
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
                                                <span>Nguồn gốc</span>
                                            </button>
                                        </h2>
                                        <div id="collapseThree" class="accordion-collapse collapse show"
                                             aria-labelledby="headingThree">
                                            <div class="accordion-body py-0">
                                                <div class="range-slider">
                                                    <input type="text" style="    margin-top: 15px;
                                                           padding: 10px;
                                                           border-radius: 5px;
                                                           border: 1px solid #ddd;
                                                           color: #222;
                                                           width: 100%;" placeholder="USA , ..."  id="originInput" >
                                                    <ul class="dropdown-menu" id="originInputDropdown"></ul>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingThree">
                                            <button class="accordion-button collapsed" type="button"
                                                    data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                                    aria-expanded="false" aria-controls="collapseThree">
                                                <span>Giá</span>
                                            </button>
                                        </h2>
                                        <div id="collapseThree" class="accordion-collapse collapse show"
                                             aria-labelledby="headingThree">
                                            <div class="accordion-body">
                                                <div class="range-slider">
                                                    <input type="text" id="priceInput" class="js-range-slider disabled" value="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>  

                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingThree">
                                            <button class="accordion-button collapsed" type="button"
                                                    data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                                    aria-expanded="false" aria-controls="collapseThree">
                                                <span>Năm sản xuất</span>
                                            </button>
                                        </h2>
                                        <div id="collapseThree" class="accordion-collapse collapse show "
                                             aria-labelledby="headingThree">
                                            <div class="accordion-body py-0">
                                                <div class="range-slider">
                                                    <input type="date" style="    margin-top: 15px;
                                                           padding: 10px;
                                                           border-radius: 5px;
                                                           border: 1px solid #ddd;
                                                           color: #222;
                                                           width: 100%;" 
                                                           id="yearStartInput">
                                                </div>
                                            </div>
                                            <div class="position-relative" style="top:8px">đến</div>
                                            <div class="accordion-body py-0">
                                                <div class="range-slider">
                                                    <input type="date" style="    margin-top: 15px;
                                                           padding: 10px;
                                                           border-radius: 5px;
                                                           border: 1px solid #ddd;
                                                           color: #222;
                                                           width: 100%;" 
                                                           id="yearEndInput">
                                                </div>
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
                                    <a style="cursor: pointer"><i class="fa-solid fa-filter"></i> Filter Menu</a>
                                </div>
                            </div>
                            <div class="top-filter-menu">
                                <div class="category-dropdown">
                                    
                                </div>

                                <div class="grid-option d-none d-md-block">
                                    <ul>
                                        <li class="three-grid">
                                            <a href="javascript:void(0)">
                                                <img src="${pageContext.request.contextPath}/front-end/assets/svg/grid-3.svg" class="blur-up lazyload" alt="">
                                            </a>
                                        </li>
                                        <li class="grid-btn d-xxl-inline-block d-none active">
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
                            class="row g-sm-4 g-3 row-cols-xxl-4 row-cols-xl-3 row-cols-lg-2 row-cols-md-3 row-cols-2 product-list-section list-style">
                            <c:choose>
                                <c:when test="${empty carList}">
                                    <div class="alert alert-danger " style="font-size:32px; text-align: center" role="alert">
                                        Sorry there's currently no product available !
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="cl" items="${carList}">
                                        <c:forEach var="cb" items="${carBrand}">
                                            <c:if test="${cb.id == cl.brand_id}">
                                                <c:set var="brandName" value="${cb.name}" />
                                            </c:if>
                                        </c:forEach>
                                        <c:forEach var="cc" items="${carCate}">
                                            <c:if test="${cc.id == cl.category_id}">
                                                <c:set var="cateName" value="${cc.name}" />
                                            </c:if>
                                        </c:forEach>
                                        <div data-name="${cl.name}" data-brand="${brandName}" data-cate="${cateName}" data-year="${cl.model_year}" data-price="${cl.price}" data-origin="${cl.origin}" class="car-card">
                                            <div class="product-box-3 h-100 wow fadeInUp">
                                                <div class="product-header">
                                                    <div class="product-image p-1 my-2 ">
                                                        <a href="${pageContext.request.contextPath}/home?state=detail&id=${cl.car_id}&idSeller=${cl.seller_id}" class='copy-ele-${cl.car_id}'>
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
                                                                   data-bs-target="#view-${cl.car_id}">
                                                                    <i data-feather="eye"></i>
                                                                </a>
                                                            </li>

                                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">
                                                                <c:choose>
                                                                    <c:when test="${sessionScope.user != null}">
                                                                        <input type="hidden" value="${cl.car_id}" name="carId"/>
                                                                        <a class="compare-link" data-car-id="${cl.car_id}" style="cursor: pointer" onclick="addToCompare(${cl.car_id})">
                                                                            <i data-feather="refresh-cw" ></i>
                                                                        </a>
                                                                    </c:when>
                                                                    <c:otherwise> 
                                                                        <a class="compare-link" data-car-id="${cl.car_id}" style="cursor: pointer" onclick="location.href = '${pageContext.request.contextPath}/login'">
                                                                            <i data-feather="refresh-cw" ></i>
                                                                        </a>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </li>

                                                            <li data-bs-toggle="tooltip" data-bs-placement="top" title="Copy to Clipboard">
                                                                <a style="cursor: pointer" class="notifi-wishlist" onclick="(() => {
                                                                            let element = document.querySelector('.copy-ele-${cl.car_id}');
                                                                            if (element) {
                                                                                navigator.clipboard.writeText(element.href);
                                                                            }
                                                                        })()">
                                                                    <i data-feather="clipboard"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="product-footer px-3">
                                                    <div class="product-detail">
                                                        <span class="span-name">${brandName}</span>
                                                        <a href="${pageContext.request.contextPath}/home?state=detail&id=${cl.car_id}&idSeller=${cl.seller_id}">
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
                                                        <h5 class="price"><span class="theme-color">${cl.price} vnd</span> <del>${cl.price + 100000} vnd</del>
                                                        </h5>
                                                        <c:if test="${not empty sessionScope.user && user.permission_id == 3}">
                                                            <div class="add-to-cart-box">
                                                                <!--<form method="post" id="form-cart-${cl.car_id}" action="home?state=cart&action=add&item=${cl.car_id}">-->
                                                                <button class="button-13 py-1 btn-add-cart addcart-button"  onclick="addToCart(${cl.car_id})">Thêm vào giỏ hàng
                                                                </button>
                                                                <!--</form>-->
                                                            </div>
                                                        </c:if>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="alert alert-danger noCar" style="display: none;font-size:32px; text-align: center; width: 80% ; margin: 20px auto" role="alert">
                                            Sorry , but try on another page instead !
                                        </div>                
                                        <!-- Quick view Modal -->
                                        <div class="modal fade theme-modal view-modal" id="view-${cl.car_id}" tabindex="-1" aria-labelledby="exampleModalLabel"
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
                                                                </div>
                                                            </div>

                                                            <div class="col-lg-6">
                                                                <div class="right-sidebar-modal">
                                                                    <h4 class="title-name">${cl.name}</h4>
                                                                    <h4 class="price">${cl.price} vnd</h4>
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
                                                                        <p style="
                                                                           line-height: 1.5;
                                                                           -webkit-line-clamp: 2;
                                                                           -webkit-box-orient: vertical;
                                                                           display: -webkit-box;
                                                                           overflow: hidden;">${cl.description}</p>
                                                                    </div>

                                                                    <ul class="brand-list">
                                                                        <li>
                                                                            <div class="brand-box">
                                                                                <h5>Brand Name:</h5>
                                                                                <c:forEach var="cb" items="${carBrand}">
                                                                                    <c:if test="${cb.id == cl.brand_id}">
                                                                                        <h6>${cb.name}</h6>
                                                                                    </c:if>
                                                                                </c:forEach>
                                                                            </div>
                                                                        </li>

                                                                        <li>
                                                                            <div class="brand-box">
                                                                                <h5>Product Code:</h5>
                                                                                <h6>WDU-${cl.car_id}</h6>
                                                                            </div>
                                                                        </li>

                                                                        <li>
                                                                            <div class="brand-box">
                                                                                <h5>Category:</h5>
                                                                                <h6>${cateName}</h6>
                                                                            </div>
                                                                        </li>
                                                                    </ul>

                                                                    <div class="select-size">
                                                                        <h4>Car Size :</h4>
                                                                        <input class="form-control input-number qty-input w-25"
                                                                               type="text" name="quantity" value="${cl.weight} kg" readonly style="height: 42.127778px;">
                                                                    </div>

                                                                    <div class="modal-button">
                                                                        <button onclick="addToCart(${cl.car_id})"
                                                                                class="button-86 icon">Add
                                                                            To Cart</button>
                                                                        <button onclick="location.href = '${pageContext.request.contextPath}/home?state=detail&id=${cl.car_id}&idSeller=${cl.seller_id}';"
                                                                                class="button-83  view-button icon fw-bold btn-md">
                                                                            View More Details</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
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
                                        <a href="${pageContext.request.contextPath}/home?index=${page.index+1}"
                                           class="page-link" style="color: var(--theme-color);">
                                            Next</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="${pageContext.request.contextPath}/home?index=${page.totalPage-1}"
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
        <script src="${pageContext.request.contextPath}/front-end/assets/js/valid.js"></script>

        <script>
                                                                            var countries = [
                                                                                "Afghanistan",
                                                                                "Albania",
                                                                                "Algeria",
                                                                                "Andorra",
                                                                                "Angola",
                                                                                "Anguilla",
                                                                                "Antigua &amp; Barbuda",
                                                                                "Argentina",
                                                                                "Armenia",
                                                                                "Aruba",
                                                                                "Australia",
                                                                                "Austria",
                                                                                "Azerbaijan",
                                                                                "Bahamas",
                                                                                "Bahrain",
                                                                                "Bangladesh",
                                                                                "Barbados",
                                                                                "Belarus",
                                                                                "Belgium",
                                                                                "Belize",
                                                                                "Benin",
                                                                                "Bermuda",
                                                                                "Bhutan",
                                                                                "Bolivia",
                                                                                "Bosnia &amp; Herzegovina",
                                                                                "Botswana",
                                                                                "Brazil",
                                                                                "British Virgin Islands",
                                                                                "Brunei",
                                                                                "Bulgaria",
                                                                                "Burkina Faso",
                                                                                "Burundi",
                                                                                "Cambodia",
                                                                                "Cameroon",
                                                                                "Canada",
                                                                                "Cape Verde",
                                                                                "Cayman Islands",
                                                                                "Central Arfrican Republic",
                                                                                "Chad",
                                                                                "Chile",
                                                                                "China",
                                                                                "Colombia",
                                                                                "Congo",
                                                                                "Cook Islands",
                                                                                "Costa Rica",
                                                                                "Cote D Ivoire",
                                                                                "Croatia",
                                                                                "Cuba",
                                                                                "Curacao",
                                                                                "Cyprus",
                                                                                "Czech Republic",
                                                                                "Denmark",
                                                                                "Djibouti",
                                                                                "Dominica",
                                                                                "Dominican Republic",
                                                                                "Ecuador",
                                                                                "Egypt",
                                                                                "El Salvador",
                                                                                "Equatorial Guinea",
                                                                                "Eritrea",
                                                                                "Estonia",
                                                                                "Ethiopia",
                                                                                "Falkland Islands",
                                                                                "Faroe Islands",
                                                                                "Fiji",
                                                                                "Finland",
                                                                                "France",
                                                                                "French Polynesia",
                                                                                "French West Indies",
                                                                                "Gabon",
                                                                                "Gambia",
                                                                                "Georgia",
                                                                                "Germany",
                                                                                "Ghana",
                                                                                "Gibraltar",
                                                                                "Greece",
                                                                                "Greenland",
                                                                                "Grenada",
                                                                                "Guam",
                                                                                "Guatemala",
                                                                                "Guernsey",
                                                                                "Guinea",
                                                                                "Guinea Bissau",
                                                                                "Guyana",
                                                                                "Haiti",
                                                                                "Honduras",
                                                                                "Hong Kong",
                                                                                "Hungary",
                                                                                "Iceland",
                                                                                "India",
                                                                                "Indonesia",
                                                                                "Iran",
                                                                                "Iraq",
                                                                                "Ireland",
                                                                                "Isle of Man",
                                                                                "Israel",
                                                                                "Italy",
                                                                                "Jamaica",
                                                                                "Japan",
                                                                                "Jersey",
                                                                                "Jordan",
                                                                                "Kazakhstan",
                                                                                "Kenya",
                                                                                "Kiribati",
                                                                                "Kosovo",
                                                                                "Kuwait",
                                                                                "Kyrgyzstan",
                                                                                "Laos",
                                                                                "Latvia",
                                                                                "Lebanon",
                                                                                "Lesotho",
                                                                                "Liberia",
                                                                                "Libya",
                                                                                "Liechtenstein",
                                                                                "Lithuania",
                                                                                "Luxembourg",
                                                                                "Macau",
                                                                                "Macedonia",
                                                                                "Madagascar",
                                                                                "Malawi",
                                                                                "Malaysia",
                                                                                "Maldives",
                                                                                "Mali",
                                                                                "Malta",
                                                                                "Marshall Islands",
                                                                                "Mauritania",
                                                                                "Mauritius",
                                                                                "Mexico",
                                                                                "Micronesia",
                                                                                "Moldova",
                                                                                "Monaco",
                                                                                "Mongolia",
                                                                                "Montenegro",
                                                                                "Montserrat",
                                                                                "Morocco",
                                                                                "Mozambique",
                                                                                "Myanmar",
                                                                                "Namibia",
                                                                                "Nauro",
                                                                                "Nepal",
                                                                                "Netherlands",
                                                                                "Netherlands Antilles",
                                                                                "New Caledonia",
                                                                                "New Zealand",
                                                                                "Nicaragua",
                                                                                "Niger",
                                                                                "Nigeria",
                                                                                "North Korea",
                                                                                "Norway",
                                                                                "Oman",
                                                                                "Pakistan",
                                                                                "Palau",
                                                                                "Palestine",
                                                                                "Panama",
                                                                                "Papua New Guinea",
                                                                                "Paraguay",
                                                                                "Peru",
                                                                                "Philippines",
                                                                                "Poland",
                                                                                "Portugal",
                                                                                "Puerto Rico",
                                                                                "Qatar",
                                                                                "Reunion",
                                                                                "Romania",
                                                                                "Russia",
                                                                                "Rwanda",
                                                                                "Saint Pierre &amp; Miquelon",
                                                                                "Samoa",
                                                                                "San Marino",
                                                                                "Sao Tome and Principe",
                                                                                "Saudi Arabia",
                                                                                "Senegal",
                                                                                "Serbia",
                                                                                "Seychelles",
                                                                                "Sierra Leone",
                                                                                "Singapore",
                                                                                "Slovakia",
                                                                                "Slovenia",
                                                                                "Solomon Islands",
                                                                                "Somalia",
                                                                                "South Africa",
                                                                                "South Korea",
                                                                                "South Sudan",
                                                                                "Spain",
                                                                                "Sri Lanka",
                                                                                "St Kitts &amp; Nevis",
                                                                                "St Lucia",
                                                                                "St Vincent",
                                                                                "Sudan",
                                                                                "Suriname",
                                                                                "Swaziland",
                                                                                "Sweden",
                                                                                "Switzerland",
                                                                                "Syria",
                                                                                "Taiwan",
                                                                                "Tajikistan",
                                                                                "Tanzania",
                                                                                "Thailand",
                                                                                "Timor L'Este",
                                                                                "Togo",
                                                                                "Tonga",
                                                                                "Trinidad &amp; Tobago",
                                                                                "Tunisia",
                                                                                "Turkey",
                                                                                "Turkmenistan",
                                                                                "Turks &amp; Caico  s",
                                                                                "Tuvalu",
                                                                                "Uganda",
                                                                                "Ukraine",
                                                                                "United Arab Emirates",
                                                                                "United Kingdom",
                                                                                "United States of America",
                                                                                "Uruguay",
                                                                                "Uzbekistan",
                                                                                "Vanuatu",
                                                                                "Vatican City",
                                                                                "Venezuela",
                                                                                "Vietnam",
                                                                                "Virgin Islands (US)",
                                                                                "Yemen",
                                                                                "Zambia",
                                                                                "Zimbabwe",
                                                                            ];
                                                                            autocomplete(document.getElementById("originInput"), countries);
        </script>

    </body>

</html>