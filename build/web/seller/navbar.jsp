<%-- 
    Document   : navbar
    Created on : Jul 2, 2024, 2:53:23 PM
    Author     : Tiến_Đạt
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<style>
    .feature-icon {
        width: 4rem;
        height: 4rem;
        border-radius: 0.75rem;
    }

    .icon-square {
        width: 3rem;
        height: 3rem;
        border-radius: 0.75rem;
    }

    .text-shadow-1 {
        text-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.25);
    }
    .text-shadow-2 {
        text-shadow: 0 0.25rem 0.5rem rgba(0, 0, 0, 0.25);
    }
    .text-shadow-3 {
        text-shadow: 0 0.5rem 1.5rem rgba(0, 0, 0, 0.25);
    }

    .card-cover {
        background-repeat: no-repeat;
        background-position: center center;
        background-size: cover;
    }

    .feature-icon-small {
        width: 3rem;
        height: 3rem;
    }

    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
    }

    @media (min-width: 768px) {
        .bd-placeholder-img-lg {
            font-size: 3.5rem;
        }
    }

    .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, 0.1);
        border: solid rgba(0, 0, 0, 0.15);
        border-width: 1px 0;
        box-shadow: inset 0 0.5em 1.5em rgba(0, 0, 0, 0.1),
            inset 0 0.125em 0.5em rgba(0, 0, 0, 0.15);
    }

    .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
    }

    .bi {
        vertical-align: -0.125em;
        fill: currentColor;
    }

    .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
    }

    .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
    }

    .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
    }

    .bd-mode-toggle {
        z-index: 1500;
    }

    .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
    }
</style>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="index.html">Bảng điều khiển</a>
    <!-- Sidebar Toggle-->
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
            class="fas fa-bars"></i></button>
    <!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
        <div class="input-group">
            <input class="form-control" type="text" placeholder="Search for..."
                   aria-label="Search for..." aria-describedby="btnNavbarSearch" />
            <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i
                    class="fas fa-search"></i></button>
        </div>
    </form>
    <!-- Navbar-->
    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
        <li class="nav-item dropdown">
            <a class="nav-link " id="navbarDropdown" href="#" role="button"
                aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
        </li>
    </ul>
</nav>
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">Core</div>
                    <a class="nav-link" href="dashboard">
                        <div class="sb-nav-link-icon">
                            <i class="fas fa-tachometer-alt"></i>
                        </div>
                        Dashboard
                    </a>
                    <div class="sb-sidenav-menu-heading">Quản lý nền tảng</div>
                    <a
                        class="nav-link collapsed"
                        href="#"
                        data-bs-toggle="collapse"
                        data-bs-target="#collapseLayouts"
                        aria-expanded="false"
                        aria-controls="collapseLayouts"
                        >
                        <div class="sb-nav-link-icon">
                            <i class="fas fa-columns"></i>
                        </div>
                        Quản lý xe
                        <div class="sb-sidenav-collapse-arrow">
                            <i class="fas fa-angle-down"></i>
                        </div>
                    </a>
                    <div
                        class="collapse"
                        id="collapseLayouts"
                        aria-labelledby="headingOne"
                        data-bs-parent="#sidenavAccordion"
                        >
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="dashboard?state=attributes"
                               >Thuộc tính</a
                            >
                            <a class="nav-link" href="dashboard?state=detail">Chi tiết</a>
                            <a class="nav-link" href="dashboard?state=specs"
                               >Thông số kĩ thuật</a
                            >
                            <a class="nav-link" href="dashboard?state=image"
                               >Hình ảnh của xe</a
                            >
                        </nav>
                    </div>
                    <a class="nav-link" href="dashboard?state=orders">
                        <div class="sb-nav-link-icon">
                            <i class="fas fa-chart-area"></i>
                        </div>
                        Đơn đặt hàng
                    </a>

                    <div class="sb-sidenav-menu-heading">Khác</div>
                    <a class="nav-link" href="dashboard?state=setting">
                        <div class="sb-nav-link-icon">
                            <i class="fas fa-chart-area"></i>
                        </div>
                        Nhãn hiệu
                    </a>
                </div>
            </div>
            <div class="sb-sidenav-footer">
                <div class="small">Đăng nhập với:</div>
                ${user.email}
            </div>
        </nav>
    </div>
