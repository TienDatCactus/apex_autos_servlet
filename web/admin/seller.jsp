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
        <link rel="apple-touch-icon" sizes="180x180" href="assets/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon/favicon-16x16.png">
        <link rel="manifest" href="assets/favicon/site.webmanifest">
        <title>Admin - Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="assets/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

        <style>
            .card-custom {
                border: 1px solid #ddd;
                border-radius: 0.5rem;
            }

            .card-header-custom {
                background-color: #f8f9fa;
                border-bottom: 1px solid #ddd;
                padding: 0.75rem 1.25rem;
            }

            .card-title {
                font-size: 1.25rem;
                font-weight: 500;
                color: #333;
            }

            .table-custom th,
            .table-custom td {
                vertical-align: middle;
            }

            .table-custom th {
                font-weight: 500;
                background-color: #f8f9fa;
            }

            .table-custom td button {
                margin-right: 0.25rem;
            }

            .breadcrumb {
                background-color: transparent;
            }

            .btn-sm {
                padding: 0.25rem 0.5rem;
                font-size: 0.875rem;
            }

            .modal-content {
                border-radius: 0.5rem;
            }

            .text-primary {
                color: #007bff !important;
            }
        </style>
    </head>

    <body class="sb-nav-fixed">

        <jsp:include page="navbar.jsp"></jsp:include>
            <div id="layoutSidenav_content">
                <main class="container-fluid px-4">
                    <h1 class="mt-4 display-4 text-primary">Quản lý yêu cầu</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Yêu cầu từ phía khách hàng</li>
                    </ol>

                    <div class="card card-custom mb-4 shadow-sm">
                        <div class="card-header card-header-custom">
                            <h5 class="card-title">Trở thành người bán</h5>
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple">
                                <thead>
                                    <tr>
                                        <!--<th>Seller Name</th>-->
                                        <th>Email</th>
                                        <th>Tên</th>
                                        <th>Mô tả</th>
                                        <th>Hành động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${lstSeller}" var="s">
                                    <tr>
                                        <c:forEach items="${allUserAccount}" var="a">
                                            <c:if test="${s.user_id == a.user_id}">
                                                <td>${a.email}</td>                                       
                                                <td>${a.given_name} ${a.family_name}</td> choi dii
                                            </c:if>  
                                        </c:forEach>
                                        <td>${s.description}</td>

                                        <td class="d-flex">
                                            <div>
                                                <form action="dashboard?state=seller&do=acc" method="post">
                                                    <input type="hidden" value="${s.user_id}" name="id"/>

                                                    <button class="btn btn-success btn-sm" type="submit">Chấp nhận</button>
                                                </form>
                                            </div>
                                            <div>
                                                <form action="dashboard?state=seller&do=deny" method="post">
                                                    <input type="hidden" value="${s.user_id}" name="id"/>

                                                    <button class="btn btn-danger btn-sm" type="submit">Từ chối</button>
                                                </form>
                                            </div>

                                        </td>

                                    </tr> 
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </main>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
    <script src="assets/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
    crossorigin="anonymous"></script>
    <script src="assets/js/datatables-simple-demo.js"></script>
</body>

</html>