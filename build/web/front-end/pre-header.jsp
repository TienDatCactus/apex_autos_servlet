<%-- 
    Document   : pre-header
    Created on : Jun 27, 2024, 9:35:05 AM
    Author     : Tiến_Đạt
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="java.util.*"%>
<%@page import="Models.*" %>
<%@page import="DAO.*" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.Random" %>

<c:set var="chars" value="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"/>
<c:set var="finalString" value=""/>
<c:forEach var="i" begin="1" end="6">
    <c:set var="randomIndex" value="${Math.floor(Math.random() * fn:length(chars))}"/>
    <c:set var="finalString" value="${finalString}${chars.substring(randomIndex, randomIndex + 1)}"/>
</c:forEach>
<c:set var="finalString" value="${finalString}${Math.floor(Math.random() * 100)}"/>
<%  
    CarDao dao = new CarDao();
    List<Car> cars = dao.viewProducts();
      List<CarCategory> carCate = dao.viewCarCategory();
      List<CarBrand> carBrand = dao.viewCarBrand();
  List<CarImage> carImage = dao.viewImageForCar();
   int listSize = cars.size();
    int beginIndex = (int) (Math.random() * listSize);
    int endIndex = beginIndex + (int) (Math.random() * (listSize - beginIndex));
      request.setAttribute("carImage", carImage);
      request.setAttribute("carCate", carCate);
      request.setAttribute("carBrand", carBrand);
      request.setAttribute("beginIndex", beginIndex);
    request.setAttribute("endIndex", endIndex);
      
