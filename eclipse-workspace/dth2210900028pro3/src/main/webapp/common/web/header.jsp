<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file = "/common/taglib.jsp"%>
<!-- Header Start -->
<header class="main-header">
	<!-- Header Top Start -->
	<div class="header-top-nav">
		<div class="container-fluid">
			<div class="row align-items-center">
				<!--Left Start-->
				<div class="col-lg-4 col-md-12">
					<div class="text-lg-start text-center">
						<p class="color-white">Chào mừng bạn đến với cửa hàng Thúy
							Hường!</p>
					</div>
				</div>
				<!--Left End-->
				<!--Right Start-->
				<div class="col-8 d-lg-block d-none">
					<div class="header-right-nav hover-style-default">
						<ul>

							<li class="border-color-white"><a href="#"><i
									class="ion-android-favorite-outline"></i>Wishlist (0)</a></li>
						</ul>
						<!-- Header Top Language Currency -->
						<div class="header-top-set-lan-curr d-flex justify-content-end">
							<div class="header-bottom-set dropdown">
								<c:if test="${not empty USERMODEL }">
									<button
										class="dropdown-toggle header-action-btn hover-style-default color-white"
										data-bs-toggle="dropdown">
										${USERMODEL.fullName } <i class="ion-ios-arrow-down"></i>
									</button>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="${pageContext.request.contextPath}/don-hang">Đơn hàng</a></li>
										
										<li><a class="dropdown-item"
											href='<c:url value="/dang-xuat?action=logout"/>'>Đăng xuất</a></li>

									</ul>
								</c:if>
								<c:if test="${empty USERMODEL }">
									<button
										class="dropdown-toggle header-action-btn hover-style-default color-white"
										data-bs-toggle="dropdown">
										Account <i class="ion-ios-arrow-down"></i>
									</button>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item"
											href='<c:url value="/dang-nhap?action=login"/>'>Đăng nhập</a></li>
										<li><a class="dropdown-item" href="${pageContext.request.contextPath}/dang-ky">Đăng ký</a></li>
									</ul>
								</c:if>
							</div>
							
							<!-- Single Wedge Start -->
							<div class="header-top-curr dropdown">
								<button
									class="dropdown-toggle header-action-btn hover-style-default color-white pr-0"
									data-bs-toggle="dropdown">
									VNĐ $ <i class="ion-ios-arrow-down"></i>
								</button>
								<ul class="dropdown-menu dropdown-menu-right">
									<li><a class="dropdown-item" href="#">VNĐ $</a></li>
									<li><a class="dropdown-item" href="#">EUR €</a></li>
								</ul>
							</div>
							<!-- Single Wedge End -->
						</div>
						<!-- Header Top Language Currency -->
					</div>
				</div>
				<!--Right End-->
			</div>
		</div>
	</div>
	<!-- Header Top End -->
	<!-- Header Buttom Start -->
	<div class="header-navigation sticky-nav d-none d-lg-block">
		<div class="container-fluid">
			<div class="row">
				<!-- Logo Start -->
				<div class="col-md-2 col-sm-2">
					<div class="logo">
						<a href="${pageContext.request.contextPath}/trang-chu"><img
							src="teamplate/web/images/logo/logo.png" alt="" /></a>
					</div>
				</div>
				<!-- Logo End -->
				<!-- Navigation Start -->
				<div class="col-md-10 col-sm-10">
					<!--Main Navigation Start -->
					<div class="main-navigation">
						<ul>
							<li class="menu-dropdown"><a
								href="${pageContext.request.contextPath}/trang-chu">Home </a></li>
							<li class="menu-dropdown"><a href="${pageContext.request.contextPath}/san-pham">Shop </a></li>
							
							<li class="menu-dropdown"><a href="#">Category <i
									class="ion-ios-arrow-down"></i></a>
								<ul class="sub-menu">
									  <c:forEach var="item" items="${categories}">
									    
										  <c:url var="productCateURL" value="/san-pham">
											<c:param name="idCategory" value="${item.idCategory }"></c:param>
												
											</c:url>
										<li><a href="${productCateURL }">${item.nameCategory }</a></li>
									</c:forEach>
								</ul>
							</li>	
							<li class="menu-dropdown"><a href="#">Brand <i
									class="ion-ios-arrow-down"></i></a>
								<ul class="sub-menu">
									  <c:forEach var="item" items="${brands}">
									   <c:url var="productBrandURL" value="/san-pham">
											<c:param name="idBrand" value="${item.idBrand }"></c:param>
												
											</c:url>
										<li><a href="${productBrandURL }">${item.nameBrand }</a></li>
									</c:forEach>
								</ul>
							</li>
							
									
							<li><a href="#">Contact Us</a></li>
						</ul>
					</div>
					<!--Main Navigation End -->
					<!--Header Bottom Account Start -->
					<div class="header_account_area">
						<!--Seach Area Start -->
						<div class="header_account_list search_list">
							<a href="javascript:void(0)"><i class="ion-ios-search-strong"></i></a>
							<div class="dropdown_search">
								<form action="${pageContext.request.contextPath}/san-pham" method="GET">
								
									<input placeholder="Search entire store here ..." type="text" name="keyword" />
									<div class="search-category">
										<select class="bootstrap-select" name="idCategory">
											<option value="0">All categories</option>
											<c:forEach var="itemCate" items="${categories}">
												<option  value="${itemCate.idCategory }">${itemCate.nameCategory }</option>
											</c:forEach>
										</select>
									</div>
									<button type="submit">
										<i class="ion-ios-search-strong"></i>
									</button>
								</form>
							</div>
						</div>
						<!--Seach Area End -->
						<!--Contact info Start -->
						<div class="contact-link">
							<div class="phone">
								<p>Call us:</p>
								<a href="tel:0962169464">0962169464</a>
							</div>
						</div>
						<!--Contact info End -->
						<!--Cart info Start -->
						<div class="cart-info d-flex">
							<div class="mini-cart-warp">
								<c:set var="totalAmount" value="0" /> <!-- Khởi tạo biến tổng -->
					        <c:forEach var="item" items="${cartItems.listResult}">
					         
					            <c:set var="totalAmount" value="${totalAmount + (item.quantity * item.product.sellingPrice)}" /> <!-- Cập nhật tổng -->
					        </c:forEach>
								<a href="#offcanvas-cart"
									class="count-cart offcanvas-toggle color-black"> <span
									class="amount-tag">$${totalAmount}</span> <span
									class="item-quantity-tag">${empty CART.items ?0:CART.totalQuantity}</span>
								</a>

							</div>
						</div>
						<!--Cart info End -->
					</div>
				</div>
			</div>

		</div>
	</div>
	<!--Header Bottom Account End -->
	<!-- Header mobile area start -->
	<div class="header-bottom d-lg-none sticky-nav py-3 mobile-navigation">
		<div class="container-fluid">
			<div class="row justify-content-between align-items-center">
				<div class="col-md-3 col-sm-3">
					<a href="#offcanvas-mobile-menu"
						class="offcanvas-toggle mobile-menu"> <i class="ion-navicon"></i>
					</a>
				</div>
				<div class="col-md-6 col-sm-4 d-flex justify-content-center">
					<div class="logo m-0">
						<a href="index.html"><img src="assets/images/logo/logo.png"
							alt="" /></a>
					</div>
				</div>
				<div class="col-md-3 col-sm-5">
					<!--Cart info Start -->
					<div class="cart-info d-flex m-0 justify-content-end">
						<div class="header-bottom-set dropdown">
							<button class="dropdown-toggle header-action-btn"
								data-bs-toggle="dropdown">
								<i class="ion-person"></i>
							</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="my-account.html">My
										account</a></li>
								<li><a class="dropdown-item" href="checkout.html">Checkout</a></li>
								<li><a class="dropdown-item" href="login.html">Sign in</a></li>
							</ul>
						</div>
						<div class="mini-cart-warp">
						 
							<a href="#offcanvas-cart"
								class="count-cart offcanvas-toggle color-black"> <span
								class="amount-tag">$${totalAmount}</span> <span class="item-quantity-tag">${empty CART.items ?0:CART.totalQuantity}</span>
							</a>
						</div>
					</div>
					<!--Cart info End -->
				</div>
			</div>
		</div>
	</div>
	<!-- Header mobile area end -->

