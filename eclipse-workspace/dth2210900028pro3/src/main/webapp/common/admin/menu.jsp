
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion"
	id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a
		class="sidebar-brand d-flex align-items-center justify-content-center"
		href="<c:url value='/admin-home'/>">
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-laugh-wink"></i>
		</div>
		<div class="sidebar-brand-text mx-3">Thúy Hường</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Nav Item - Dashboard -->
	<li class="nav-item active"><a class="nav-link"
		href="<c:url value='admin-home'/>"> <i
			class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span></a></li>

	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">Quản lý của hàng</div>
<c:url var="addNewURL" value="/admin-product">
			<c:param name="type" value="edit"></c:param>
			
		</c:url>

	<c:url var="listURL" value="/admin-product">
		<c:param name="type" value="list"></c:param>

	</c:url>
	<!-- Nav Item - Products Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseProducts"
		aria-expanded="true" aria-controls="collapseProducts"> <i
			class="fas fa-fw fa-solid fa-store"></i> <span>Sản phẩm</span>
	</a>
		<div id="collapseProducts" class="collapse"
			aria-labelledby="headingProducts" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item"
					href="${listURL }">Danh sách sản
					phẩm</a> <a class="collapse-item"
					href="${addNewURL }">Thêm mới sản
					phẩm</a>
			</div>
		</div></li>

	<!-- Nav Item - Categories Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseCategories"
		aria-expanded="true" aria-controls="collapseCategories"> <i
			class="fas fa-fw fa-solid  fa-list-ul"></i> <span>Danh mục </span>
	</a>
		<div id="collapseCategories" class="collapse"
			aria-labelledby="headingCategories" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item" href="buttons.html">Danh sách danh mục</a>
				<a class="collapse-item" href="cards.html">Thêm mới danh mục</a>
			</div>
		</div></li>


	<!-- Nav Item - Utilities Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseUtilities"
		aria-expanded="true" aria-controls="collapseUtilities"> <i
			class="fas fa-fw fa-wrench"></i> <span>Utilities</span>
	</a>
		<div id="collapseUtilities" class="collapse"
			aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Custom Utilities:</h6>
				<a class="collapse-item" href="utilities-color.html">Colors</a> <a
					class="collapse-item" href="utilities-border.html">Borders</a> <a
					class="collapse-item" href="utilities-animation.html">Animations</a>
				<a class="collapse-item" href="utilities-other.html">Other</a>
			</div>
		</div></li>

	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">Addons</div>

	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapsePages"
		aria-expanded="true" aria-controls="collapsePages"> <i
			class="fas fa-fw fa-folder"></i> <span>Pages</span>
	</a>
		<div id="collapsePages" class="collapse"
			aria-labelledby="headingPages" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Login Screens:</h6>
				<a class="collapse-item" href="login.html">Login</a> <a
					class="collapse-item" href="register.html">Register</a> <a
					class="collapse-item" href="forgot-password.html">Forgot
					Password</a>
				<div class="collapse-divider"></div>
				<h6 class="collapse-header">Other Pages:</h6>
				<a class="collapse-item" href="404.html">404 Page</a> <a
					class="collapse-item" href="blank.html">Blank Page</a>
			</div>
		</div></li>

	<!-- Nav Item - Charts -->
	<li class="nav-item"><a class="nav-link" href="charts.html"> <i
			class="fas fa-fw fa-chart-area"></i> <span>Charts</span></a></li>

	<!-- Nav Item - Tables -->
	<li class="nav-item"><a class="nav-link" href="tables.html"> <i
			class="fas fa-fw fa-table"></i> <span>Tables</span></a></li>

	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>



</ul>
<!-- End of Sidebar -->