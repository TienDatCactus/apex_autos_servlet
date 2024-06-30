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
    <title>Compare</title>

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
                        <h2 class="mb-2">Compare</h2>
                        <nav>
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item">
                                    <a href="index.html">
                                        <i class="fa-solid fa-house"></i>
                                    </a>
                                </li>
                                <li class="breadcrumb-item">Shop</li>
                                <li class="breadcrumb-item active">Compare</li>
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
                                    <th>Product</th>
                                    <td>
                                        <a class="text-title" href="product-left-thumbnail.html">Daily Shine Shampoo</a>
                                    </td>
                                    <td>
                                        <a class="text-title" href="product-left-thumbnail.html">Intence Repair
                                            Shampoo</a>
                                    </td>
                                    <td>
                                        <a class="text-title" href="product-left-thumbnail.html">Anti Dandruff
                                            Solution</a>
                                    </td>
                                    <td>
                                        <a class="text-title" href="product-left-thumbnail.html">Repair & Shine
                                            Shampoo</a>
                                    </td>
                                </tr>

                                <tr>
                                    <th>Images</th>
                                    <td>
                                        <a href="product-left-thumbnail.html" class="compare-image">
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/inner-page/compare/1.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>
                                    </td>
                                    <td>
                                        <a href="product-left-thumbnail.html" class="compare-image">
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/inner-page/compare/2.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>
                                    </td>
                                    <td>
                                        <a href="product-left-thumbnail.html" class="compare-image">
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/inner-page/compare/3.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>
                                    </td>
                                    <td>
                                        <a href="product-left-thumbnail.html" class="compare-image">
                                            <img src="${pageContext.request.contextPath}/front-end/assets/images/inner-page/compare/4.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                        </a>
                                    </td>
                                </tr>

                                <tr>
                                    <th>Hair Type</th>
                                    <td class="text-content">Normal</td>
                                    <td class="text-content">Oily</td>
                                    <td class="text-content">Dry</td>
                                    <td class="text-content">Normal</td>
                                </tr>

                                <tr>
                                    <th>Item Form</th>
                                    <td class="text-content">Gel</td>
                                    <td class="text-content">Liquid</td>
                                    <td class="text-content">Gel</td>
                                    <td class="text-content">Gel</td>
                                </tr>

                                <tr>
                                    <th>Price</th>
                                    <td class="price text-content">$20.23</td>
                                    <td class="price text-content">$26.90</td>
                                    <td class="price text-content">$12.23</td>
                                    <td class="price text-content">$15.85</td>
                                </tr>

                                <tr>
                                    <th>Availability</th>
                                    <td class="text-content">In Stock</td>
                                    <td class="text-content">In Stock</td>
                                    <td class="text-content">In Stock</td>
                                    <td class="text-content">In Stock</td>
                                </tr>

                                <tr>
                                    <th>Rating</th>
                                    <td>
                                        <div class="compare-rating">
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
                                            <span class="text-content">(20 Raring)</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="compare-rating">
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
                                            <span class="text-content">(25 Raring)</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="compare-rating">
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
                                            <span class="text-content">(50 Raring)</span>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="compare-rating">
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
                                            <span class="text-content">(30 Raring)</span>
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <th>Weight</th>
                                    <td class="text-content">5.00kg</td>
                                    <td class="text-content">1.00kg</td>
                                    <td class="text-content">0.75kg</td>
                                    <td class="text-content">0.50kg</td>
                                </tr>

                                <tr>
                                    <th>Purchase</th>
                                    <td>
                                        <button onclick="location.href = 'cart.html';"
                                            class="btn btn-animation btn-sm w-100">Add To Cart</button>
                                    </td>
                                    <td>
                                        <button onclick="location.href = 'cart.html';"
                                            class="btn btn-animation btn-sm w-100">Add To Cart</button>
                                    </td>
                                    <td>
                                        <button onclick="location.href = 'cart.html';"
                                            class="btn btn-animation btn-sm w-100">Add To Cart</button>
                                    </td>
                                    <td>
                                        <button onclick="location.href = 'cart.html';"
                                            class="btn btn-animation btn-sm w-100">Add To Cart</button>
                                    </td>
                                </tr>

                                <tr>
                                    <th></th>
                                    <td>
                                        <a href="javascript:void(00" class="text-content remove_column"><i
                                                class="fa-solid fa-trash-can me-2"></i> Remove</a>
                                    </td>
                                    <td>
                                        <a href="javascript:void(00" class="text-content remove_column"><i
                                                class="fa-solid fa-trash-can me-2"></i> Remove</a>
                                    </td>
                                    <td>
                                        <a href="javascript:void(00" class="text-content remove_column"><i
                                                class="fa-solid fa-trash-can me-2"></i> Remove</a>
                                    </td>
                                    <td>
                                        <a href="javascript:void(00" class="text-content remove_column"><i
                                                class="fa-solid fa-trash-can me-2"></i> Remove</a>
                                    </td>
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
</body>

</html>