</header>
<!-- Header End -->
<div class="mobile-search-option pb-3 d-lg-none">
	<div class="container-fluid">
		<div class="header-account-list">
			<div class="dropdown-search">
				<form action="#">
					<input placeholder="Search entire store here ..." type="text" />
					<div class="search-category">
						<select class="bootstrap-select" name="poscats">
							<option value="0">All categories</option>
							<c:forEach var="itemCate" items="${categories}">
								<option  value="${itemCate.idCategory }">${itemCate.nameCategory }</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit">
						<i class="ion-ios-search-strong"></i>
					</button>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- offcanvas overlay start -->
<div class="offcanvas-overlay"></div>
<!-- offcanvas overlay end -->
<!-- OffCanvas Cart Start -->
<div id="offcanvas-cart" class="offcanvas offcanvas-cart">
	<div class="inner">
		<div class="head">
			<span class="title">Cart</span>
			<button class="offcanvas-close">×</button>
		</div>
		<div class="body customScroll">
    <ul class="minicart-product-list">
        <c:set var="totalAmount" value="0" /> <!-- Khởi tạo biến tổng -->
        <c:forEach var="item" items="${cartItems.listResult}">
         <c:url var="productDetailURL" value="/san-pham">
			<c:param name="idProduct" value="${item.product.idProduct}"></c:param>
			</c:url>
            <li>
                <a href="${productDetailURL }" class="image">
                    <img src="${item.product.image}" alt="Cart product Image">
                </a>
                <div class="content">
                    <a href="${productDetailURL }" class="title">${item.product.nameProduct}</a> 
                    <span class="quantity-price">${item.quantity} x <span class="amount">$${item.product.sellingPrice}</span></span>
                    
                </div>
            </li>
            <c:set var="totalAmount" value="${totalAmount + (item.quantity * item.product.sellingPrice)}" /> <!-- Cập nhật tổng -->
        </c:forEach>
    </ul>
