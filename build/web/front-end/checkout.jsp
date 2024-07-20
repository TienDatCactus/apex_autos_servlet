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
                                <h2>Đặt cọc và thanh toán</h2>
                                <nav>
                                    <ol class="breadcrumb mb-0">
                                        <li class="breadcrumb-item">
                                            <a href="index.html">
                                                <i class="fa-solid fa-house"></i>
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item active" aria-current="page">Đặt cọc</li>
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
                                                    <h4>Địa chỉ</h4>
                                                </div>

                                                <div class="checkout-detail">
                                                    <div class="row g-4">
                                                    <c:choose>
                                                        <c:when test="${ empty listAddr}">
                                                            <div class="col-xxl-12 col-lg-12 col-md-12 alert alert-warning d-flex justify-content-center" style="font-size: 32px " role="alert">
                                                                Thông tin địa chỉ của bạn đang thiếu
                                                            </div>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <c:forEach var="add" items="${listAddr}">
                                                                <c:set var="username"
                                                                       value="${fn:substringBefore(user.email, '@')}" />
                                                                <c:set var="fullname" value="${user.family_name} ${use.given_name}"></c:set>
                                                                    <div class="col-xxl-6 col-lg-12 col-md-6">
                                                                        <div class="delivery-address-box">
                                                                            <div>
                                                                                <div class="form-check">
                                                                                    <input class="form-check-input" type="radio" name="${add.user_id}"
                                                                                       id="flexRadioDefault1">
                                                                            </div>

                                                                            <div class="label">
                                                                                <label>Nhà</label>
                                                                            </div>

                                                                            <ul class="delivery-address-detail">
                                                                                <li>
                                                                                    <h4 class="fw-500">${fullname ? username : ""}</h4>
                                                                                </li>

                                                                                <li>
                                                                                    <p class="text-content"><span
                                                                                            class="text-title">Địa chỉ
                                                                                            : </span>${add.address}</p>
                                                                                </li>

                                                                                <li>
                                                                                    <h6 class="text-content"><span
                                                                                            class="text-title">Mã Pin
                                                                                            :</span> ${add.pin_code}</h6>
                                                                                </li>

                                                                                <li>
                                                                                    <h6 class="text-content mb-0"><span
                                                                                            class="text-title">Số điện thoại
                                                                                            :</span> ${user.phone}</h6>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </c:forEach>
                                                        </c:otherwise>
                                                    </c:choose>

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
                                                <h4>Lựa chọn thanh toán</h4>
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
                                        <h3>Nội dung hóa đơn</h3>
                                    </div>

                                    <ul class="summery-contain">
                                        <c:forEach var="ci" items="${cartItems}">
                                            <c:set var="total" value="${0}"/>
                                            <c:set var="total" value="${total + ci.car.price}" />
                                            <li>
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
                                                s                                                <h4>${ci.car.name}</h4>
                                                <h4 id="pricee" class="price">${ci.car.price}</h4>
                                            </li>
                                        </c:forEach>

                                    </ul>

                                    <ul class="summery-total">
                                        <li>
                                            <h4>Tổng giá trị ước tính</h4>
                                            <h4 id="Subtotal" class="price"></h4>
                                        </li>


                                        <li class="list-total">
                                            <h4>Đặt cọc <p>(10% tổng giá trị hóa đơn)</p></h4>

                                            <h4 id="priceTotal" class="price"></h4>
                                        </li>
                                    </ul>
                                </div>

                                <button class="button-86 text-white btn-md w-100 mt-4 fw-bold">Tiến hành Cọc</button>
                            </div>
                        </form>
                    </div>




                </div>
            </div>
        </section>
        <!-- Checkout section End -->

        <!-- Footer Section Start -->
        <jsp:include page="footer.jsp"></jsp:include>

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
                let totalCart = 100000;
                totalPriceOfEachProduct.forEach(e => {
                    let totalPrice = parseFloat(e.textContent.trim());
                    totalCart += totalPrice;
                });
                const depo = totalCart / 10;
                document.querySelector('#priceTotal').innerHTML = depo;
                document.querySelector('#Subtotal').innerHTML = totalCart;
                document.querySelector('#totalAmount').value =depo ;
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