<%-- 
    Document   : navbar
    Created on : Jul 2, 2024, 2:51:34 PM
    Author     : Tiến_Đạt
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="index.html">Bảng điều khiển</a>
    <!-- Sidebar Toggle-->
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
            class="fas fa-bars"></i></button>
    <!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
        <div class="input-group">
            <input class="form-control" type="text" placeholder="Tìm kiếm..." aria-label="Search for..."
                   aria-describedby="btnNavbarSearch" />
            <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i
                    class="fas fa-search"></i></button>
        </div>
    </form>
    <!-- Navbar-->

</nav>
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">Core</div>
                    <a class="nav-link" href="dashboard">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        Giới thiệu
                    </a>
                    <div class="sb-sidenav-menu-heading">Platform Management</div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                       data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                        Quản lí người dùng
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                         data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="dashboard?state=user">Danh sách người dùng</a>
                            <a class="nav-link" href="dashboard?state=role">Quản lí quyền</a>
                        </nav>
                    </div>
                    <a class="nav-link" href="dashboard?state=seller">
                        <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                        Yêu cầu
                    </a>

                    <div class="sb-sidenav-menu-heading">Others</div>

                    <a class="nav-link" href="dashboard?state=setting">
                        <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                        Cài đặt trang
                    </a>
                    <!-- <a class="nav-link" href="tables.html">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Tables
                    </a> -->
                </div>
            </div>
            <div class="sb-sidenav-footer">
                <div class="small">Đăng nhập với:</div>
                ${user.email}
            </div>
        </nav>
    </div>
    <script>
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }
    </script>