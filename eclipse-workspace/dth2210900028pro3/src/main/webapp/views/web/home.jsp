<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Trang chủ</title>
</head>
<body>
	<!-- Slider Arae Start -->
	<div class="slider-area home-2 home-4">
		<div class="slider-active-3 owl-carousel slider-hm8 owl-dot-style">
			<!-- Slider Single Item Start -->
			<div
				class="slider-height-6 d-flex align-items-start justify-content-start bg-img"
				style="background-image: url(teamplate/web/images/slider-image/sample-7.jpg);">
				<div class="container">
					<div class="slider-content-5 slider-animated-1 text-left">
						<span class="animated">100% NATURAL</span>
						<h1 class="animated">
							Fresh Vegetables<br /> And Fruits
						</h1>
						<a href="shop-4-column.html" class="shop-btn animated">SHOP
							NOW</a>
					</div>
				</div>
			</div>
			<!-- Slider Single Item End -->
			<!-- Slider Single Item Start -->
			<div
				class="slider-height-6 d-flex align-items-start justify-content-start bg-img"
				style="background-image: url(teamplate/web/images/slider-image/sample-8.jpg);">
				<div class="container">
					<div class="slider-content-5 slider-animated-1 text-left">
						<span class="animated">BEST OFFER SALE !</span>
						<h1 class="animated">
							Up To 70% Off <br /> Fresh Juice
						</h1>
						<a href="#" class="shop-btn animated">SHOP
							NOW</a>
					</div>
				</div>
			</div>
			<!-- Slider Single Item End -->
		</div>
	</div>
	<!-- Slider Arae End -->


	<!-- Static Area Start -->
	<section class="static-area mtb-60px">
		<div class="container">
			<div class="static-area-wrap">
				<div class="row">
					<!-- Static Single Item Start -->
					<div class="col-lg-3 col-xs-12 col-md-6 col-sm-6">
						<div class="single-static pb-res-md-0 pb-res-sm-0 pb-res-xs-0">
							<img src="teamplate/web/images/icons/static-icons-1.png" alt=""
								class="img-responsive" />
							<div class="single-static-meta">
								<h4>Free Shipping</h4>
								<p>On all orders over $75.00</p>
							</div>
						</div>
					</div>
					<!-- Static Single Item End -->
					<!-- Static Single Item Start -->
					<div class="col-lg-3 col-xs-12 col-md-6 col-sm-6">
						<div
							class="single-static pb-res-md-0 pb-res-sm-0 pb-res-xs-0 pt-res-xs-20">
							<img src="teamplate/web/images/icons/static-icons-2.png" alt=""
								class="img-responsive" />
							<div class="single-static-meta">
								<h4>Free Returns</h4>
								<p>Returns are free within 9 days</p>
							</div>
						</div>
					</div>
					<!-- Static Single Item End -->
					<!-- Static Single Item Start -->
					<div class="col-lg-3 col-xs-12 col-md-6 col-sm-6">
						<div
							class="single-static pt-res-md-30 pb-res-sm-30 pb-res-xs-0 pt-res-xs-20">
							<img src="teamplate/web/images/icons/static-icons-3.png" alt=""
								class="img-responsive" />
							<div class="single-static-meta">
								<h4>100% Payment Secure</h4>
								<p>Your payment are safe with us.</p>
							</div>
						</div>
					</div>
					<!-- Static Single Item End -->
					<!-- Static Single Item Start -->
					<div class="col-lg-3 col-xs-12 col-md-6 col-sm-6">
						<div class="single-static pt-res-md-30 pb-res-sm-30 pt-res-xs-20">
							<img src="teamplate/web/images/icons/static-icons-4.png" alt=""
								class="img-responsive" />
							<div class="single-static-meta">
								<h4>Support 24/7</h4>
								<p>Contact us 24 hours a day</p>
							</div>
						</div>
					</div>
					<!-- Static Single Item End -->
				</div>
			</div>
		</div>
	</section>
	<!-- Static Area End -->
	<!-- Banner Area Start -->
	<div class="banner-area home-2">
		<div class="container">
			<div class="row mb-n-30px">
				<div class="col-lg-3 col-sm-6 mb-30px xs-6 order-1 order-lg-1">
					<div class="banner-wrapper">
						<a href="shop-4-column.html"><img
							src="teamplate/web/images/banner-image/8.jpg" alt="" /></a>
					</div>
				</div>
				<div class="col-lg-6 col-md-12 mb-30px order-3 order-lg-2">
					<div class="banner-wrapper">
						<a href="shop-4-column.html"><img
							src="teamplate/web/images/banner-image/9.jpg" alt="" /></a>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 mb-30px xs-6 order-2 order-lg-3">
					<div class="banner-wrapper">
						<a href="shop-4-column.html"><img
							src="teamplate/web/images/banner-image/10.jpg" alt="" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Banner Area End -->
	
	 <!-- Recent Add Product Area Start -->
        <section class="recent-add-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <!-- Section Title -->
                        <div class="section-title">
                            <h2>New Arrivals</h2>
                            <p>Add new products to weekly line up</p>
                        </div>
                        <!-- Section Title -->
                    </div>
                </div>
                <!-- Recent Product slider Start -->
                <div class="recent-product-slider owl-carousel owl-nav-style">
                  
              <c:forEach var="item" items="${model.listResult}">
              
                    <!-- Single Item -->
                    <article class="list-product">
                        <div class="img-block">
                          <c:url var="productDetailURL" value="/san-pham">
								<c:param name="idProduct" value="${item.idProduct }"></c:param>
							</c:url>
                            <a href="${productDetailURL }" class="thumbnail">
                                <img class="first-img" src="${item.image} " style="max-width: 200px; height: 200px;"
                                    alt="" />
                                <img class="second-img" src="${item.image}" style="max-width: 200px; height: 200px;"
                                    alt="" />
                            </a>
                         
                        </div>
                        <ul class="product-flag">
                            <li class="new">New</li>
                        </ul>
                        <div class="product-decs">
                          
                            <h2><a href="${productDetailURL }" class="product-link">${item.nameProduct}</a></h2>
                            <div class="rating-product">
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                                <i class="ion-android-star"></i>
                            </div>
                            <div class="pricing-meta">
                                <ul>
                                   
                                    <li class="current-price">${item.sellingPrice}</li>
                                   
                                </ul>
                            </div>
                        </div>
                        
                        <div class="add-to-link">
						    <ul>
						        <li>
						            <form action="${pageContext.request.contextPath}/cart" method="POST">
						            <input type="hidden" name="action" value="add" />
						                <input type="hidden" name="idProduct" value="${item.idProduct}" /> 
						                <input type="hidden" name="quantity" value="1" />
						                <button type="submit" class="cart-btn">ADD TO CART</button>
						            </form>
						        </li>
						        <li>
						            <a href="#"><i class="ion-android-favorite-outline"></i></a>
						        </li>
						        <li>
						            <a href="#"><i class="ion-ios-shuffle-strong"></i></a>
						        </li>
						    </ul>
						</div>
                    </article>
                 </c:forEach>
                </div>
                <!-- Recent product slider end -->
            </div>
        </section>
        <!-- Recent product area end -->
        <!-- Banner Area 2 Start -->
        <div class="banner-area-2">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="banner-inner">
                            <a href="#"><img src="assets/images/banner-image/4.jpg" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Banner Area 2 end -->
        <!-- Feature Area Start -->

</body>
</html>