%> 
<header class="pb-md-4 pb-0">
    <div class="header-top py-2">
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
                        <div class="notification-slider h-100">
                            <div>
                                <div class="timer-notification" style="overflow-x: hidden">
                                    <h6>
                                        <strong class="me-1">Chào mừng đến với ApexAutos!</strong>Điểm đến cho những người yêu xe

                                    </h6>
                                </div>
                            </div>
                            <div>
                                <div class="timer-notification" style="overflow-x: hidden">
                                    <h6>
                                        <strong class="ms-1">
                                            Mã giảm giá hôm nay : ${finalString}
                                        </strong>
                                    </h6>
                                </div>
                            </div>
                            <div>
                                <div class="timer-notification">
                                    <h6>
                                        Vô vàn xe mới để lựa chọn
                                        <a href="${pageContext.request.contextPath}/home" class="text-white"
                                           >Mua ngay !</a
                                        >
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
                                <button
                                    class="btn dropdown-toggle"
                                    type="button"
                                    id="select-language"
                                    data-bs-toggle="dropdown"
                                    aria-expanded="false"
                                    >
                                    <img
                                        src="${pageContext.request.contextPath}/front-end/assets/images/country/united-states.png"
                                        class="img-fluid blur-up lazyload"
                                        alt=""
                                        />
                                    <span>English</span>
                                </button>
                                <ul
                                    class="dropdown-menu dropdown-menu-end"
                                    aria-labelledby="select-language"
                                    >
                                    <li>
                                        <a
                                            class="dropdown-item"
                                            href="javascript:void(0)"
                                            id="english"
                                            >
                                            <img
                                                src="${pageContext.request.contextPath}/front-end/assets/images/country/united-kingdom.png"
                                                class="img-fluid blur-up lazyload"
                                                alt=""
                                                />
                                            <span>English</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a
                                            class="dropdown-item"
                                            href="javascript:void(0)"
                                            id="chinese"
                                            >
                                            <img
                                                src="${pageContext.request.contextPath}/front-end/assets/images/country/vn.png"
                                                class="img-fluid blur-up lazyload"
                                                alt=""
                                                />
                                            <span>Viet Nam</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="right-nav-list">
                            <div class="dropdown theme-form-select">
                                <button
                                    class="btn dropdown-toggle"
                                    type="button"
                                    id="select-dollar"
                                    data-bs-toggle="dropdown"
                                    aria-expanded="false"
                                    >
                                    <span>USD</span>
                                </button>
                                <ul
                                    class="dropdown-menu dropdown-menu-end sm-dropdown-menu"
                                    aria-labelledby="select-dollar"
                                    >
                                    <li>
                                        <a
                                            class="dropdown-item"
                                            id="aud"
                                            href="javascript:void(0)"
                                            >VND</a
                                        >
                                    </li>
                                    <li>
                                        <a
                                            class="dropdown-item"
                                            id="cny"
                                            href="javascript:void(0)"
                                            >USD</a
                                        >
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="top-nav top-header sticky-header p-0">
        <div class="container-fluid-lg">
            <div class="row">
                <div class="col-12">
                    <div class="navbar-top">
                        <button
                            class="navbar-toggler d-xl-none d-inline navbar-menu-button"
                            type="button"
                            data-bs-toggle="offcanvas"
                            data-bs-target="#primaryMenu"
                            >
                            <span class="navbar-toggler-icon">
                                <i class="fa-solid fa-bars"></i>
                            </span>
                        </button>
                        <a href="${pageContext.request.contextPath}/home" class="web-logo nav-logo">
                            <img
                                src="${pageContext.request.contextPath}/front-end/assets/images/logo/1.png"
                                class="img-fluid blur-up lazyload"
                                alt=""
                                />
                        </a>

                        <div class="middle-box">
                            <div class="location-box button-83" >
                                <button class="btn location-button " data-bs-toggle="modal"
                                        data-bs-target="#locationModal">
                                    <span class="location-arrow">
                                        <i data-feather="map-pin"></i>
                                    </span>
                                    <span class="locat-name">Vị trí</span>
                                    <i class="fa-solid fa-angle-down"></i>
                                </button>
                            </div>

                            <div class="search-box">
                                <div class="input-group">
                                    <input
                                        type="search"
                                        class="form-control"
                                        placeholder="Tôi đang tìm kiếm..."
                                        aria-label="Recipient's username"
                                        aria-describedby="button-addon2"
                                        />
                                    <button class="btn" type="button" id="button-addon2" onclick="location.href='${pageContext.request.contextPath}/home'">
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
                                    <input
                                        type="text"
                                        class="form-control search-type"
                                        placeholder="Search here.."
                                        />
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
                                <c:if test="${not empty sessionScope.user  && user.permission_id == 3}">
                                    <li class="right-side">
                                        <div class="onhover-dropdown header-badge">
                                            <button type="button"
                                                    class="btn p-0 position-relative header-wishlist">
                                                <i data-feather="shopping-cart"></i>
                                                <span
                                                    class="position-absolute top-0 start-100 translate-middle badge"> ${fn:length(sessionScope.cartItems)}
                                                    <span class="visually-hidden">Giỏ hàng</span>
                                                </span>
                                            </button>

                                            <div class="onhover-div">
                                                <ul class="cart-list custom-height">
                                                    <c:choose>
                                                        <c:when test="${empty cartItems}">
                                                            <li class="product-box-contain w-100">
                                                                <div class="alert alert-warning my-0" role="alert">
                                                                 Giỏ hàng của bạn đang trống !
                                                                </div>
                                                            </li>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <c:forEach var="ci" items="${cartItems}">
                                                                <c:set var="total" value="${0}"/>
                                                                <c:set var="total" value="${total + ci.car.price}" />
                                                                <li class="product-box-contain w-100">
                                                                    <div class="drop-cart">
                                                                        <a href="${pageContext.request.contextPath}/home?state=detail&id=${ci.car.car_id}" class="drop-image p-0">
                                                                            <c:set var="firstImagePrinted" value="false" />
                                                                            <c:forEach items="${carImage}" var="cm">
                                                                                <c:if test="${ci.car.car_id == cm.car_id}">
                                                                                    <c:forEach items="${cm.image_url}" var="obj">
                                                                                        <c:if test="${not firstImagePrinted}">
                                                                                            <img src="${obj}" alt="Car Image" class="img-fluid blur-up lazyload rounded p-0" style="object-fit: cover; max-width:100%; max-height: 100%;">
                                                                                            <c:set var="firstImagePrinted" value="true" />
                                                                                        </c:if>
                                                                                    </c:forEach>
                                                                                </c:if> 
                                                                            </c:forEach>
                                                                        </a>
                                                                        <div class="drop-contain">
                                                                            <a href="${pageContext.request.contextPath}/home?state=detail&id=${ci.car.car_id}">
                                                                                <h5>${ci.car.name}</h5>
                                                                            </a>
                                                                            <c:forEach var="cb" items="${carBrand}">
                                                                                <c:if test="${ci.car.brand_id == cb.id}">
                                                                                    <h6 style="position: absolute">${cb.name}</h6>
                                                                                </c:if>
                                                                            </c:forEach>
                                                                            <form id="form-del-${ci.item_id}" method="post">
                                                                                <input type="hidden" name="state" value="cart">
                                                                                <input type="hidden" name="action" value="delete">
                                                                                <input type="hidden" name="item" value="${ci.item_id}">
                                                                                <button class="close-button close_button" style="position: absolute; right: 10px; top: 8px;" onclick="deleteCartItem(${ci.item_id}); return false;">
                                                                                    <i class="fa-solid fa-xmark"></i>
                                                                                </button>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </c:forEach>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </ul>


                                                <div class="price-box">
                                                    <h5>Total :</h5>
                                                    <h4 id="totalprice" class="theme-color fw-bold">$${total != null ? total : 0}</h4>
                                                </div>

                                                <div class="button-group">
                                                    <a href="${pageContext.request.contextPath}/home?state=cart&user=${user.user_id}" class="btn btn-sm cart-button">Xem giỏ hàng</a>
                                                    <a href="${pageContext.request.contextPath}/home?state=checkout"
                                                       class="btn btn-sm cart-button theme-bg-color text-white">Thanh toán cọc</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </c:if>
                                <li class="right-side onhover-dropdown">
                                    <div class="delivery-login-box">
                                        <div class="delivery-icon">
                                            <i data-feather="user"></i>
                                        </div>
                                        <c:if test="${sessionScope.user == null}">
                                            <div class="delivery-detail">
                                                <h6>Xin lỗi,</h6>
                                                <h5>Bạn chưa đăng nhập</h5>
                                            </div>
                                        </c:if>
                                        <c:if test="${sessionScope.user != null}">
                                            <c:set var="username"
                                                   value="${fn:substringBefore(user.email, '@')}" />
                                            <c:set var="fullname" value="${user.family_name} ${use.given_name}"></c:set>
                                                <div class="delivery-detail">
                                                    <h6 class="my-0">Hello,</h6>
                                                    <h5>${fullname ? fullname : username}</h5>
                                            </div>
                                        </c:if>
                                    </div>
                                    <c:if test="${sessionScope.user == null}">
                                        <div class="onhover-div onhover-div-login">
                                            <ul class="user-box-name">
                                                <li class="product-box-contain">
                                                    <i></i>
                                                    <a href="${pageContext.request.contextPath}/login">Đăng nhập</a>
                                                </li>

                                                <li class="product-box-contain">
                                                    <a href="${pageContext.request.contextPath}/register">Đăng kí</a>
                                                </li>

                                                <li class="product-box-contain">
                                                    <a href="${pageContext.request.contextPath}/mail">Quên mật khẩu</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </c:if>
                                    <c:if test="${sessionScope.user != null}">

                                        <div class="onhover-div onhover-div-login">
                                            <ul class="user-box-name">
                                                <li class="product-box-contain">

                                                    <a href="${pageContext.request.contextPath}/${user.permission_id == 3 ? "user" : (user.permission_id == 2 ? "seller" : (user.permission_id == 1 ? "admin" : ""))  }/dashboard">${user.permission_id == 3 ? "Hồ sơ" : "Điều khiển"}</a>
                                                </li>

                                                <li class="product-box-contain">
                                                    <a href="${pageContext.request.contextPath}/cart">Giỏ hàng</a>
                                                </li>

                                                <li class="product-box-contain">
                                                    <a href="${pageContext.request.contextPath}/logout">Đăng xuất</a>
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
                        <button class="dropdown-category button-86" onclick="location.href = '${pageContext.request.contextPath}/home'">
                            <span>Apex Autos</span>
                        </button>


                    </div>

                    <div class="header-nav-middle">
                        <div
                            class="main-nav navbar navbar-expand-xl navbar-light navbar-sticky"
                            >
                            <div
                                class="offcanvas offcanvas-collapse order-xl-2"
                                id="primaryMenu"
                                >
                                <div class="offcanvas-header navbar-shadow">
                                    <h5>Menu</h5>
                                    <button
                                        class="btn-close lead"
                                        type="button"
                                        data-bs-dismiss="offcanvas"
                                        aria-label="Close"
                                        ></button>
                                </div>
                                <div class="offcanvas-body">
                                    <ul class="navbar-nav">

                                        <li class="nav-item dropdown button-39">
                                            <a
                                                class="nav-link dropdown-toggle"
                                                href="javascript:void(0)"
                                                data-bs-toggle="dropdown"
                                                >Nhãn hàng</a
                                            >

                                            <ul
                                                class="dropdown-menu my-2 show"
                                                data-bs-popper="none"
                                                >
                                                <c:forEach var="cb" items="${carBrand}">
                                                    <li>
                                                        <a
                                                            class="dropdown-item"
                                                            href="!"
                                                            >${cb.name}</a
                                                        >
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </li>


                                        <li class="nav-item dropdown button-39">
                                            <a
                                                class="nav-link dropdown-toggle"
                                                href="javascript:void(0)"
                                                data-bs-toggle="dropdown"
                                                >Kiểu loại</a
                                            >
                                            <ul
                                                class="dropdown-menu my-2 show"
                                                data-bs-popper="none"
                                                >
                                                <c:forEach var="cc" items="${carCate}">
                                                    <li>
                                                        <a class="dropdown-item" href=""
                                                           >${cc.name}</a
                                                        >
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </li>

                                        <li class="nav-item dropdown button-39">
                                            <a
                                                class="nav-link dropdown-toggle"
                                                href="javascript:void(0)"
                                                data-bs-toggle="dropdown"
                                                >Thông tin thêm</a
                                            >
                                            <ul class="dropdown-menu my-2 show"
                                                data-bs-popper="none">
                                                <li>
                                                    <a class="dropdown-item"
                                                       href="home?state=compare">So sánh</a>
                                                </li>

                                                <li>
                                                    <a class="dropdown-item"
                                                       href="!">Hướng dẫn mua hàng</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item"
                                                       href="!">Review</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item"
                                                       href="!">Liên hệ</a>
                                                </li>
                                            </ul>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="header-nav-right ">
                        <button
                            class="deal-button button-83"
                            data-bs-toggle="modal"
                            data-bs-target="#deal-box"

                            >
                            <i data-feather="zap"></i>
                            <span>Ưu đãi</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Deal Box Modal Start -->
