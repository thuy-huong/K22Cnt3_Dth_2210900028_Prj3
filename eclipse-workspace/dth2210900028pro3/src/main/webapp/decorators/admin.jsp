<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description"
		content="Fastkart admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
	<meta name="keywords"
		content="admin template, Fastkart admin template, dashboard template, flat admin template, responsive admin template, web app">
	<meta name="author" content="pixelstrap">
	<link rel="icon" href="assets/images/favicon.png" type="image/x-icon">
	<link rel="shortcut icon" href="assets/images/favicon.png"
		type="image/x-icon">
	<title><dec:title default="Dashboard" /></title>
	
	<!-- Google font-->
	<link
		href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
		rel="stylesheet">
	
	<!-- Linear Icon css -->
	<link rel="stylesheet" href="/teampleate/admin/css/linearicon.css">
	
	<!-- fontawesome css -->
	<link rel="stylesheet" type="text/css"
		href="/teampleate/admin/css/vendors/font-awesome.css">
	
	<!-- Themify icon css-->
	<link rel="stylesheet" type="text/css"
		href="/teampleate/admin/css/vendors/themify.css">
	
	<!-- ratio css -->
	<link rel="stylesheet" type="text/css"
		href="/teampleate/admin/css/ratio.css">
	
	<!-- remixicon css -->
	<link rel="stylesheet" type="text/css"
		href="/teampleate/admin/css/remixicon.css">
	
	<!-- Feather icon css-->
	<link rel="stylesheet" type="text/css"
		href="/teampleate/admin/css/vendors/feather-icon.css">
	
	<!-- Plugins css -->
	<link rel="stylesheet" type="text/css"
		href="/teampleate/admin/css/vendors/scrollbar.css">
	<link rel="stylesheet" type="text/css"
		href="/teampleate/admin/css/vendors/animate.css">
	
	<!-- Bootstrap css-->
	<link rel="stylesheet" type="text/css"
		href="/teampleate/admin/css/vendors/bootstrap.css">
	
	<!-- vector map css -->
	<link rel="stylesheet" type="text/css"
		href="/teampleate/admin/css/vector-map.css">
	
	<!-- Slick Slider Css -->
	<link rel="stylesheet" href="/teampleate/admin/css/vendors/slick.css">
	
	<!-- App css -->
	<link rel="stylesheet" type="text/css"
		href="/teampleate/admin/css/style.css">
</head>

<body>
	<!-- tap on top start -->
	<div class="tap-top">
		<span class="lnr lnr-chevron-up"></span>
	</div>
	<!-- tap on tap end -->

	<!-- page-wrapper Start-->
	<div class="page-wrapper compact-wrapper" id="pageWrapper">

		<!-- Page Header Start-->
		<%@ include file="/common/admin/header.jsp"%>
		<!-- Page Header Ends-->

		<!-- Page Body Start-->
		<div class="page-body-wrapper">
			<!-- Page Sidebar Start-->
			<%@ include file="/common/admin/menu.jsp"%>
			<!-- Page Sidebar Ends-->

			<!-- index body start -->
			<div class="page-body">
			
			
				<dec:body />
				
				
				<!-- footer start-->
                <%@ include file="/common/admin/footer.jsp"%>
                <!-- footer End-->
                
			</div>
			<!-- index body end -->
			
		</div>
		<!-- Page Body End -->
		
	</div>
	<!-- page-wrapper End-->




	<!-- Latest JS -->
	<script src="<c:url value='/teampleate/admin/js/jquery-3.6.0.min.js'/>"></script>

	<!-- Bootstrap JS -->
	<script
		src="<c:url value='/teampleate/admin/js/bootstrap/bootstrap.bundle.min.js'/>"></script>

	<!-- Feather Icon JS -->
	<script
		src="<c:url value='/teampleate/admin/js/icons/feather-icon/feather.min.js'/>"></script>
	<script
		src="<c:url value='/teampleate/admin/js/icons/feather-icon/feather-icon.js'/>"></script>

	<!-- Scrollbar Simplebar JS -->
	<script
		src="<c:url value='/teampleate/admin/js/scrollbar/simplebar.js'/>"></script>
	<script src="<c:url value='/teampleate/admin/js/scrollbar/custom.js'/>"></script>

	<!-- Sidebar jQuery -->
	<script src="<c:url value='/teampleate/admin/js/config.js'/>"></script>

	<!-- Tooltip Init JS -->
	<script src="<c:url value='/teampleate/admin/js/tooltip-init.js'/>"></script>

	<!-- Plugins JS -->
	<script src="<c:url value='/teampleate/admin/js/sidebar-menu.js'/>"></script>
	<script
		src="<c:url value='/teampleate/admin/js/notify/bootstrap-notify.min.js'/>"></script>
	<script src="<c:url value='/teampleate/admin/js/notify/index.js'/>"></script>

	<!-- ApexChart JS -->
	<script
		src="<c:url value='/teampleate/admin/js/chart/apex-chart/apex-chart1.js'/>"></script>
	<script
		src="<c:url value='/teampleate/admin/js/chart/apex-chart/moment.min.js'/>"></script>
	<script
		src="<c:url value='/teampleate/admin/js/chart/apex-chart/apex-chart.js'/>"></script>
	<script
		src="<c:url value='/teampleate/admin/js/chart/apex-chart/stock-prices.js'/>"></script>
	<script
		src="<c:url value='/teampleate/admin/js/chart/apex-chart/chart-custom1.js'/>"></script>

	<!-- Slick Slider JS -->
	<script src="<c:url value='/teampleate/admin/js/slick.min.js'/>"></script>
	<script src="<c:url value='/teampleate/admin/js/custom-slick.js'/>"></script>

	<!-- Customizer JS -->
	<script src="<c:url value='/teampleate/admin/js/customizer.js'/>"></script>

	<!-- Ratio JS -->
	<script src="<c:url value='/teampleate/admin/js/ratio.js'/>"></script>

	<!-- Sidebar Effect -->
	<script src="<c:url value='/teampleate/admin/js/sidebareffect.js'/>"></script>

	<!-- Theme JS -->
	<script src="<c:url value='/teampleate/admin/js/script.js'/>"></script>
</body>
</html>