<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion"
    id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center"
        href="<c:url value='/admin-home'/>">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Thúy Hường</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="<c:url value='admin-home'/>">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">Quản lý của hàng</div>

    <c:url var="addNewProductURL" value="/admin-product">
        <c:param name="type" value="edit"></c:param>
    </c:url>

    <c:url var="listProductURL" value="/admin-product">
        <c:param name="type" value="list"></c:param>
    </c:url>

    <!-- Nav Item - Products Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse"
            data-target="#collapseProducts" aria-expanded="true"
            aria-controls="collapseProducts">
            <i class="fas fa-fw fa-solid fa-store"></i>
            <span>Sản phẩm</span>
        </a>
        <div id="collapseProducts" class="collapse" aria-labelledby="headingProducts"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="${listProductURL}">Danh sách sản phẩm</a>
                <a class="collapse-item" href="${addNewProductURL}">Thêm mới sản phẩm</a>
            </div>
        </div>
    </li>

    <c:url var="listCategoryURL" value="/admin-category">
        <c:param name="type" value="list"></c:param>
    </c:url>

    <!-- Nav Item - Categories Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse"
            data-target="#collapseCategories" aria-expanded="true"
            aria-controls="collapseCategories">
            <i class="fas fa-fw fa-solid fa-list-ul"></i>
            <span>Danh mục</span>
        </a>
        <div id="collapseCategories" class="collapse" aria-labelledby="headingCategories"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="${listCategoryURL}">Danh sách danh mục</a>
                <a class="collapse-item" href="add-category.html">Thêm mới danh mục</a>
            </div>
        </div>
    </li>

    <c:url var="listBrandURL" value="/admin-brand">
        <c:param name="type" value="list"></c:param>
    </c:url>

    <!-- Nav Item - Brand Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse"
            data-target="#collapseBrands" aria-expanded="true"
            aria-controls="collapseBrands">
            <i class="fas fa-fw fa-solid fa-list-ul"></i>
            <span>Thương hiệu</span>
        </a>
        <div id="collapseBrands" class="collapse" aria-labelledby="headingBrands"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="${listBrandURL}">Danh sách thương hiệu</a>
                <a class="collapse-item" href="add-brand.html">Thêm mới thương hiệu</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">


    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="/dth2210900028pro3/admin-order">
            <i class="fas fa-fw fa-table"></i>
            <span>Đơn hàng</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>
<!-- End of Sidebar -->