<div class="modal fade theme-modal deal-modal" id="deal-box" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
        <div class="modal-content" >
            <div class="modal-header">
                <div>
                    <h5 class="modal-title w-100" id="deal_today">Ưu đãi hôm nay</h5>
                    <p class="mt-1 text-content">Ưu đãi dành riêng cho bạn.</p>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <i class="fa-solid fa-xmark"></i>
                </button>
            </div>
            <div class="modal-body">
                <div class="deal-offer-box">
                    <ul class="deal-offer-list">
                        <c:forEach var="cl" items="${carList}" begin="${beginIndex}" end="${endIndex}">
                            <li class="list-1">
                                <div class="deal-offer-contain">
                                    <a href="shop-left-sidebar.html" class="deal-image">
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

                                    <a href="${pageContext.request.contextPath}/home?state=detail&id=${cl.car_id}" class="deal-contain">
                                        <h5 class="my-1">${cl.name}</h5>
                                        <c:forEach var="cc" items="${carCate}">
                                            <c:if test="${cl.category_id == cc.id}">
                                                <p class="my-1 text-warning">${cc.name}</p>
                                            </c:if>
                                        </c:forEach></h6>
                                        <h6 class="my-1">$${cl.price} <del>$${cl.price + 10000}</del> <c:forEach var="cb" items="${carBrand}">
                                                <c:if test="${cl.brand_id == cb.id}">
                                                    <span>${cb.name}</span>
                                                </c:if>
                                            </c:forEach></h6>

                                    </a>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Deal Box Modal End -->
<!-- Location Modal Start -->
<div class="modal location-modal fade theme-modal" id="locationModal" tabindex="-1"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Lựa chọn địa điểm nhận hàng</h5>
                <p class="mt-1 text-content">Nhập vào địa điểm nhận hàng của bạn
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
                        <h6>Địa điểm</h6>
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
<!--<div class="cookie-bar-box">
    <div class="cookie-box">
        <div class="cookie-image">
            <img src="${pageContext.request.contextPath}/front-end/assets/images/cookie-bar.png"
                 class="blur-up lazyload" alt="">
            <h2>Cookies!</h2>
        </div>

        <div class="cookie-contain">
            <h5 class="text-content" >We use cookies to make your experience better</h5>
        </div>
    </div>

    <div class="button-group">
        <button class="btn privacy-button">Privacy Policy</button>
        <button class="btn ok-button">OK</button>
    </div>
</div>-->
<!-- Cookie Bar Box End -->



<!-- Tap to top start -->
<div class="theme-option">
    <div class="back-to-top">
        <a id="back-to-top" href="#">
            <i class="fas fa-chevron-up"></i>
        </a>
    </div>
</div>
<!-- Tap to top end -->