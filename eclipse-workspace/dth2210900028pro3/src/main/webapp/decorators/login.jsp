<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<title><dec:title default="Đăng nhập" /></title>
	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon"
		href="teampleate/web/images/favicon/favicon.png" />
	
	<!-- Google Fonts -->
	<link
		href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800&amp;family=DM+Serif+Display:ital@0;1&amp;display=swap"
		rel="stylesheet" />
	
	<!--====== Use the minified version files listed below for better performance and remove the files listed above ======-->
	
	<link rel="stylesheet"
		href="<c:url value='teamplate/web/css/vendor/vendor.min.css
'/>"
		type="text/css" media="all">
	<link rel="stylesheet"
		href="<c:url value='teamplate/web/css/vendor/plugins.min.css'/>"
		type="text/css" media="all">
	<link rel="stylesheet"
		href="<c:url value='teamplate/web/css/vendor/style.min.css'/>">
	<link rel="stylesheet"
		href="<c:url value='teamplate/web/css/vendor/responsive.min.css'/>"
		type="text/css" media="all">
</head>

<body>
	<div class="main">
		<!-- header -->
		<%@ include file="/common/web/header.jsp"%>
		<!-- header -->
		<!-- body -->
		<dec:body />
		<!-- body -->

		<!-- footer -->
		<%@ include file="/common/web/footer.jsp"%>
		<!-- footer -->
	</div>
	<script src="<c:url value='teamplate/web/css/vendor/vendor.min.js'/>"></script>
	<script src="<c:url value='teamplate/web/css/vendor/plugins.min.js'/>"></script>
	<script src="<c:url value='teamplate/web/css/vendor/main.js'/>"></script>
</body>
</html>