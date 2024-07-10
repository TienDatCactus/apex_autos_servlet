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
                            <h2>Checkout</h2>
                            <nav>
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item">
                                        <a href="index.html">
                                            <i class="fa-solid fa-house"></i>
                                        </a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Checkout</li>
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
                                                <h4>Delivery Address</h4>
                                            </div>

                                            <div class="checkout-detail">
                                                <div class="row g-4">
                                                    <div class="col-xxl-6 col-lg-12 col-md-6">
                                                        <div class="delivery-address-box">
                                                            <div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" name="jack"
                                                                           id="flexRadioDefault1">
                                                                </div>

                                                                <div class="label">
                                                                    <label>Home</label>
                                                                </div>

                                                                <ul class="delivery-address-detail">
                                                                    <li>
                                                                        <h4 class="fw-500">Jack Jennas</h4>
                                                                    </li>

                                                                    <li>
                                                                        <p class="text-content"><span
                                                                                class="text-title">Address
                                                                                : </span>8424 James Lane South San
                                                                            Francisco, CA 94080</p>
                                                                    </li>

                                                                    <li>
                                                                        <h6 class="text-content"><span
                                                                                class="text-title">Pin Code
                                                                                :</span> +380</h6>
                                                                    </li>

                                                                    <li>
                                                                        <h6 class="text-content mb-0"><span
                                                                                class="text-title">Phone
                                                                                :</span> + 380 (0564) 53 - 29 - 68</h6>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-xxl-6 col-lg-12 col-md-6">
                                                        <div class="delivery-address-box">
                                                            <div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" name="jack"
                                                                           id="flexRadioDefault2" checked="checked">
                                                                </div>

                                                                <div class="label">
                                                                    <label>Office</label>
                                                                </div>

                                                                <ul class="delivery-address-detail">
                                                                    <li>
                                                                        <h4 class="fw-500">Jack Jennas</h4>
                                                                    </li>

                                                                    <li>
                                                                        <p class="text-content"><span
                                                                                class="text-title">Address
                                                                                :</span>Nakhimovskiy R-N / Lastovaya Ul.,
                                                                            bld. 5/A, appt. 12
                                                                        </p>
                                                                    </li>

                                                                    <li>
                                                                        <h6 class="text-content"><span
                                                                                class="text-title">Pin Code :</span>
                                                                            +380</h6>
                                                                    </li>

                                                                    <li>
                                                                        <h6 class="text-content mb-0"><span
                                                                                class="text-title">Phone
                                                                                :</span> + 380 (0564) 53 - 29 - 68</h6>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
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
                                                <h4>Payment Option</h4>
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
                                        <h3>Order Summary</h3>
                                    </div>
                                    <ul class="summery-contain">
                                        <c:forEach var="ci" items="${cartItems}">
                                            <li>
                                                <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/1.png" class="img-fluid blur-up lazyloaded checkout-image" alt="">
                                                <h4>${ci.car.name}<span>X 1</span></h4>
                                                <h4 id="pricee" class="price">${ci.car.price}</h4>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                    <ul class="summery-total">
                                        <li>
                                            <h4>Total Price</h4>
                                            <h4 id="Subtotal" class="price">$0.00</h4>
                                        </li>
                                        <li>
                                            <h3 class="price">Free Shipping</h3>
                                        </li>
                                        <li class="list-total">
                                            <h4>Total Price</h4>
                                            <h4 id="priceTotal" class="price">$0.00</h4>
                                        </li>
                                        <li class="list-total">
                                            <h4>Deposit (10% of total order value)</h4>
                                            <h4 id="Pricee" class="price">$0.00</h4>
                                        </li>
                                    </ul>
                                </div>
                                <button class="btn theme-bg-color text-white btn-md w-100 mt-4 fw-bold" type="submit">Pay</button>
                            </div>
                        </form>
                    </div>




                </div>
            </div>
        </section>
        <!-- Checkout section End -->

        <!-- Footer Section Start -->
          <jsp:include page="footer.jsp"></jsp:include>
        <!-- Footer Section End -->

        <!--         Location Modal Start 
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
                </div>-->
        <!-- Location Modal End -->

        <!--         Add address modal box start 
                <div class="modal fade theme-modal" id="add-address" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel1">Add a new address</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                    <i class="fa-solid fa-xmark"></i>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-floating mb-4 theme-form-floating">
                                        <input type="text" class="form-control" id="fname" placeholder="Enter First Name">
                                        <label for="fname">First Name</label>
                                    </div>
                                </form>
        
                                <form>
                                    <div class="form-floating mb-4 theme-form-floating">
                                        <input type="text" class="form-control" id="lname" placeholder="Enter Last Name">
                                        <label for="lname">Last Name</label>
                                    </div>
                                </form>
        
                                <form>
                                    <div class="form-floating mb-4 theme-form-floating">
                                        <input type="email" class="form-control" id="email" placeholder="Enter Email Address">
                                        <label for="email">Email Address</label>
                                    </div>
                                </form>
        
                                <form>
                                    <div class="form-floating mb-4 theme-form-floating">
                                        <textarea class="form-control" placeholder="Leave a comment here" id="address"
                                                  style="height: 100px"></textarea>
                                        <label for="address">Enter Address</label>
                                    </div>
                                </form>
        
                                <form>
                                    <div class="form-floating mb-4 theme-form-floating">
                                        <input type="email" class="form-control" id="pin" placeholder="Enter Pin Code">
                                        <label for="pin">Pin Code</label>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary btn-md" data-bs-dismiss="modal">Close</button>
                                <button type="button" class="btn theme-bg-color btn-md text-white" data-bs-dismiss="modal">Save
                                    changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                 Add address modal box end 
        
                 Deal Box Modal Start 
                <div class="modal fade theme-modal deal-modal" id="deal-box" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
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
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/10.png" class="blur-up lazyload"
                                                         alt="">
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
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/11.png" class="blur-up lazyload"
                                                         alt="">
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
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/12.png" class="blur-up lazyload"
                                                         alt="">
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
                                                    <img src="${pageContext.request.contextPath}/front-end/assets/images/vegetable/product/13.png" class="blur-up lazyload"
                                                         alt="">
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
                 Deal Box Modal End -->

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
                let totalCart = 0;
                totalPriceOfEachProduct.forEach(e => {
                    let totalPrice = parseFloat(e.textContent.trim());
                    totalCart += totalPrice;
                });
                document.querySelector('#Subtotal').innerHTML = totalCart;
                document.querySelector('#priceTotal').innerHTML = totalCart;
                document.querySelector('#totalAmount').value = totalCart;
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
        <script>
            window.onload = function () {
                updateSubTotal();
            };

            function updateSubTotal() {
                let totalPriceOfEachProduct = document.querySelectorAll('h4#pricee');
                let totalCart = 0;
                totalPriceOfEachProduct.forEach(e => {
                    let totalPrice = parseFloat(e.textContent.trim());
                    totalCart += totalPrice;
                });
                let deposit = totalCart * 0.10;

                document.querySelector('#Subtotal').innerHTML = totalCart;
                document.querySelector('#priceTotal').innerHTML = totalCart;
                document.querySelector('#Pricee').innerHTML = deposit;
                document.querySelector('#totalAmount').value = deposit;
            }
        </script>
    </body>

</html>