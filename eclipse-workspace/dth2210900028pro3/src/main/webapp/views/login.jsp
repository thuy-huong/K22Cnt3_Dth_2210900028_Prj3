<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
</head>
<body>
	<!-- Breadcrumb Area start -->
	<section class="breadcrumb-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="breadcrumb-content">
						<h1 class="breadcrumb-hrading">Login Page</h1>
						<ul class="breadcrumb-links">
							<li><a href="/dth2210900028pro3/trang-chu">Home</a></li>
							<li>Login </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Area End -->
	<!-- login area start -->
	<div class="login-register-area mb-60px mt-53px">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 col-md-12 mx-auto">
					<div class="login-register-wrapper">
						<div class="login-register-tab-list nav">
							<a class="active" data-bs-toggle="tab" href="#lg1">
								<h4>login</h4>
							</a> 
						</div>
						<div class="tab-content">
							<div id="lg1" class="tab-pane active">
								<div class="login-form-container">
									<div class="login-register-form">
										<c:if test="${not empty message }" >
											<div class="alert alert-${alert }" role="alert">${message}</div>
										</c:if>
										<form action="/dth2210900028pro3/dang-nhap" method="post"
											id="formlogin">
											<input type="text" name="userName" id="userName"
												placeholder="Tên đăng nhập" required /> <input
												type="password" id="password" name="password"
												placeholder="Mật khẩu" required />

											<div class="button-box text-center">
												<input type="hidden" value="login" id="action" name="action" />
												<button type="submit"
													style="width: 50%; background-color: #2cde97;">
													<span>Login</span>
												</button>
											</div>
										</form>
									</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- login area end -->
</body>
</html>