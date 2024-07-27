<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="ApexAutos" />
        <meta name="keywords" content="ApexAutos" />
        <meta name="author" content="ApexAutos" />
        <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/admin/assets/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/admin/assets/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/admin/assets/favicon/favicon-16x16.png">
        <link rel="manifest" href=" assets/favicon/site.webmanifest">
        <title>Admin - Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/admin/assets/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>

    <body class="sb-nav-fixed">
        
        <div id="layoutSidenav">
            <jsp:include page="navbar.jsp"></jsp:include>   

                <div id="layoutSidenav_content">
                    <main >
                        <div class="container-fluid px-4 py-3">
                            <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
                                <div class="col-10 col-sm-8 col-lg-6">
                                    <img
                                        src="${pageContext.request.contextPath}/admin/assets/img/bootstrap-themes.png"
                                        class="d-block mx-lg-auto img-fluid"
                                        alt="Bootstrap Themes"
                                        width="700"
                                        height="500"
                                        loading="lazy"
                                        />
                                </div>
                                <div class="col-lg-6">
                                    <h1 class="display-5 fw-bold text-body-emphasis lh-1 mb-3">
                                        Bảng điều khiển cho Admin
                                    </h1>
                                    <p class="lead">
                                    <h4><b>Chào mừng bạn đến với trang điều khiển quản trị viên!</b></h4>   Cảm ơn bạn đã đảm nhận vai trò quản trị. Từ đây, bạn có thể quản lý toàn bộ hệ thống, theo dõi hoạt động của người dùng, và duy trì sự hoạt động trơn tru của nền tảng. Nếu bạn cần hỗ trợ hoặc có câu hỏi, đừng ngần ngại liên hệ với đội ngũ hỗ trợ của chúng tôi.
                                    </p>
                                    <div class="d-grid gap-2 d-md-flex justify-content-md-start">
                                        <button
                                            type="button"
                                            class="btn btn-primary btn-lg px-4 me-md-2"
                                            onclick="location.href = '${pageContext.request.contextPath}/home'"
                                        >
                                        Quay về Trang chủ
                                    </button>
                                    <button
                                        type="button"
                                        class="btn btn-outline-secondary btn-lg px-4"
                                        onclick="location.href = '${pageContext.request.contextPath}/logout'"
                                        >
                                        Đăng xuất
                                    </button>
                                </div>
                            </div>
                        </div>
                        <h2 class="pb-2 border-bottom"></h2>
                    </div>
                </main>
            </div>



        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/admin/assets/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/admin/assets/demo/chart-area-demo.js"></script>
        <script src="${pageContext.request.contextPath}/admin/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/admin/assets/js/datatables-simple-demo.js"></script>
    </body>

</html>