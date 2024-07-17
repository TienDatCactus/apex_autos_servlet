<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <title>Sign Up</title>

        <!-- Google font -->
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
            rel="stylesheet" />

        <!-- bootstrap css -->
        <link id="rtl-link" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/vendors/bootstrap.css" />

        <!-- font-awesome css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/vendors/font-awesome.css" />

        <!-- feather icon css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/vendors/feather-icon.css" />

        <!-- slick css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/vendors/slick/slick.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/vendors/slick/slick-theme.css" />

        <!-- Iconly css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/bulk-style.css" />

        <!-- Template css -->
        <link id="color-link" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front-end/assets/css/style.css" />
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

        <jsp:include page="pre-header.jsp"></jsp:include>

            <!-- mobile fix menu start -->
            <div class="mobile-menu d-md-none d-block mobile-cart">
                <ul>
                    <li class="active">
                        <a href="home">
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

                    <!-- <li>
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
                </li> -->
                </ul>
            </div>
            <!-- mobile fix menu end -->

            <!-- Breadcrumb Section Start -->
            <section class="breadscrumb-section pt-0 ">
                <div class="container-fluid-lg">
                    <div class="row">
                        <div class="col-12">
                            <div class="breadscrumb-contain py-3">
                                <h2 class="mb-2">Đăng kí</h2>
                                <nav>
                                    <ol class="breadcrumb mb-0">
                                        <li class="breadcrumb-item">
                                            <a href="home">
                                                <i class="fa-solid fa-house"></i>
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item active">Đăng kí</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- log in section start -->
            <section class="log-in-section section-b-space">
                <div class="container-fluid-lg w-100">
                    <div class="row">
                        <!-- <div class="col-xxl-6 col-xl-5 col-lg-6 d-lg-block d-none ms-auto">
                      <div class="image-contain">
                        <img src="${pageContext.request.contextPath}/front-end/assets/images/inner-page/sign-up.png" class="img-fluid" alt="" />
                      </div>
                    </div> -->

                    <div class="col-xxl-4 col-xl-4 col-lg-6 col-sm-8 mx-auto w-60">
                        <div class="log-in-box">
                            <div class="log-in-title">
                                <h3>Chào mừng đến với <b>ApexAutos</b></h3>
                                <h5>Đăng nhập vào tài khoản của bạn</h5>
                            </div>

                            <div class="input-box">
                                <form class="row g-2" id="form-1" method="post" action="mail?action=register">
                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating input email-input">
                                            <input type="text" name="email" class="form-control input " id="email"
                                                   placeholder="Địa chỉ Email" />
                                            <label for="email">Địa chỉ Email</label>
                                            <span class="form-msg"></span>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating input password-input">
                                            <input type="password" name="password" class="form-control input" id="password"
                                                   placeholder="Mật khẩu" />
                                            <label for="password">Mật khẩu</label>
                                            <span class="form-msg"></span>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating theme-form-floating input password-input">
                                            <input type="password" class="form-control input" id="re-password" name="re-password"
                                                   placeholder="Nhập lại mật khẩu" />
                                            <label for="re-password">Nhập lại mật khẩu</label>
                                            <span class="form-msg"></span>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="forgot-box mb-2">
                                            <div class="form-check ps-0 m-0 remember-box">

                                                <input class="checkbox_animated check-box terms" type="checkbox" id="flexCheckDefault" />
                                                <label class="form-check-label" for="flexCheckDefault">Tôi đồng ý với <span>Điều khoản dịch vụ</span> và
                                                    <span>Chính sách bảo mật</span></label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <input class="button-38 w-100 justify-content-center" type="submit" value="Đăng kí">
                                        <!-- this must be change to a button -->
                                        <% if (request.getAttribute("errorMessage") !=null) { %>
                                        <script>
                                            alert('<%= request.getAttribute("errorMessage") %>');
                                        </script>
                                        <% } %>
                                    </div>
                                </form>
                            </div>

                            <div class="other-log-in">
                                <h6></h6>
                            </div>

                            <div class="sign-up-box">
                                <h4>Bạn đã có tài khoản ?</h4>
                                <a href="login">Đăng nhập</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-xxl-7 col-xl-6 col-lg-6"></div>
                </div>
            </div>
        </section>
        <!-- log in section end -->

        <!-- Footer Section Start -->
        <jsp:include page="footer.jsp"></jsp:include>
            <!-- Footer Section End -->

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

        <!-- Bootstrap js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/bootstrap/popper.min.js"></script>

        <!-- feather icon js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/feather/feather.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/feather/feather-icon.js"></script>

        <!-- Slick js-->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/slick.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/slick-animation.min.js"></script>
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/custom_slick.js"></script>

        <!-- Lazyload Js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/lazysizes.min.js"></script>

        <!-- script js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/script.js"></script>

        <!-- validation.js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/valid.js"></script>
        <script>
                                            validator({
                                                form: "#form-1",
                                                inputSelector: ".input",
                                                errorSelector: ".form-msg",
                                                rules: [
                                                    // validator.isRequired("input[type=radio]"),
                                                    // validator.isRequired("input[type=file]"),
                                                    // validator.isRequired("select"),
                                                    validator.isRequired("#email"),
                                                    validator.isEmail("#email"),
                                                    validator.minLength("#password", 6),
                                                    validator.isRequired("#password"),
                                                    validator.checkPass("#re-password", function () {
                                                        return document.querySelector("#form-1 #password").value;
                                                    }),
                                                ],

                                            });

                                            const termAccept = document.querySelector('.terms');

                                            ["change", "DOMContentLoaded"].forEach((e) => document.addEventListener(e, function () {
                                                    if (termAccept.checked) {
                                                        document.querySelector("input[type='submit']").style = "opacity: 1; cursor: pointer;";
                                                        document.querySelector("input[type='submit']").disabled = false;
                                                    } else {
                                                        document.querySelector("input[type='submit']").style = "opacity: 0.6; cursor: not-allowed;pointer-events: none;";
                                                        document.querySelector("input[type='submit']").disabled = true;
                                                    }
                                                }))
        </script>
    </body>

</html>