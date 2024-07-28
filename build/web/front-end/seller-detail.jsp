<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

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
        <style>
            .text-content{
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
                line-height: 1.5;
                display: block;
                width: 180px
            }

            .text-content:hover {
                overflow: visible;
                white-space: normal;
                padding: 10px;
                z-index: 1;
                position: relative;
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
            <!-- Breadcrumb Section End -->

            <!-- Shop Section Start -->
            <section class="section-b-space shop-section">
                <div class="container-fluid-lg">
                    <div class="row">
                        <div class="col-custome-3">
                            <div class="vendor-box ">
                                <div class="verndor-contain">
                                    <div class="vendor-image">
                                    <c:forEach items="${tradeMark.url_logo}" var="obj">

                                        <img src="${obj}"  alt="Car Image" class="card-img-top blur-up lazyload rounded"  style="object-fit: cover;max-width: 100%;border-radius: 50%">

                                    </c:forEach>
                                </div>

                                <div class="vendor-name">
                                    <h5>
                                        <a href="home?state=tradeDetail&idTr=${tradeMark.trademard_id}" >
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
                                        <span>(36 Reviews)</span>
                                    </div>

                                </div>
                            </div>

                            <p class="vendor-detail">${tradeMark.describe}</p>
                            <div class="vendor-list">
                                <ul>
                                    <li>
                                        <div class="address-contact">
                                            <i data-feather="map-pin"></i>
                                            <h5>Chính sách bảo mật: <span class="text-content">${tradeMark.privacy}</span></h5>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="address-contact">
                                            <i data-feather="headphones"></i>
                                            <h5>Điều khoản và dịch vụ: <span class="text-content">${tradeMark.terms}</span></h5>
                                        </div>
                                    </li>
                                </ul>
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
                                                        <h5 class="price"><span class="theme-color"><fmt:formatNumber currencySymbol="VND " value = "${cl.price}" 
                                                                                                                      type = "currency"/></span> 
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
                                                                    <h4 class="price"><fmt:formatNumber currencySymbol="VND " value = "${cl.price}" 
                                                                                                        type = "currency"/></h4>
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
                                                                        <span class="ms-2">8 Lượt đánh giá</span>
                                                                        <span class="ms-2 text-danger">Đã bán 6 chiếc trong 16 tiếng qua</span>
                                                                    </div>

                                                                    <div class="product-detail">
                                                                        <h4>Chi tiết sản phẩm :</h4>
                                                                        <p id="carDescription">${cl.description}</p>
                                                                    </div>

                                                                    <ul class="brand-list">
                                                                        <li>
                                                                            <div class="brand-box">
                                                                                <h5>Hãng xe:</h5>
                                                                                <c:forEach var="cb" items="${carBrand}">
                                                                                    <c:if test="${cb.id == cl.brand_id}">
                                                                                        <h6>${cb.name}</h6>
                                                                                    </c:if>
                                                                                </c:forEach>
                                                                            </div>
                                                                        </li>

                                                                        <li>
                                                                            <div class="brand-box">
                                                                                <h5>Mã xe:</h5>
                                                                                <h6>WDU-${cl.car_id}</h6>
                                                                            </div>
                                                                        </li>

                                                                        <li>
                                                                            <div class="brand-box">
                                                                                <h5>Kiểu xe:</h5>
                                                                                <h6>${cateName}</h6>
                                                                            </div>
                                                                        </li>
                                                                    </ul>

                                                                    <div class="select-size">
                                                                        <h4>Trọng lượng xe:</h4>
                                                                        <input class="form-control input-number qty-input w-25"
                                                                               type="text" name="quantity" value="${cl.weight} kg" readonly style="height: 42.127778px;">
                                                                    </div>

                                                                    <div class="modal-button">
                                                                        <button onclick="addToCart(${cl.car_id})"
                                                                                class="button-86 icon">Thêm vào giỏ hàng</button>
                                                                        <button onclick="location.href = '${pageContext.request.contextPath}/home?state=detail&id=${cl.car_id}&idSeller=${cl.seller_id}';"
                                                                                class="button-83  view-button icon fw-bold btn-md">
                                                                            Xem thêm chi tiết</button>
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
                            <h6 class="text-content">Â©2022 Fastkart All rights reserved</h6>
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
                                                    Caramels marshmallow icing dessert candy canes I love soufflÃ© I love toffee.
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