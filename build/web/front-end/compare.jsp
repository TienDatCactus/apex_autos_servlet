<!DOCTYPE html>
<html lang="en">
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Fastkart">
        <meta name="keywords" content="Fastkart">
        <meta name="author" content="Fastkart">
        <link rel="icon" href="${pageContext.request.contextPath}/front-end/assets/images/favicon/1.png" type="image/x-icon">
        <title>So sánh</title>

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
                        <a href="${pageContext.request.contextPath}/home">
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
                                <h2 class="mb-2">So sánh</h2>
                                <nav>
                                    <ol class="breadcrumb mb-0">
                                        <li class="breadcrumb-item">
                                            <a href="index.html">
                                                <i class="fa-solid fa-house"></i>
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item">Xem thêm</li>
                                        <li class="breadcrumb-item active">So sánh</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- Compare Section Start -->
            <section class="compare-section section-b-space">
                <div class="container-fluid-lg">
                    <div class="row">
                        <div class="col-12">
                            <div class="table-responsive">
                                <table class="table compare-table">
                                    <tbody>
                                        <tr>
                                            <th>Tên xe</th>
                                            <c:forEach var="ci" items="${compareItems}">
                                            <td>
                                                <a class="text-title">${ci.name}</a>
                                            </td>
                                        </c:forEach>

                                    </tr>

                                    <tr>
                                        <th>Ảnh</th>
                                            <c:forEach var="ci" items="${compareItems}">
                                            <td>
                                                <a href="product-left-thumbnail.html" class="compare-image">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/inner-page/compare/1.png"
                                                         class="img-fluid blur-up lazyload" alt="">
                                                </a>
                                            </td>
                                        </c:forEach>

                                    </tr>

                                    <tr>
                                    <tr>
                                        <th >Xi lanh</th>
                                            <c:forEach var="ci" items="${compareItems}">
                                            <td style="background-color: orange">${ci.cylinders}</td>
                                        </c:forEach>
                                    </tr>
                                    </tr>


                                    <tr>
                                        <th >Mã lực</th>
                                            <c:forEach var="ci" items="${compareItems}">
                                            <td style="background-color: orange">${ci.horsepower}</td>
                                        </c:forEach>
                                    </tr>


                                    <tr>
                                        <th>Nguồn gốc</th>
                                            <c:forEach var="ci" items="${compareItems}">
                                            <td style="background-color: orange">${ci.origin}</td>
                                        </c:forEach>

                                    </tr>
                                    <tr>
                                        <th>Mô tả</th>
                                            <c:forEach var="ci" items="${compareItems}">
                                            <td>${ci.description}</td></c:forEach>

                                        </tr>
                                        <tr >
                                            <th >Giá</th>
                                            <c:forEach var="ci" items="${compareItems}">
                                            <td  style="background-color: orange">${ci.price} USD</td></c:forEach>

                                        </tr>



                                        <tr>
                                            <th></th>
                                            <c:forEach var="ci" items="${compareItems}">
                                            <td>

<!--                                                <form id="form-cart-${ci.car_id}"
                                                      action="home?state=cart&action=add&id_car=${ci.car_id}"
                                                      method="post">-->
                                                <button type="submit" class="btn btn-animation btn-sm w-100"  onclick="addToCart(${cl.car_id})">Add To Cart</button>

                                                <!--                                                </form>-->
                                                <!--                                                    <button type="button" onclick="location.href='cart?user=';" class="btn btn-animation btn-sm w-100">Add To Cart</button>-->

                                            </td>
                                        </c:forEach>
                                    </tr>

                                    <tr>
                                        <th></th>
                                            <c:forEach var="ci" items="${compareItems}">
                                            <td>
                                                <form id="delete-form-${ci.car_id}" action="compare" method="post">
                                                    <input type="hidden" name="action" value="delete">
                                                    <input type="hidden" name="carId" value="${ci.car_id}">
                                                    <a class="delete-link" data-car-id="${ci.car_id}">
                                                        <i class="fa-solid fa-trash-can me-2"></i> Remove
                                                    </a>
                                                </form>
                                            </td>
                                        </c:forEach>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Compare Section End -->

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

        <script src="${pageContext.request.contextPath}/front-end/assets/js/table-column-remove.js"></script>

        <!-- Slick js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/slick.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/custom_slick.js"></script>

        <!-- script js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/script.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/valid.js"></script>
        <script>
                                                        document.addEventListener('DOMContentLoaded', function () {
                                                            document.querySelectorAll('.delete-link').forEach(function (element) {
                                                                element.addEventListener('click', function (event) {
                                                                    event.preventDefault();
                                                                    var carId = event.currentTarget.getAttribute('data-car-id');
                                                                    document.getElementById('delete-form-' + carId).submit();
                                                                });
                                                            });
                                                        });
        </script>
    </body>

</html>