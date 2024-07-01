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
        <title>Product Right Thumbnail</title>

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

                                <h2>${carDT.name}</h2>
                            <nav>
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item">
                                        <a href="index.html">
                                            <i class="fa-solid fa-house"></i>
                                        </a>
                                    </li>

                                    <li class="breadcrumb-item active">${carDT.name}</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Product Left Sidebar Start -->
        <section class="product-section">
            <div class="container-fluid-lg">
                <div class="row">
                    <div class="col-xxl-9 col-xl-8 col-lg-7 wow fadeInUp">
                        <div class="row g-4">
                            <c:forEach items="${carImage}" var="ci">

                                <c:if test="${not empty ci.image_url}">
                                    <c:set var="mainImage" value="${ci.image_url}"/>
                                    <c:set var="hasImages" value="true"/>
                                </c:if>
                            </c:forEach>
                            <div class="col-xl-6">
                                <div class="product-left-box">
                                    <div class="row g-sm-4 g-2">
                                        <div class="col-12 wow fadeInUp">
                                            <c:forEach var="ci" items="${carImage}">
                                                <c:if test="${ci.car_id eq carDT.car_id}">
                                                    <c:forEach var="im" items="${ci.image_url}">
                                                        <div class="slider-image my-1">
                                                            <img id="img-${carDT.car_id}" src="${im}" alt="img-${carDT.car_id}" class="
                                                                 img-fluid image_zoom_cls-3 blur-up lazyload rounded">
                                                        </div>
                                                    </c:forEach>
                                                </c:if>

                                            </c:forEach>

                                        </div>




                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="right-box-contain">

                                    <h2 class="name">${carDT.name}</h2>
                                    <div class="price-rating">
                                        <h3 class="theme-color price">${carDT.price} <del class="text-content">$90.00</del> <span
                                                class="offer theme-color">(20% off)</span></h3>
                                        <div class="product-rating custom-rate">
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

                                        </div>
                                    </div>



                                    <div class="product-packege">
                                        <div class="product-title">
                                            <h4>Weight</h4>
                                        </div>
                                        <div class="button-83 col-4 p-3 " >${carDT.weight} Kg</div>
                                    </div>

                                    <div class="time deal-timer product-deal-timer mx-md-0 mx-auto" id="clockdiv-1"
                                         data-hours="1" data-minutes="2" data-seconds="3">
                                        <div class="product-title">
                                            <h4>Hurry up! Sales Ends In</h4>
                                        </div>
                                        <ul>
                                            <li>
                                                <div class="counter d-block">
                                                    <div class="days d-block">
                                                        <h5></h5>
                                                    </div>
                                                    <h6>Days</h6>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="counter d-block">
                                                    <div class="hours d-block">
                                                        <h5></h5>
                                                    </div>
                                                    <h6>Hours</h6>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="counter d-block">
                                                    <div class="minutes d-block">
                                                        <h5></h5>
                                                    </div>
                                                    <h6>Min</h6>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="counter d-block">
                                                    <div class="seconds d-block">
                                                        <h5></h5>
                                                    </div>
                                                    <h6>Sec</h6>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="note-box product-packege">
                                        <form method="post" id="form-cart-${cl.car_id}" class="w-75" action="home?state=cart&action=addtocart&item=${cl.car_id}">
                                            <button onclick='${sessionScope.user != null ? "document.getElementById('form-cart-${cl.car_id}').submit()" : 'location.href="login"'}'
                                                    class = "button-86 text-white w-75 ">Add To Cart</button>
                                        </form>
                                    </div>
                                    <div class="buy-box">

                                        <a href="compare.html">
                                            <i data-feather="shuffle"></i>
                                            <span>Add To Compare</span>
                                        </a>
                                    </div>

                                    <div class="pickup-box">
                                        <div class="product-title">
                                            <h4>Car Information</h4>
                                        </div>



                                        <div class="product-info">
                                            <ul class="product-info-list product-info-list-2">
                                                <li>Cylinders : <a href="javascript:void(0)">${carDT.cylinders}</a></li>
                                                <li>Horsepower : <a href="javascript:void(0)">${carDT.horsepower}</a></li>
                                                <li>Weight : <a href="javascript:void(0)">${carDT.weight}</a></li>
                                                <li>Acceleration : <a href="javascript:void(0)">${carDT.acceleration}</a></li>
                                                <li>Model year : <a href="javascript:void(0)" >${carDT.model_year}</a></li>
                                                <li>Origin : <a href="javascript:void(0)">${carDT.origin}</a></li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="paymnet-option">
                                        <div class="product-title">
                                            <h4>Guaranteed Safe Checkout</h4>
                                        </div>
                                        <ul>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/product/payment/1.svg"
                                                         class="blur-up lazyload" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/product/payment/2.svg"
                                                         class="blur-up lazyload" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/product/payment/3.svg"
                                                         class="blur-up lazyload" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/product/payment/4.svg"
                                                         class="blur-up lazyload" alt="">
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/product/payment/5.svg"
                                                         class="blur-up lazyload" alt="">
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="product-section-box">
                                    <ul class="nav nav-tabs custom-nav" id="myTab" role="tablist">
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link active" id="description-tab" data-bs-toggle="tab"
                                                    data-bs-target="#description" type="button" role="tab"
                                                    aria-controls="description" aria-selected="true">Description</button>
                                        </li>



                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="care-tab" data-bs-toggle="tab"
                                                    data-bs-target="#care" type="button" role="tab" aria-controls="care"
                                                    aria-selected="false">Care Instuctions</button>
                                        </li>


                                    </ul>

                                    <div class="tab-content custom-tab" id="myTabContent">
                                        <div class="tab-pane fade show active" id="description" role="tabpanel"
                                             aria-labelledby="description-tab">
                                            <div class="product-description">
                                                <div class="nav-desh">
                                                    <p>${carDT.description}</p>
                                                </div>



                                                <div class="banner-contain nav-desh">
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/banner/14.jpg"
                                                         class="bg-img blur-up lazyload" alt="">
                                                    <div class="banner-details p-center banner-b-space w-100 text-center">
                                                        <div>
                                                            <h6 class="ls-expanded theme-color mb-sm-3 mb-1">SUMMER</h6>
                                                            <h2>VEGETABLE</h2>
                                                            <p class="mx-auto mt-1">Save up to 20% OFF</p>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="nav-desh">
                                                    <div class="desh-title">
                                                        <h5>From The Manufacturer:</h5>
                                                    </div>
                                                    <p>Jelly beans shortbread chupa chups carrot cake jelly-o halvah apple
                                                        pie pudding gingerbread. Apple pie halvah cake tiramisu shortbread
                                                        cotton candy croissant chocolate cake. Tart cupcake caramels gummi
                                                        bears macaroon gingerbread fruitcake marzipan wafer. Marzipan
                                                        dessert cupcake ice cream tootsie roll. Brownie chocolate cake
                                                        pudding cake powder candy ice cream ice cream cake. Jujubes soufflé
                                                        chupa chups cake candy halvah donut. Tart tart icing lemon drops
                                                        fruitcake apple pie.</p>

                                                    <p>Dessert liquorice tart soufflé chocolate bar apple pie pastry danish
                                                        soufflé. Gummi bears halvah gingerbread jelly icing. Chocolate cake
                                                        chocolate bar pudding chupa chups bear claw pie dragée donut halvah.
                                                        Gummi bears cookie ice cream jelly-o jujubes sweet croissant.
                                                        Marzipan cotton candy gummi bears lemon drops lollipop lollipop
                                                        chocolate. Ice cream cookie dragée cake sweet roll sweet roll.Lemon
                                                        drops cookie muffin carrot cake chocolate marzipan gingerbread
                                                        topping chocolate bar. Soufflé tiramisu pastry sweet dessert.</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="tab-pane fade" id="info" role="tabpanel" aria-labelledby="info-tab">
                                            <div class="table-responsive">
                                                <table class="table info-table">
                                                    <tbody>
                                                        <tr>
                                                            <td>Specialty</td>
                                                            <td>Vegetarian</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Ingredient Type</td>
                                                            <td>Vegetarian</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Brand</td>
                                                            <td>Lavian Exotique</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Form</td>
                                                            <td>Bar Brownie</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Package Information</td>
                                                            <td>Box</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Manufacturer</td>
                                                            <td>Prayagh Nutri Product Pvt Ltd</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Item part number</td>
                                                            <td>LE 014 - 20pcs Crème Bakes (Pack of 2)</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Net Quantity</td>
                                                            <td>40.00 count</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>

                                        <div class="tab-pane fade" id="care" role="tabpanel" aria-labelledby="care-tab">
                                            <div class="information-box">
                                                <ul>
                                                    <li>Regularly Check and Change Engine Oil: Engine oil is the 
                                                        lifeblood of your car's engine, helping to lubricate moving parts 
                                                        and reduce friction. Check the oil level regularly and change it according 
                                                        to the manufacturer's recommendations, usually every 5,000 to 10,000 km.</li>

                                                    <li>Inspect the Cooling System: Your car's engine needs proper cooling to prevent 
                                                        overheating. Check the coolant
                                                        level and top it up if necessary. Also, ensure 
                                                        the cooling system is free from leaks.</li>

                                                    <li>Check Tires: Tires should be inflated to the correct pressure and
                                                        inspected for even wear. Rotate the tires regularly to ensure they wear
                                                        evenly and last longer.</li>

                                                    <li>Check Brakes: The braking system is crucial for safe driving. Inspect the brake pads and discs for wear and replace them when necessary.

                                                    </li>

                                                    <li>Enjoy your car!</li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                                            <div class="review-box">
                                                <div class="row g-4">
                                                    <div class="col-xl-6">
                                                        <div class="review-title">
                                                            <h4 class="fw-500">Customer reviews</h4>
                                                        </div>

                                                        <div class="d-flex">
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
                                                                        <i data-feather="star"></i>
                                                                    </li>
                                                                    <li>
                                                                        <i data-feather="star"></i>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <h6 class="ms-3">4.2 Out Of 5</h6>
                                                        </div>

                                                        <div class="rating-box">
                                                            <ul>
                                                                <li>
                                                                    <div class="rating-list">
                                                                        <h5>5 Star</h5>
                                                                        <div class="progress">
                                                                            <div class="progress-bar" role="progressbar"
                                                                                 style="width: 68%" aria-valuenow="100"
                                                                                 aria-valuemin="0" aria-valuemax="100">
                                                                                68%
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="rating-list">
                                                                        <h5>4 Star</h5>
                                                                        <div class="progress">
                                                                            <div class="progress-bar" role="progressbar"
                                                                                 style="width: 67%" aria-valuenow="100"
                                                                                 aria-valuemin="0" aria-valuemax="100">
                                                                                67%
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="rating-list">
                                                                        <h5>3 Star</h5>
                                                                        <div class="progress">
                                                                            <div class="progress-bar" role="progressbar"
                                                                                 style="width: 42%" aria-valuenow="100"
                                                                                 aria-valuemin="0" aria-valuemax="100">
                                                                                42%
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="rating-list">
                                                                        <h5>2 Star</h5>
                                                                        <div class="progress">
                                                                            <div class="progress-bar" role="progressbar"
                                                                                 style="width: 30%" aria-valuenow="100"
                                                                                 aria-valuemin="0" aria-valuemax="100">
                                                                                30%
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="rating-list">
                                                                        <h5>1 Star</h5>
                                                                        <div class="progress">
                                                                            <div class="progress-bar" role="progressbar"
                                                                                 style="width: 24%" aria-valuenow="100"
                                                                                 aria-valuemin="0" aria-valuemax="100">
                                                                                24%
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <div class="col-xl-6">
                                                        <div class="review-title">
                                                            <h4 class="fw-500">Add a review</h4>
                                                        </div>

                                                        <div class="row g-4">
                                                            <div class="col-md-6">
                                                                <div class="form-floating theme-form-floating">
                                                                    <input type="text" class="form-control" id="name"
                                                                           placeholder="Name">
                                                                    <label for="name">Your Name</label>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="form-floating theme-form-floating">
                                                                    <input type="email" class="form-control" id="email"
                                                                           placeholder="Email Address">
                                                                    <label for="email">Email Address</label>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="form-floating theme-form-floating">
                                                                    <input type="url" class="form-control" id="website"
                                                                           placeholder="Website">
                                                                    <label for="website">Website</label>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="form-floating theme-form-floating">
                                                                    <input type="url" class="form-control" id="review1"
                                                                           placeholder="Give your review a title">
                                                                    <label for="review1">Review Title</label>
                                                                </div>
                                                            </div>

                                                            <div class="col-12">
                                                                <div class="form-floating theme-form-floating">
                                                                    <textarea class="form-control"
                                                                              placeholder="Leave a comment here"
                                                                              id="floatingTextarea2"
                                                                              style="height: 150px"></textarea>
                                                                    <label for="floatingTextarea2">Write Your
                                                                        Comment</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-12">
                                                        <div class="review-title">
                                                            <h4 class="fw-500">Customer questions & answers</h4>
                                                        </div>

                                                        <div class="review-people">
                                                            <ul class="review-list">
                                                                <li>
                                                                    <div class="people-box">
                                                                        <div>
                                                                            <div class="people-image">
                                                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/review/1.jpg"
                                                                                     class="img-fluid blur-up lazyload"
                                                                                     alt="">
                                                                            </div>
                                                                        </div>

                                                                        <div class="people-comment">
                                                                            <a class="name"
                                                                               href="javascript:void(0)">Tracey</a>
                                                                            <div class="date-time">
                                                                                <h6 class="text-content">14 Jan, 2022 at
                                                                                    12.58 AM</h6>

                                                                                <div class="product-rating">
                                                                                    <ul class="rating">
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"></i>
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>

                                                                            <div class="reply">
                                                                                <p>Icing cookie carrot cake chocolate cake
                                                                                    sugar plum jelly-o danish. Dragée dragée
                                                                                    shortbread tootsie roll croissant muffin
                                                                                    cake I love gummi bears. Candy canes ice
                                                                                    cream caramels tiramisu marshmallow cake
                                                                                    shortbread candy canes cookie.<a
                                                                                        href="javascript:void(0)">Reply</a>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="people-box">
                                                                        <div>
                                                                            <div class="people-image">
                                                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/review/2.jpg"
                                                                                     class="img-fluid blur-up lazyload"
                                                                                     alt="">
                                                                            </div>
                                                                        </div>

                                                                        <div class="people-comment">
                                                                            <a class="name"
                                                                               href="javascript:void(0)">Olivia</a>
                                                                            <div class="date-time">
                                                                                <h6 class="text-content">01 May, 2022 at
                                                                                    08.31 AM</h6>
                                                                                <div class="product-rating">
                                                                                    <ul class="rating">
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"></i>
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>

                                                                            <div class="reply">
                                                                                <p>Tootsie roll cake danish halvah powder
                                                                                    Tootsie roll candy marshmallow cookie
                                                                                    brownie apple pie pudding brownie
                                                                                    chocolate bar. Jujubes gummi bears I
                                                                                    love powder danish oat cake tart
                                                                                    croissant.<a
                                                                                        href="javascript:void(0)">Reply</a>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <div class="people-box">
                                                                        <div>
                                                                            <div class="people-image">
                                                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/review/3.jpg"
                                                                                     class="img-fluid blur-up lazyload"
                                                                                     alt="">
                                                                            </div>
                                                                        </div>

                                                                        <div class="people-comment">
                                                                            <a class="name"
                                                                               href="javascript:void(0)">Gabrielle</a>
                                                                            <div class="date-time">
                                                                                <h6 class="text-content">21 May, 2022 at
                                                                                    05.52 PM</h6>

                                                                                <div class="product-rating">
                                                                                    <ul class="rating">
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"
                                                                                               class="fill"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"></i>
                                                                                        </li>
                                                                                        <li>
                                                                                            <i data-feather="star"></i>
                                                                                        </li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>

                                                                            <div class="reply">
                                                                                <p>Biscuit chupa chups gummies powder I love
                                                                                    sweet pudding jelly beans. Lemon drops
                                                                                    marzipan apple pie gingerbread macaroon
                                                                                    croissant cotton candy pastry wafer.
                                                                                    Carrot cake halvah I love tart caramels
                                                                                    pudding icing chocolate gummi bears.
                                                                                    Gummi bears danish cotton candy muffin
                                                                                    marzipan caramels awesome feel. <a
                                                                                        href="javascript:void(0)">Reply</a>
                                                                                </p>
                                                                            </div>
                                                                        </div>
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
                            </div>
                        </div>
                    </div>

                    <div class="col-xxl-3 col-xl-4 col-lg-5 d-none d-lg-block wow fadeInUp">
                        <div class="right-sidebar-box">
                            <div class="vendor-box">
                                <div class="verndor-contain">
                                    <div class="vendor-image">
                                        <c:forEach items="${tradeMark.url_logo}" var="obj">

                                            <img src="${obj}"  alt="Car Image" class="card-img-top blur-up lazyload rounded"  style="object-fit: cover;max-width: 100%;border-radius: 50%">

                                        </c:forEach>
                                    </div>

                                    <div class="vendor-name">
                                        <h5>
                                            <a href="#">
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

                                <p class="vendor-detail">Noodles & Company is an American fast-casual
                                    restaurant that offers international and American noodle dishes and pasta.</p>

                                <div class="vendor-list">
                                    <ul>
                                        <li>
                                            <div class="address-contact">
                                                <i data-feather="map-pin"></i>
                                                <h5>Privacy: <span class="text-content">${tradeMark.privacy}</span></h5>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="address-contact">
                                                <i data-feather="headphones"></i>
                                                <h5>Terms: <span class="text-content">${tradeMark.terms}</span></h5>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <!-- Trending Product -->
                            <div class="pt-25">
                                <div class="category-menu">
                                    <h3>Trending Products</h3>

                                    <ul class="product-list product-right-sidebar border-0 p-0">
                                        <c:forEach items="${carTrending}" var="ct">
                                            <li>
                                                <div class="offer-product">
                                                    <a href="product-left-thumbnail.html" class="offer-image">

                                                        <c:set var="firstImagePrinted" value="false" />
                                                        <c:forEach items="${carImage}" var="ci">
                                                            <c:if test="${ci.car_id == ct.car_id}">
                                                                <c:forEach items="${ci.image_url}" var="obj">
                                                                    <c:if test="${not firstImagePrinted}">
                                                                        <img src="${obj}" alt="Car Image" 
                                                                             class="card-img-top "  style="object-fit: cover;max-width:100%; max-height: 100%;">
                                                                        <c:set var="firstImagePrinted" value="true" />
                                                                    </c:if>
                                                                </c:forEach>
                                                            </c:if> 
                                                        </c:forEach>
                                                    </a>
                                                    <div class="offer-detail">
                                                        <div>
                                                            <a href="product-left-thumbnail.html">
                                                                <h6 class="name">${ct.name}</h6>
                                                            </a>
                                                            <span>${ct.weight} kg</span>
                                                            <h6 class="price theme-color">${ct.price} $</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>

                            <!-- Banner Section -->
                            <div class="ratio_156 pt-25">
                                <div class="home-contain">
                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/banner/8.jpg" class="bg-img blur-up lazyload"
                                         alt="">
                                    <div class="home-detail p-top-left home-p-medium">
                                        <div>
                                            <h6 class="text-yellow home-banner">Seafood</h6>
                                            <h3 class="text-uppercase fw-normal"><span
                                                    class="theme-color fw-bold">Freshes</span> Products</h3>
                                            <h3 class="fw-light">every hour</h3>
                                            <button onclick="location.href = 'shop-left-sidebar.html';"
                                                    class="btn btn-animation btn-md fw-bold mend-auto">Shop Now <i
                                                    class="fa-solid fa-arrow-right icon"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Product Left Sidebar End -->

        <!-- Releted Product Section Start -->
        <section class="product-list-section section-b-space">
            <div class="container-fluid-lg">
                <div class="title">
                    <h2>Related Products</h2>
                    <span class="title-leaf">
                        <svg class="icon-width">
                        <use xlink:href="${pageContext.request.contextPath}/front-end/assets/svg/leaf.svg#leaf"></use>
                        </svg>
                    </span>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="slider-6_1 product-wrapper">
                            <c:forEach var="cl" items="${carList}">
                                <div>
                                    <div class="product-box-3 wow fadeInUp">
                                        <div class="product-header">
                                            <div class="product-image p-0">
                                                <a href="detail?id=${cl.car_id}">
                                                    <c:set var="firstImagePrinted" value="false" />
                                                    <c:forEach items="${carImage}" var="ci">
                                                        <c:if test="${ci.car_id == cl.car_id}">
                                                            <c:forEach items="${ci.image_url}" var="obj">
                                                                <c:if test="${not firstImagePrinted}">
                                                                    <img src="${obj}"  alt="Car Image" class="card-img-top rounded my-2"  style="object-fit: cover;max-width:100%; max-height: 100%;">
                                                                    <c:set var="firstImagePrinted" value="true" />
                                                                </c:if>
                                                            </c:forEach>
                                                        </c:if> 
                                                    </c:forEach>
                                                </a>

                                                <ul class="product-option">
                                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">
                                                        <a href="detail?id=${cl.car_id}" data-bs-toggle="modal"
                                                           data-bs-target="#view">
                                                            <i data-feather="eye"></i>
                                                        </a>
                                                    </li>

                                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">
                                                        <a href="compare.html">
                                                            <i data-feather="refresh-cw"></i>
                                                        </a>
                                                    </li>

                                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Cart">
                                                        <a href="wishlist.html" class="notifi-wishlist">
                                                            <i data-feather="shopping-cart"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="product-footer">
                                            <div class="product-detail">
                                                <c:forEach var="cb" items="${carBrand}">
                                                    <c:if test="${cl.brand_id == cb.id}">
                                                        <span class="span-name">${cb.name}</span>
                                                    </c:if>
                                                </c:forEach>
                                                <a href="product-left-thumbnail.html">
                                                    <h5 class="name">${cl.name}</h5>
                                                </a>
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
                                                            <i data-feather="star" class="fill"></i>
                                                        </li>
                                                    </ul>
                                                    <span>(5.0)</span>
                                                </div>
                                                <h6 class="unit">${cl.weight} Kg</h6>
                                                <h5 class="price"><span class="theme-color">$ ${cl.price}</span> <del>$ ${cl.price + 1000}</del>
                                                </h5>
                                                <c:if test="${not empty sessionScope.user}">
                                                    <div class="add-to-cart-box">
                                                        <form method="post" id="form-cart-${cl.car_id}" action="home?state=cart&action=addtocart&item=${cl.car_id}">
                                                            <button class="button-13 py-1 btn-add-cart addcart-button"  onclick="document.getElementById('form-cart-${cl.car_id}').submit()">Add
                                                            </button>
                                                        </form>
                                                    </div>
                                                </c:if>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Releted Product Section End -->

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
                                            Caramels marshmallow icing dessert candy canes I love soufflé I love toffee.
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

                                    <div class="select-size ">
                                        <h4>Cake Size :</h4>
                                        <select class="form-select select-form-size ">
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



        <!-- Add to cart Modal Start -->
        <div class="add-cart-box">
            <div class="add-iamge">
                <img src="${pageContext.request.contextPath}/front-end/assets/images/cake/pro/1.jpg" class="img-fluid" alt="">
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

        <!-- Sticky Cart Box Start -->
        <div class="sticky-bottom-cart">
            <div class="container-fluid-lg">
                <div class="row">
                    <div class="col-12">
                        <div class="cart-content">
                            <div class="product-image" style="
                                 width: 12%;
                                 ">
                                <c:set var="firstImagePrinted" value="false" />
                                <c:forEach items="${carImage}" var="ci">
                                    <c:if test="${ci.car_id == carDT.car_id}">
                                        <c:forEach items="${ci.image_url}" var="obj">
                                            <c:if test="${not firstImagePrinted}">
                                                <img src="${obj}"  alt="Car Image" class="img-fluid rounded"  style="object-fit: fill;width:100%; max-height: 100%;">
                                                <c:set var="firstImagePrinted" value="true" />
                                            </c:if>
                                        </c:forEach>
                                    </c:if> 
                                </c:forEach>
                                <div class="content">
                                    <h5>${carDT.name}</h5>
                                    <h6>${carDT.price}<del class="text-danger">$90.00</del><span>20% off</span></h6>
                                </div>
                            </div>

                            <div class="add-btn">
                                <a class="btn theme-bg-color text-white wishlist-btn" href="wishlist.html"><i
                                        class="fa fa-bookmark"></i> Wishlist</a>
                                <a class="button-86 text-white" href="cart.html"><i
                                        class="fas fa-shopping-cart"></i> Add To Cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sticky Cart Box End -->

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
        <script src="${pageContext.request.contextPath}/front-end/assets/js/custom-slick-animated.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/custom_slick.js"></script>

        <!-- Price Range Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/ion.rangeSlider.min.js"></script>

        <!-- sidebar open js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/filter-sidebar.js"></script>

        <!-- Quantity js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/quantity-2.js"></script>

        <!-- Zoom Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/jquery.elevatezoom.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/zoom-filter.js"></script>

        <!-- Timer Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/timer1.js"></script>

        <!-- Sticky-bar js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/sticky-cart-bottom.js"></script>

        <!-- WOW js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/wow.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/custom-wow.js"></script>

        <!-- script js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/script.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/valid.js"></script>


    </body>

</html>