<%-- 
    Document   : navbar
    Created on : Jul 2, 2024, 2:51:34 PM
    Author     : Tiến_Đạt
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav">
                <div class="sb-sidenav-menu-heading">Core</div>
                <a class="nav-link" href="dashboard">
                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                    Dashboard
                </a>
                <div class="sb-sidenav-menu-heading">Platform Management</div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                   data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    User Management
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
