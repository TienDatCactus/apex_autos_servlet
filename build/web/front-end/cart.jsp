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
        <title>Cart</title>

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
            <section class="breadscrumb-section pt-0">
                <div class="container-fluid-lg">
                    <div class="row">
                        <div class="col-12">
                            <div class="breadscrumb-contain">
                                <h2>Giỏ hàng</h2>
                                <nav>
                                    <ol class="breadcrumb mb-0">
                                        <li class="breadcrumb-item">
                                            <a href="index.html">
                                                <i class="fa-solid fa-house"></i>
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item active" aria-current="page">Giỏ hàng</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- Cart Section Start -->
            <section class="cart-section section-b-space">
                <div class="container-fluid-lg">
                    <div class="row g-sm-5 g-3">
                        <div class="col-xxl-9">
                        <c:choose>
                            <c:when test="${empty cartItems}">
                                <div class="alert alert-warning d-flex justify-content-center" style="font-size: 32px " role="alert">
                                    Giỏ hàng của bạn đang trống
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="cart-table">
                                    <div class="table-responsive-xl">

                                        <table class="table">
                                            <tbody class="custom-height">

                                                <c:forEach var="ci" items="${cartItems}">
                                                    <c:set var="total" value="${0}"/>
                                                    <c:set var="total" value="${total + ci.car.price}" />
                                                    <tr class="product-box-contain">
                                                        <td class="product-detail">
                                                            <div class="product border-0">
                                                                <a href="product-left-thumbnail.html" class="product-image">
                                                                    <c:set var="firstImagePrinted" value="false" />
                                                                    <c:forEach items="${carImage}" var="cm">
                                                                        <c:if test="${ci.car.car_id == cm.car_id}">
                                                                            <c:forEach items="${cm.image_url}" var="obj">
                                                                                <c:if test="${not firstImagePrinted}">
                                                                                    <img src="${obj}" alt="Car Image" class="img-fluid lazyload rounded m-2"  style="object-fit: cover;width:100%; max-height: 100%;">
                                                                                    <c:set var="firstImagePrinted" value="true" />
                                                                                </c:if>
                                                                            </c:forEach>
                                                                        </c:if> 
                                                                    </c:forEach>
                                                                </a>
                                                                <div class="product-detail">
                                                                    <ul>
                                                                        <li class="name">
                                                                            <a href="product-left-thumbnail.html">${ci.car.name}</a>
                                                                        </li>
                                                                        <c:forEach var="cb" items="${carBrand}">
                                                                            <c:if test="${cb.id == ci.car.brand_id}">
                                                                                <li class="text-content"><span
                                                                                        class="text-title">Hãng xe :</span> ${cb.name}
                                                                                </li>
                                                                            </c:if>
                                                                        </c:forEach>
                                                                        <c:forEach var="cc" items="${carCate}">
                                                                            <c:if test="${cc.id == ci.car.category_id}">
                                                                                <li class="text-content"><span
                                                                                        class="text-title">Kiểu xe :</span> ${cc.name}
                                                                                </li>
                                                                            </c:if>
                                                                        </c:forEach>

                                                                        <li>
                                                                            <h5 class="text-content d-inline-block">Giá tiền :
                                                                            </h5>
                                                                            <span>$${ci.car.price}</span>
                                                                            <span class="text-content">$${ci.car.price  + 10000}</span>
                                                                        </li>

                                                                        <li>
                                                                            <h5 class="saving theme-color">Tiết kiệm : $10000
                                                                            </h5>
                                                                        </li>

                                                                        <li class="quantity-price-box">
                                                                            <div class="cart_qty">
                                                                                <div class="input-group">
                                                                                    <button type="button"
                                                                                            class="btn qty-left-minus"
                                                                                            data-type="minus" data-field="">
                                                                                        <i class="fa fa-minus ms-0"
                                                                                           aria-hidden="true"></i>
                                                                                    </button>
                                                                                    <input
                                                                                        class="form-control input-number qty-input"
                                                                                        type="text" name="quantity"
                                                                                        value="0">
                                                                                    <button type="button"
                                                                                            class="btn qty-right-plus"
                                                                                            data-type="plus" data-field="">
                                                                                        <i class="fa fa-plus ms-0"
                                                                                           aria-hidden="true"></i>
                                                                                    </button>
                                                                                </div>
                                                                            </div>
                                                                        </li>

                                                                        <li>
                                                                            <h5>Tổng : ${ci.car.price}</h5>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td class="price">
                                                            <h4 class="table-title text-content">Đơn giá</h4>
                                                            <h5>${ci.car.price}<del class="text-content">${ci.car.price}</del></h5>
                                                            <h6 class="theme-color">Tiết kiệm : $10000</h6>
                                                        </td>

                                                        <td class="quantity">
                                                            <h4 class="table-title text-content ">
                                                                Số lượng</h4>
                                                            <div style="width: 70px"
                                                                 <div class="cart_qty">
                                                                    <input class="form-control input-number qty-input "
                                                                           type="text" name="quantity" value="1" readonly style="height: 42.127778px;">
                                                                </div>
                                                            </div>
                                                        </td>


                                                        <td class="subtotal">
                                                            <h4 class="table-title text-content">Tổng</h4>
                                                            <h5 class="pricee">$${ci.car.price}</h5>
                                                        </td>

                                                        <td class="save-remove">
                                                            <h4 class="table-title text-content">Hành động</h4>
                                                            <form action="home?state=cart&action=delete&item=${ci.car.car_id}&index=cart" id="form-del-${ci.item_id}" method="post">
                                                                <input type="submit" value="Xóa khỏi giỏ" class="button-83 p-2" style="font-size: 14px;" onclick="document.getElementById('form-del-${ci.item_id}').submit()">
                                                            </form>
                                                        </td>
                                                    </tr>
                                                </c:forEach>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>

                    <div class="col-xxl-3">
                        <div class="summery-box p-sticky">
                            <div class="summery-header">
                                <h3>Tổng giá trị Cọc</h3>
                            </div>

                            <div class="summery-contain">

                                <ul>
                                    <li>
                                        <h4 >Giá trị ước tính</h4>
                                        <h4 id="subTotal" class="price">${total} VND</h4>
                                    </li>



                                </ul>
                            </div>

                            <ul class="summery-total">
                                <li class="list-total border-top-0">
                                    <h4 >Total</h4>
                                    <h4 id="totalprice" class="price theme-color"></h4>
                                </li>
                            </ul>

                            <div class="button-group cart-button">
                                <ul>
                                    <li>
                                        <button onclick="location.href = 'home?state=checkout';"
                                                class="button-83 text-center proceed-btn fw-bold d-flex justify-content-center">Tiến hành thanh toán Cọc</button>
                                    </li>

                                    <li>
                                        <button onclick="location.href = 'home';"
                                                class="button-39 text-dark d-flex justify-content-evenly align-items-center">
                                            <i class="fa-solid fa-arrow-left-long"></i>Quay lại trang chủ</button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Cart Section End -->

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
                                area.</p>
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

        <!-- Quantity js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/quantity.js"></script>

        <!-- script js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/script.js"></script>
        <script>
                                            window.onload = updateSubTotal();

                                            function updateSubTotal() {
                                                let totalPriceOfEachProduct = document.querySelectorAll('h5.pricee');
                                                let totalCart = 0;
                                                totalPriceOfEachProduct.forEach(e => {
                                                    let totalPrice = parseFloat(e.textContent.trim());
                                                    totalCart += totalPrice;
                                                });
                                                document.querySelector('#subTotal').innerHTML = totalCart;
                                                document.querySelector('#totalprice').innerHTML = totalCart;

                                            }
        </script>
    </body>

</html>