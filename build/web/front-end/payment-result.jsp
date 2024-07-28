<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="com.vnpay.common.Config" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.*,java.time.*,java.time.format.*,Models.*,DAO.*,com.vnpay.common.Config" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="ApexAutos" />
        <meta name="keywords" content="ApexAutos" />
        <meta name="author" content="ApexAutos" />
        <link rel="apple-touch-icon" sizes="180x180"
              href="${pageContext.request.contextPath}/front-end/assets/images/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32"
              href="${pageContext.request.contextPath}/front-end/assets/images/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16"
              href="${pageContext.request.contextPath}/front-end/assets/images/favicon/favicon-16x16.png">
        <link rel="manifest"
              href="${pageContext.request.contextPath}/front-end/assets/images/favicon/site.webmanifest">
        <title>On-demand last-mile delivery</title>

        <!-- Google font -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wdth,wght@0,75..100,300..800;1,75..100,300..800&display=swap" rel="stylesheet">
        <!-- bootstrap css -->
        <link id="rtl-link" rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/vendors/bootstrap.css">

        <!-- wow css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/front-end/assets/css/animate.min.css" />

        <!-- font-awesome css -->
        <link rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/vendors/font-awesome.css">

        <!-- feather icon css -->
        <link rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/vendors/feather-icon.css">

        <!-- slick css -->
        <link rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/vendors/slick/slick.css">
        <link rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/vendors/slick/slick-theme.css">

        <!-- Iconly css -->
        <link rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/bulk-style.css">
        <link rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/vendors/animate.css">

        <!-- Template css -->
        <link id="color-link" rel="stylesheet" type="text/css"
              href="${pageContext.request.contextPath}/front-end/assets/css/style.css">
    </head>

    <body>
        <%
             CarDao dao = new CarDao();
            UserDAO daou = new UserDAO();
            AdminDAO daoa = new AdminDAO();
            UserAccount ua = (UserAccount) session.getAttribute("user");
            // Begin process return from VNPAY
            Map<String, String> fields = new HashMap<>();
            for (Enumeration<String> params = request.getParameterNames(); params.hasMoreElements();) {
                String fieldName = URLEncoder.encode(params.nextElement(), StandardCharsets.US_ASCII.toString());
                String fieldValue = URLEncoder.encode(request.getParameter(fieldName), StandardCharsets.US_ASCII.toString());
                if ((fieldValue != null) && (fieldValue.length() > 0)) {
                    fields.put(fieldName, fieldValue);
                }
            }

            String vnp_SecureHash = request.getParameter("vnp_SecureHash");
            if (fields.containsKey("vnp_SecureHashType")) {
                fields.remove("vnp_SecureHashType");
            }
            if (fields.containsKey("vnp_SecureHash")) {
                fields.remove("vnp_SecureHash");
            }
             String stats =request.getParameter("vnp_TransactionStatus");
                   String signValue = Config.hashAllFields(fields);
                   String transactionStatus = "";
             if (signValue.equals(vnp_SecureHash)) {
              if ("00".equals(stats)) {
                  // Create and save the order
                  Orders order = new Orders();
                  order.setUser_id(ua.getUser_id());
                   order.setOrder_date(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
                  order.setStatus("Success");
                  String vnpAmount = request.getParameter("vnp_Amount");
                  if (vnpAmount != null) {
                      order.setTotal(Float.parseFloat(vnpAmount) / 100); // Convert to actual amount
                  }
                
                   int orderId = dao.saveOrder(order);
                if (orderId == -1) {
                    throw new ServletException("Order creation failed.");
                }
                
                // Get cart items and save each order item
                List<CartItems> cartItems = dao.cartItems(ua.getUser_id());
                List<OrderItems> ois = new ArrayList<>();
                for (CartItems cartItem : cartItems) {
                    OrderItems orderItem = new OrderItems();
                    orderItem.setOrder_id(orderId); // Set the generated order ID
                    orderItem.setCar(cartItem.getCar());
                    dao.saveOrderItem(orderItem);
                    ois.add(orderItem);
                }
                order.setItems(ois);

                  dao.clearCart(ua.getUser_id());
                  transactionStatus = "Thành công";
                          request.setAttribute("orderList", ois);

              } else {
                  transactionStatus = "Thất bại";
              }
          } else {
              transactionStatus = "Chữ kí không khả dụng";
          }
  List<CarImage> carImage = dao.viewImageForCar();
    List<CarCategory> carCate = dao.viewCarCategory();
            List<CarBrand> carBrand = dao.viewCarBrand();
            request.setAttribute("carCate", carCate);
            request.setAttribute("carBrand", carBrand);
          pageContext.setAttribute("Ref", request.getParameter("vnp_TxnRef"));
          pageContext.setAttribute("Amount", request.getParameter("vnp_Amount"));
          pageContext.setAttribute("OrderInfo", request.getParameter("vnp_OrderInfo"));
          pageContext.setAttribute("ResponseCode", request.getParameter("vnp_ResponseCode"));
          pageContext.setAttribute("TransactionNo", request.getParameter("vnp_TransactionNo"));
          pageContext.setAttribute("BankCode", request.getParameter("vnp_BankCode"));
          pageContext.setAttribute("transactionStatus", transactionStatus);
 request.setAttribute("carImage", carImage);
          String vnpPayDate = request.getParameter("vnp_PayDate");
         if (vnpPayDate != null && !vnpPayDate.isEmpty()) {
    // Parse the input date string
    DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
    LocalDateTime paymentDate = LocalDateTime.parse(vnpPayDate, inputFormatter);

    // Format the date to the desired pattern
    String formattedPayDate = paymentDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));

    // Set the formatted date as a request attribute
    pageContext.setAttribute("PayDate", formattedPayDate);

    // Additionally, set a Date object for formatting in JSP if needed
    Date specificDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(formattedPayDate);
    pageContext.setAttribute("specificDate", specificDate);
} else {
    pageContext.setAttribute("PayDate", "Not available");
}

           // Create a specific date object
                                            
        
        %>

        <div class="fullpage-loader">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>

        <jsp:include page="pre-header.jsp"></jsp:include>


            <div class="mobile-menu d-md-none d-block mobile-cart">
                <ul>
                    <li class="active">
                        <a href="home">
                            <i class="iconly-Home icli"></i>
                            <span>Trang chủ</span>
                        </a>
                    </li>

                    <li class="mobile-category">
                        <a href="${pageContext.request.contextPath}/${user.permission_id == 3 ? "user" : (user.permission_id == 2 ? "seller" : (user.permission_id == 1 ? "admin" : ""))  }/dashboard">
                        <i class="iconly-Category icli js-link"></i>
                        <span>${user.permission_id == 3 ? "Hồ sơ" : "Điều khiển"}</span>
                    </a>
                </li>

                <li>
                    <a class="search-box" href="${pageContext.request.contextPath}/home?state=cart&user=${user.user_id}">
                        <i class="iconly-Search icli"></i>
                        <span>Giỏ hàng</span>
                    </a>
                </li>


                </li>
            </ul>
        </div>

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

        <section class="breadscrumb-section pt-0">
            <div class="container-fluid-lg">
                <div class="row">
                    <div class="col-12">
                        <div class="breadscrumb-contain breadscrumb-order">
                            <div class="order-box">
                                <div class="order-image">
                                    <div class="checkmark">
                                        <svg class="star" height="19" viewBox="0 0 19 19" width="19"
                                             xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
                                        </path>
                                        </svg>
                                        <svg class="star" height="19" viewBox="0 0 19 19" width="19"
                                             xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
                                        </path>
                                        </svg>
                                        <svg class="star" height="19" viewBox="0 0 19 19" width="19"
                                             xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
                                        </path>
                                        </svg>
                                        <svg class="star" height="19" viewBox="0 0 19 19" width="19"
                                             xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
                                        </path>
                                        </svg>
                                        <svg class="star" height="19" viewBox="0 0 19 19" width="19"
                                             xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
                                        </path>
                                        </svg>
                                        <svg class="star" height="19" viewBox="0 0 19 19" width="19"
                                             xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
                                        </path>
                                        </svg>
                                        <svg class="checkmark__check" height="36" viewBox="0 0 48 36" width="48"
                                             xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M47.248 3.9L43.906.667a2.428 2.428 0 0 0-3.344 0l-23.63 23.09-9.554-9.338a2.432 2.432 0 0 0-3.345 0L.692 17.654a2.236 2.236 0 0 0 .002 3.233l14.567 14.175c.926.894 2.42.894 3.342.01L47.248 7.128c.922-.89.922-2.34 0-3.23">
                                        </path>
                                        </svg>
                                        <svg class="checkmark__background" height="115" viewBox="0 0 120 115" width="120"
                                             xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M107.332 72.938c-1.798 5.557 4.564 15.334 1.21 19.96-3.387 4.674-14.646 1.605-19.298 5.003-4.61 3.368-5.163 15.074-10.695 16.878-5.344 1.743-12.628-7.35-18.545-7.35-5.922 0-13.206 9.088-18.543 7.345-5.538-1.804-6.09-13.515-10.696-16.877-4.657-3.398-15.91-.334-19.297-5.002-3.356-4.627 3.006-14.404 1.208-19.962C10.93 67.576 0 63.442 0 57.5c0-5.943 10.93-10.076 12.668-15.438 1.798-5.557-4.564-15.334-1.21-19.96 3.387-4.674 14.646-1.605 19.298-5.003C35.366 13.73 35.92 2.025 41.45.22c5.344-1.743 12.628 7.35 18.545 7.35 5.922 0 13.206-9.088 18.543-7.345 5.538 1.804 6.09 13.515 10.696 16.877 4.657 3.398 15.91.334 19.297 5.002 3.356 4.627-3.006 14.404-1.208 19.962C109.07 47.424 120 51.562 120 57.5c0 5.943-10.93 10.076-12.668 15.438z">
                                        </path>
                                        </svg>
                                    </div>
                                </div>

                                <div class="order-contain">
                                    <h3 class="theme-color">Đặt cọc ${transactionStatus}</h3>
                                    <h5 class="text-content">Thanh toán khoản cọc ${transactionStatus}</h5>
                                    <h6>Mã giao dịch: ${Ref}</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="cart-section section-b-space">
            <div class="container-fluid-lg">
                <div class="row g-sm-4 g-3">
                    <div class="col-xxl-9 col-lg-8">
                        <div class="cart-table order-table order-table-2">
                            <div class="table-responsive">
                                <table class="table mb-0">
                                    <tbody>
                                        <c:choose>
                                            <c:when test="${empty orderList}">
                                            <div class="alert alert-warning" style="font-size: 22px" role="alert">
                                                Không có sản phẩm nào được đặt cọc
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <c:forEach var="ol" items="${orderList}">
                                                <tr>
                                                    <td class="product-detail">
                                                        <div class="product border-0">
                                                            <a href="product.left-sidebar.html" class="product-image">
                                                                <c:set var="firstImagePrinted" value="false" />
                                                                <c:forEach items="${carImage}" var="ci">
                                                                    <c:if test="${ci.car_id == ol.car.car_id}">
                                                                        <c:forEach items="${ci.image_url}" var="obj">
                                                                            <c:if test="${not firstImagePrinted}">
                                                                                <img src="${obj}" alt="Car Image" class="img-fluid blur-up lazyload rounded"  style="object-fit: cover;max-width:100%; max-height: 100%;">
                                                                                <c:set var="firstImagePrinted" value="true" />
                                                                            </c:if>
                                                                        </c:forEach>
                                                                    </c:if> 
                                                                </c:forEach>

                                                            </a>
                                                            <div class="product-detail">
                                                                <ul>
                                                                    <li class="name">
                                                                        <a href="product-left-thumbnail.html">${ol.car.name}</a>
                                                                    </li>
                                                                    <c:forEach var="cb" items="${carBrand}">
                                                                        <c:if test="${cb.id == ol.car.brand_id}">
                                                                            <li class="text-content">Mẫu xe: ${cb.name}</li>

                                                                        </c:if>
                                                                    </c:forEach>

                                                                    <li class="text-content">Cân nặng : ${ol.car.weight} kg</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </td>

                                                    <td class="price">
                                                        <h4 class="table-title text-content">Kiểu xe</h4>
                                                        <c:forEach var="cc" items="${carCate}">
                                                            <c:if test="${cc.id == ol.car.category_id}">
                                                                <h6 class="theme-color">${cc.name}</h6>

                                                            </c:if>
                                                        </c:forEach>
                                                    </td>

                                                    <td class="quantity">
                                                        <h4 class="table-title text-content">Số lượng</h4>
                                                        <h4 class="text-title">01</h4>
                                                    </td>

                                                    <td class="subtotal">
                                                        <h4 class="table-title text-content">Tổng</h4>
                                                        <h5>${ol.car.price} vnđ</h5>
                                                    </td>
                                                </tr>

                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="col-xxl-3 col-lg-4">
                        <div class="row g-4">
                            <div class="col-lg-12 col-sm-6">
                                <div class="summery-box">
                                    <div class="summery-header">
                                        <h3>Chi tiết hóa đơn</h3>
                                        <h5 class="ms-auto theme-color">${ol== null ? 0 : ol.size() } sản phẩm</h5>
                                    </div>

                                    <ul class="summery-contain">
                                        <li>
                                            <h4>Tổng giá trị</h4>
                                            <h4 class="price">
                                                <fmt:formatNumber currencySymbol="VND " value = "${Amount}" 
                                                                  type = "currency"/></h4>
                                        </li>


                                        <li>
                                            <h4>Thuế</h4>
                                            <h4 class="price text-danger">10%</h4>
                                        </li>
                                    </ul>

                                    <ul class="summery-total">
                                        <li class="list-total">
                                            <h4>Tổng (VND)</h4>
                                            <h4 class="price"> <fmt:formatNumber currencySymbol="VND " value = "${(Amount / 100) * 10}"  type = "currency"/></h4>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-lg-12 col-sm-6">
                                <div class="summery-box">
                                    <div class="summery-header d-block">
                                        <h3>Địa chỉ nhận hóa đơn</h3>
                                    </div>

                                    <ul class="summery-contain pb-0 border-bottom-0">
                                        <li class="d-block">
                                            <h4>Đại học FPT</h4>
                                            <h4 class="mt-2">Tình trạng : ${transactionStatus}</h4>
                                        </li>

                                        <li class="pb-0">
                                            <h4>Thời gian giao dịch:</h4>
                                            <h4 class="price theme-color">

                                                <a href="#" class="text-danger"><del>Theo dõi đơn hàng</del></a>
                                            </h4>
                                        </li>
                                    </ul>

                                    <ul class="summery-total">
                                        <li class="list-total border-top-0 pt-2">
                                            <h4 class="fw-bold"><fmt:formatDate value="${specificDate}" pattern="dd MMMM - yyyy HH:mm:ss" /></h4>
                                        </li>
                                    </ul>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </section>

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
        <script src="${pageContext.request.contextPath}/front-end/assets/js/slick/custom_slick.js"></script>

        <!-- script js -->
        <script src="${pageContext.request.contextPath}/front-end/assets/js/script.js"></script>
        <script>
//            setTimeout(function () {
//                window.location.href = '<%=request.getContextPath()%>/home';
//            }, 6000);
        </script>
    </body>
</html>