</div>
<div class="shopping-cart-total">
    <h4>
        Subtotal : <span>$${totalAmount}</span> <!-- Hiển thị tổng tiền -->
    </h4>
    <h4>
        Shipping : <span>$0.00</span>
    </h4>
    <h4>
        Taxes : <span>$0.00</span>
    </h4>
    <h4 class="shop-total">
        Total : <span>$${totalAmount}</span> <!-- Hiển thị tổng số tiền -->
    </h4>
</div>
		<div class="foot">
			<div class="buttons">
				<a href="${pageContext.request.contextPath}/cart" class="btn btn-dark btn-hover-primary mb-30px">view
					cart</a> 
					
                        <c:if test="${not empty USERMODEL && not empty cartItems.listResult}">
                        	 <a href="${pageContext.request.contextPath}/thanh-toan" class="btn btn-outline-dark current-btn">checkout</a>
                        </c:if>
                   		<c:if test="${empty  cartItems.listResult}">
                        	 <a href="${pageContext.request.contextPath}/san-pham" class="btn btn-outline-dark current-btn">Thanh toán</a>
                        </c:if>
                      	<c:if test="${ empty USERMODEL  }">
                      		<a href="${pageContext.request.contextPath}/dang-nhap?action=login&message=not_login&alert=danger" class="btn btn-outline-dark current-btn">Thanh toán</a>
                      	</c:if>
				
			</div>
		</div>
	</div>
