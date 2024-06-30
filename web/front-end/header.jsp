<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="java.util.*"%>
<%@page import="Models.*" %>
<%@page import="DAO.*" %>
<%@page import="java.sql.*"%>
<% 
    CarDao dao = new CarDao();
      List<CarCategory> carCate = dao.viewCarCategory();
      List<CarBrand> carBrand = dao.viewCarBrand();
  List<CarImage> carImage = dao.viewImageForCar();
      request.setAttribute("carImage", carImage);
      request.setAttribute("carCate", carCate);
      request.setAttribute("carBrand", carBrand);
      
%>
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
                        <a href="home" class="web-logo nav-logo">
                            <img src="${pageContext.request.contextPath}/front-end/assets/images/logo/1.png"
                                 class="img-fluid blur-up lazyload" alt="">
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
                                                       href="home">Home</a>
                                                </li>
                                                <li class="nav-item dropdown">
                                                    <a class="nav-link dropdown-toggle"
                                                       href="javascript:void(0)"
                                                       data-bs-toggle="dropdown">Brand</a>

                                                    <ul class="dropdown-menu">
                                                        <c:forEach var="cb" items="${carBrand}">
                                                            <li>
                                                                <a class="dropdown-item"
                                                                   href="!">${cb.name}</a>
                                                            </li>
                                                        </c:forEach>
                                                    </ul>
                                                </li>
                                                <li class="nav-item dropdown">
                                                    <a class="nav-link dropdown-toggle"
                                                       href="javascript:void(0)"
                                                       data-bs-toggle="dropdown">Categories</a>
                                                    <ul class="dropdown-menu">
                                                        <c:forEach var="cc" items="${carCate}">
                                                            <li>
                                                                <a class="dropdown-item"
                                                                   href="!">${cc.name}</a>
                                                            </li>
                                                        </c:forEach>
                                                    </ul>
                                                </li>
                                                <li class="nav-item dropdown new-nav-item">
                                                    <label class="new-dropdown">Hot</label>
                                                    <a class="nav-link dropdown-toggle"
                                                       href="javascript:void(0)"
                                                       data-bs-toggle="dropdown">Resources</a>
                                                    <ul class="dropdown-menu">
                                                        <li>
                                                            <a class="dropdown-item"
                                                               href="!">Comparisons</a>
                                                        </li>

                                                        <li>
                                                            <a class="dropdown-item"
                                                               href="!">Buying Guides</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item"
                                                               href="!">Car reviews</a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item"
                                                               href="!">Contact Us</a>
                                                        </li>
                                                    </ul>
                                                </li>






                                                <c:if test="${sessionScope.user != null && user.permission_id == 3}">
                                                    <li class="nav-item dropdown new-nav-item">
                                                        <label class="new-dropdown">New</label>
                                                        <a class="nav-link dropdown-toggle"
                                                           href="javascript:void(0)"
                                                           data-bs-toggle="dropdown">Become our
                                                            Seller</a>
                                                        <ul class="dropdown-menu">
                                                            <li class="">
                                                                <a class="dropdown-item"
                                                                   href="javascript:void(0)">Sign up
                                                                    for the program
                                                                    <span class="new-text"><i
                                                                            class="fa-solid fa-bolt-lightning"></i></span></a>

                                                            </li>
                                                        </ul>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="rightside-box">
                            <div class="location-box button-83">
                                <button class="btn location-button" data-bs-toggle="modal"
                                        data-bs-target="#locationModal">
                                    <span class="location-arrow">
                                        <i data-feather="map-pin"></i>
                                    </span>
                                    <span class="locat-name">Your Location</span>
                                    <i class="fa-solid fa-angle-down"></i>
                                </button>
                            </div>
                            <ul class="right-side-menu mx-2">
                                <li class="right-side">
                                    <a href="!" class="delivery-login-box">
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
                                <c:if test="${sessionScope.user != null && user.permission_id == 3}">
                                    <li class="right-side">
                                        <div class="onhover-dropdown header-badge ">
                                            <button type="button button-83"
                                                    class="btn p-0 position-relative header-wishlist">
                                                <i data-feather="shopping-cart"></i>
                                                <span
                                                    class="position-absolute top-0 start-100 translate-middle badge"> ${fn:length(sessionScope.cartItems)}
                                                    <span class="visually-hidden">Cart items</span>
                                                </span>
                                            </button>

                                            <div class="onhover-div">
                                                <ul class="cart-list custom-height">
                                                    <c:forEach var="ci" items="${cartItems}">
                                                        <c:set var="total" value="${0}"/>
                                                        <c:set var="total" value="${total + ci.car.price}" />
                                                        <li class="product-box-contain w-100">
                                                            <div class="drop-cart">
                                                                <a href="home?state=detail&id=${ci.car.car_id}"
                                                                   class="drop-image p-0">
                                                                    <c:set var="firstImagePrinted" value="false" />
                                                                    <c:forEach items="${carImage}" var="cm">
                                                                        <c:if test="${ci.car.car_id == cm.car_id}">
                                                                            <c:forEach items="${cm.image_url}" var="obj">
                                                                                <c:if test="${not firstImagePrinted}">
                                                                                    <img src="${obj}" alt="Car Image" class="img-fluid lazyload rounded p-0"  style="object-fit: contain;max-width:100%; max-height: 100%;">
                                                                                    <c:set var="firstImagePrinted" value="true" />
                                                                                </c:if>
                                                                            </c:forEach>
                                                                        </c:if> 
                                                                    </c:forEach>

                                                                </a>
                                                                <div class="drop-contain">
                                                                    <a href="home?state=detail&id=${ci.car.car_id}">
                                                                        <h5>${ci.car.name}
                                                                        </h5>
                                                                    </a>
                                                                    <h6>$${ci.car.price}</h6>
                                                                    <form action="home?state=cart&action=delete&item=${ci.item_id}&index=header" id="form-del-${ci.item_id}" method="post">
                                                                        <button class="close-button close_button " style="position: absolute;right: 10px;top:8px">
                                                                            <i class="fa-solid fa-xmark"></i>
                                                                        </button>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </c:forEach>

                                                </ul>

                                                <div class="price-box">
                                                    <h5>Total :</h5>
                                                    <h4 class="theme-color fw-bold">$${total}</h4>
                                                </div>

                                                <div class="button-group">
                                                    <a href="home?state=cart&user=${user.user_id}"
                                                       class="btn btn-sm cart-button">View
                                                        Cart</a>
                                                    <a href="checkout" class="btn btn-sm cart-button theme-bg-color
                                                       text-white">Checkout</a>
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
                                                <h6>Sorry,</h6>
                                                <h5>Not logged-In</h5>
                                            </div>
                                        </c:if>
                                        <c:if test="${sessionScope.user != null}">
                                            <c:set var="username" value="${fn:substringBefore(user.email, '@')}" />
                                            <c:set var="fullname" value="${user.family_name} ${user.given_name}" />
                                            <c:set var="displayName" value="${not empty fullname ? fullname : username}" />
                                            <div class="delivery-detail">
                                                <h6 class="my-0">Hello,</h6>
                                                <h5>${displayName}</h5>
                                            </div>
                                        </div>
                                    </c:if>
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
                                                    <a href="${pageContext.request.contextPath}/${user.permission_id == 3 ? "user" : (user.permission_id == 2 ? "seller" : (user.permission_id == 1 ? "admin" : ""))  }/dashboard">Dashboard</a>
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
</header>
<!-- Deal Box Modal Start -->
<div class="modal fade theme-modal deal-modal" id="deal-box" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
        <div class="modal-content" >
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

                                    <a href="home?state=detail&id=${cl.car_id}" class="deal-contain">
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