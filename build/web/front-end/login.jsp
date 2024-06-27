
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
            <link
                rel="apple-touch-icon"
                sizes="180x180"
                href="${pageContext.request.contextPath}/front-end/assets/images/favicon/apple-touch-icon.png"
                />
            <link
                rel="icon"
                type="image/png"
                sizes="32x32"
                href="${pageContext.request.contextPath}/front-end/assets/images/favicon/favicon-32x32.png"
                />
            <link
                rel="icon"
                type="image/png"
                sizes="16x16"
                href="${pageContext.request.contextPath}/front-end/assets/images/favicon/favicon-16x16.png"
                />
            <link
                rel="manifest"
                href="${pageContext.request.contextPath}/front-end/assets/images/favicon/site.webmanifest"
                />
            <script src="https://www.google.com/recaptcha/api.js" async defer></script>

            <title>Log In</title>

            <!-- Google font -->
            <link rel="preconnect" href="https://fonts.gstatic.com" />
            <link
                href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
                rel="stylesheet"
                />

            <!-- bootstrap css -->
            <link
                id="rtl-link"
                rel="stylesheet"
                type="text/css"
                href="${pageContext.request.contextPath}/front-end/assets/css/vendors/bootstrap.css"
                />

            <!-- font-awesome css -->
            <link
                rel="stylesheet"
                type="text/css"
                href="${pageContext.request.contextPath}/front-end/assets/css/vendors/font-awesome.css"
                />

            <!-- feather icon css -->
            <link
                rel="stylesheet"
                type="text/css"
                href="${pageContext.request.contextPath}/front-end/assets/css/vendors/feather-icon.css"
                />

            <!-- slick css -->
            <link
                rel="stylesheet"
                type="text/css"
                href="${pageContext.request.contextPath}/front-end/assets/css/vendors/slick/slick.css"
                />
            <link
                rel="stylesheet"
                type="text/css"
                href="${pageContext.request.contextPath}/front-end/assets/css/vendors/slick/slick-theme.css"
                />

            <!-- Iconly css -->
            <link
                rel="stylesheet"
                type="text/css"
                href="${pageContext.request.contextPath}/front-end/assets/css/bulk-style.css"
                />

            <!-- Template css -->
            <link
                id="color-link"
                rel="stylesheet"
                type="text/css"
                href="${pageContext.request.contextPath}/front-end/assets/css/style.css"
                />
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
            <section class="breadscrumb-section pt-0">
                <div class="container-fluid-lg">
                    <div class="row">
                        <div class="col-12">
                            <div class="breadscrumb-contain py-3">
                                <h2 class="mb-2">Log In</h2>
                                <nav>
                                    <ol class="breadcrumb mb-0">
                                        <li class="breadcrumb-item">
                                            <a href="index.html">
                                                <i class="fa-solid fa-house"></i>
                                            </a>
                                        </li>
                                        <li class="breadcrumb-item active">Log In</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Section End -->

            <!-- log in section start -->
            <section class="log-in-section background-image-2 section-b-space">
                <div class="container-fluid-lg w-100">
                    <div class="row">
                        <!-- <div class="col-xxl-6 col-xl-6 col-lg-6 d-lg-block d-none ms-auto">
                        <div class="image-contain">
                          <img src="${pageContext.request.contextPath}/front-end/assets/images/svg/undraw_electric_car_b-7-hl.svg" class="img-fluid" alt="" />
                        </div>
                      </div> -->

                        <div class="col-xxl-4 col-xl-4 col-lg-6 col-sm-8 mx-auto w-60">
                            <div class="log-in-box">
                                <div class="log-in-title">
                                    <h3>Welcome To <b>ApexAutos</b></h3>
                                    <h4>Log In Your Account</h4>
                                </div>

                                <div class="input-box">
                                    <form class="row g-3" id="form-1" action="login" method="post">
                                        <div class="col-12">
                                            <div
                                                class="form-floating theme-form-floating log-in-form input email-input"
                                                >
                                                <input
                                                    type="text"
                                                    name="email"
                                                    class="form-control input"
                                                    id="email"
                                                    placeholder="Email Address"
                                                    />
                                                <label for="email">Email Address</label>
                                                <span class="form-msg"></span>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div
                                                class="form-floating theme-form-floating log-in-form input password-input"
                                                >
                                                <input
                                                    type="password"
                                                    name="password"
                                                    class="form-control input"
                                                    id="password"
                                                    placeholder="Password"
                                                    />
                                                <label for="password">Password</label>
                                                <span class="form-msg"></span>
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <div class="forgot-box">
                                                <div class="form-check ps-0 m-0 remember-box">
                                                    <div
                                                        class="g-recaptcha"
                                                        data-sitekey="6LffcP0pAAAAAHWTRvMg8focK-ItBi8dPEKKR4yT"
                                                        ></div>
                                                </div>
                                                <a href="mail" class="forgot-password"
                                                   >Forgot Password?</a
                                                >
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <input
                                                class="button-38 w-100 justify-content-center"
                                                value="Login"
                                                type="submit"
                                                />
                                        </div>
                                        <c:if test="${not empty errorMessage}">
                                            <div class="alert alert-danger">${errorMessage}</div>
                                        </c:if>
                                    </form>
                                </div>

                                <div class="other-log-in">
                                    <h6>or</h6>
                                </div>

                                <div class="log-in-button">
                                    <ul>
                                        <li>
                                            <a
                                                href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile%20openid&redirect_uri=http://localhost:8080/apex_autos_servlet/LoginGoogleHandler&response_type=code
                                                &client_id=230536205740-9e80cs0d1mp22glhj7vv2utv20iubva6.apps.googleusercontent.com&approval_prompt=force"
                                                class="button-38 google-button w-100 h-100"
                                                >
                                                <img
                                                    src="${pageContext.request.contextPath}/front-end/assets/images/inner-page/google.png"
                                                    class="blur-up lazyload"
                                                    alt=""
                                                    />
                                                Log In with Google
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="other-log-in">
                                    <h6></h6>
                                </div>

                                <div class="sign-up-box">
                                    <h4>Don't have an account?</h4>
                                    <a href="register">Sign Up</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- log in section end -->

          
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
            <script>
                <c:if test="${not empty successMessageVerify}">
        alert('${successMessageVerify}');
                </c:if>;
            </script>
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
                    ],
                });

                document.addEventListener("DOMContentLoaded", function () {
                    const form = document.querySelector("#form-1");
                    const resp = grecaptcha.getResponse();
                    console.log(resp);
                    form.addEventListener("submit", function (e) {
                        if (!resp) {
                            e.preventDefault();
                            alert("Please verify the captcha");
                        }
                    });

                    // Check CAPTCHA and toggle submit button on reCAPTCHA load and change
                    document
                            .querySelector(".g-recaptcha")
                            .addEventListener("change", function () {
                                checkCaptcha();
                            });

                    checkCaptcha();
                });

                function checkCaptcha() {
                    const resp = grecaptcha.getResponse();
                    const submitButton = document.querySelector("input[type='submit']");
                    if (resp) {
                        submitButton.style = "opacity: 1; cursor: pointer;";
                        submitButton.disabled = false;
                    } else {
                        submitButton.style =
                                "opacity: 0.6; cursor: not-allowed; pointer-events: none;";
                        submitButton.disabled = true;
                    }
                }
            </script>
        </body>
    </html>