</div>
<!-- OffCanvas Cart End -->
<!-- OffCanvas Menu Start -->
<div id="offcanvas-mobile-menu" class="offcanvas offcanvas-mobile-menu">
	<button class="offcanvas-close"></button>
	<!-- contact Info -->
	<div
		class="contact-info d-flex align-items-center justify-content-center color-black py-3">
		<img class="me-3" src="assets/images/icons/mobile-contact.png" alt="">
		<p>Call us:</p>
		<a class="color-black" href="tel:0962169464">0962169464</a>
	</div>
	<!-- offcanvas compare & wishlist -->
	<div class="user-panel">
		<ul class="d-flex justify-content-between">
			
			<li><a href="#"><i
					class="ion-android-favorite-outline"></i>Wishlist (0)</a></li>
		</ul>
	</div>
	<!-- offcanvas currency -->
	<div class="offcanvas-userpanel">
		<ul>
			<c:if test="${not empty USERMODEL }">
				<li class="offcanvas-userpanel__role"><a href="#">${USERMODEL.fullName }<i
						class="ion-ios-arrow-down"></i></a>
					<ul class="user-sub-menu">
						<li><a class="current" href="#">My account</a></li>
						<li><a href="#">Thanh toán</a></li>
						<li><a href="<c:url value="/dang-xuat?action=logout"/>">Đăng xuất</a></li>
						
					</ul>
				</li>
			</c:if>
			
			<c:if test="${empty USERMODEL }">
				<li class="offcanvas-userpanel__role"><a href="#">Account<i
						class="ion-ios-arrow-down"></i></a>
					<ul class="user-sub-menu">
						<li><a class="current" href="'<c:url value="/dang-nhap?action=login"/>'">Đăng nhập</a></li>
						<li><a href="${pageContext.request.contextPath}/dang-ky">Đăng ký</a></li>
						
					</ul>
				</li>				
			</c:if>
		</ul>
	</div>
	
									
							
	<!-- offcanvas currency -->
	<div class="offcanvas-userpanel">
		<ul>
			<li class="offcanvas-userpanel__role"><a href="#">VNĐ<i
					class="ion-ios-arrow-down"></i></a>
				<ul class="user-sub-menu">
					<li><a class="current" href="#">USD $</a></li>
					<li><a href="#">EUR €</a></li>
				</ul></li>
		</ul>
	</div>

	<div class="menu-close">menu</div>
	<!-- offcanvas menu -->
	<div class="inner customScroll">
		<div class="offcanvas-menu mb-4">
			<ul>
				<li><a href="#"><span class="menu-text">Home</span></a>
					<ul class="sub-menu">
						<li><a href="#"><span class="menu-text">Home
									</span></a>
							</li>
				<li class="menu-dropdown"><a href="${pageContext.request.contextPath}/san-pham">Shop</a></li>
				<li><a href="#"><span class="menu-text">Category</span></a>
					<ul class="sub-menu">
						<c:forEach var="itemCate" items="${categories}">
							<li><a href="${itemCate.idCategory }"><span class="menu-text">${itemCate.nameCategory }</span></a></li>
						</c:forEach>
						
						
					</ul>
				</li>
				<li><a href="#"><span class="menu-text">Brand</span></a>
					<ul class="sub-menu">
						<c:forEach var="item" items="${brands }">
							<li><a href="">${item.nameBrand }</a></li>
						</c:forEach>
					</ul>
				</li>
				<li><a href="contact.html">Contact Us</a></li>
			</ul>
		</div>
		<!-- OffCanvas Menu End -->
		<div class="offcanvas-social mt-5">
			<ul>
				<li><a href="#"><i class="ion-social-facebook"></i></a></li>
				<li><a href="#"><i class="ion-social-twitter"></i></a></li>
				<li><a href="#"><i class="ion-social-google"></i></a></li>
				<li><a href="#"><i class="ion-social-youtube"></i></a></li>
				<li><a href="#"><i class="ion-social-instagram"></i></a></li>
			</ul>
		</div>
	</div>
</div>
<div class="test"></div>
<!-- OffCanvas Menu End -->
<!-- Header End -->