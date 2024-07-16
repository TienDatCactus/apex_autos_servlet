<%-- 
    Document   : footer
    Created on : Jun 27, 2024, 8:25:18 PM
    Author     : Tiến_Đạt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Footer Section Start -->
<footer class="section-t-space py-3">
    <div class="container-fluid-lg">
        <div class="service-section pb-3">
            <div class="row g-3">
                <div class="col-12">
                    <div class="service-contain py-2">
                        <div class="service-box">
                            <div class="service-image">
                                <img
                                    src="${pageContext.request.contextPath}/front-end/assets/svg/sedan.png"
                                    class="blur-up lazyload"
                                    alt=""
                                    />
                            </div>

                            <div class="service-detail">
                                <h5>Xe mới giá mềm</h5>
                            </div>
                        </div>

                        <div class="service-box">
                            <div class="service-image">
                                <img
                                    src="${pageContext.request.contextPath}/front-end/assets/svg/delivery.svg"
                                    class="blur-up lazyload"
                                    alt=""
                                    />
                            </div>

                            <div class="service-detail">
                                <h5>Xem hàng nhanh chóng</h5>
                            </div>
                        </div>

                        <div class="service-box">
                            <div class="service-image">
                                <img
                                    src="${pageContext.request.contextPath}/front-end/assets/svg/discount.svg"
                                    class="blur-up lazyload"
                                    alt=""
                                    />
                            </div>

                            <div class="service-detail">
                                <h5>Ưu đãi hàng tháng</h5>
                            </div>
                        </div>

                        <div class="service-box">
                            <div class="service-image">
                                <img
                                    src="${pageContext.request.contextPath}/front-end/assets/svg/market.svg"
                                    class="blur-up lazyload"
                                    alt=""
                                    />
                            </div>

                            <div class="service-detail">
                                <h5>Giá tốt nhất trên thị trường</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="main-footer section-b-space section-t-space py-3">
            <div class="row g-md-4 g-3">
                <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="footer-logo">
                        <div class="theme-logo">
                            <a href="index.html">
                                <img
                                    src="${pageContext.request.contextPath}/front-end/assets/images/logo/1.png"
                                    class="blur-up lazyload"
                                    alt=""
                                    />
                            </a>
                        </div>

                        <div class="footer-logo-contain">
                            <p>
                                Khám phá <b>sự mới mẻ trong trải nghiệm thương mại xe hơi</b> với vô vàn ưu đãi, thoải mái lựa chọn theo sở thích của bạn
                            </p>

                            <ul class="address">
                                <li>
                                    <i data-feather="home"></i>
                                    <a href="javascript:void(0)">FPT University </a>
                                </li>
                                <li>
                                    <i data-feather="mail"></i>
                                    <a href="javascript:void(0)">apexautos1110@gmail.com</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                    <label class="switch">
                        <input type="checkbox" checked="checked" />
                        <div class="button">
                            <div class="light"></div>
                            <div class="dots"></div>
                            <div class="characters"></div>
                            <div class="shine"></div>
                            <div class="shadow"></div>
                        </div>
                    </label>
                </div>

                <div class="col-xl col-lg-2 col-sm-3">
                    <div class="footer-title">
                        <h4>Tiện ích</h4>
                    </div>

                    <div class="footer-contain">
                        <ul>
                            <li>
                                <a href="/home" class="text-content">Trang chủ</a>
                            </li>
                            <li>
                                <a href="shop-left-sidebar.html" class="text-content"
                                   >Các nhà bán hàng</a
                                >
                            </li>
                            <li>
                                <a href="about-us.html" class="text-content">Thông tin thêm</a>
                            </li>
                            <li>
                                <a href="blog-list.html" class="text-content">Blog</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>

                <div class="col-xl-2 col-sm-3">
                    <div class="footer-title">
                        <h4>Trung tâm hỗ trợ</h4>
                    </div>

                    <div class="footer-contain">
                        <ul>
                            
                            <li>
                                <a href="/dashboard" class="text-content"
                                   >Tài khoản của bạn</a
                                >
                            </li>
                           
                            <li>
                                <a href="wishlist.html" class="text-content"
                                   >Giỏ hàng của bạn</a
                                >
                            </li>
                            <li>
                                <a href="search.html" class="text-content">Tìm kiếm</a>
                            </li>
                            <li>
                                <a href="faq.html" class="text-content">FAQ</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-sm-6">
                    <div class="footer-title">
                        <h4>Liên hệ chúng tôi</h4>
                    </div>

                    <div class="footer-contact">
                        <ul>
                            <li>
                                <div class="footer-number">
                                    <i data-feather="phone"></i>
                                    <div class="contact-number">
                                        <h6 class="text-content">Hotline 24/7 :</h6>
                                        <h5>+91 888 104 2340</h5>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="footer-number">
                                    <i data-feather="mail"></i>
                                    <div class="contact-number">
                                        <h6 class="text-content">Địa chỉ email :</h6>
                                        <h5>apexautos1110@gmail.com</h5>
                                    </div>
                                </div>
                            </li>

                            <li class="social-app">
                                <h5 class="mb-2 text-content">Tải ứng dụng qua :</h5>
                                <ul>
                                    <li class="mb-0">
                                        <a
                                            href="https://play.google.com/store/apps"
                                            target="_blank"
                                            >
                                            <img
                                                src="${pageContext.request.contextPath}/front-end/assets/images/playstore.svg"
                                                class="blur-up lazyload"
                                                alt=""
                                                />
                                        </a>
                                    </li>
                                    <li class="mb-0">
                                        <a
                                            href="https://www.apple.com/in/app-store/"
                                            target="_blank"
                                            >
                                            <img
                                                src="${pageContext.request.contextPath}/front-end/assets/images/appstore.svg"
                                                class="blur-up lazyload"
                                                alt=""
                                                />
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="sub-footer section-small-space py-3">
            <div class="reserve">
                <h6 class="text-content">©2022 ApexAutos All rights reserved</h6>
            </div>

            <div class="payment">
                <img
                    src="${pageContext.request.contextPath}/front-end/assets/images/payment/1.png"
                    class="blur-up lazyload"
                    alt=""
                    />
            </div>

            <div class="social-link">
                <h6 class="text-content">Stay connected :</h6>
                <ul>
                    <li>
                        <a href="https://www.facebook.com/" target="_blank">
                            <i class="fa-brands fa-facebook-f"></i>
                        </a>
                    </li>
                    <li>
                        <a href="https://twitter.com/" target="_blank">
                            <i class="fa-brands fa-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.instagram.com/" target="_blank">
                            <i class="fa-brands fa-instagram"></i>
                        </a>
                    </li>
                    <li>
                        <a href="https://in.pinterest.com/" target="_blank">
                            <i class="fa-brands fa-pinterest-p"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->