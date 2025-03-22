<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản phẩm</title>
</head>
<body>
    <!-- Breadcrumb Area start -->
            <section class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="breadcrumb-content">
                                <h1 class="breadcrumb-hrading">Shop Page</h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="index.html">Home</a></li>
                                    <li>Shop List Left Sidebar</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- Shop Category Area End -->
            <div class="shop-category-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9 order-lg-last col-md-12 order-md-first">
                            <!-- Shop Top Area Start -->
                            <div class="shop-top-bar">
                                <!-- Left Side start -->
                                <div class="shop-tab nav mb-res-sm-15">
                                    <a  class="active"  href="#shop-1" data-bs-toggle="tab">
                                        <i class="fa fa-th show_grid"></i>
                                    </a>
                                    <a href="#shop-2" data-bs-toggle="tab">
                                        <i class="fa fa-list-ul"></i>
                                    </a>
                                    
                                </div>
                                <!-- Left Side End -->
                                <!-- Right Side Start -->
                                <div class="select-shoing-wrap">
                                    <div class="shot-product">
                                        <p>Sort By:</p>
                                    </div>
                                    <div class="shop-select">
                                        <select>
                                            <option value="">Sort by newness</option>
                                            <option value="">A to Z</option>
                                            <option value=""> Z to A</option>
                                            <option value="">In stock</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- Right Side End -->
                            </div>
                            <!-- Shop Top Area End -->

                            <!-- Shop Bottom Area Start -->
                            <div class="shop-bottom-area mt-35">
                                <!-- Shop Tab Content Start -->
                                <div class="tab-content jump">
                                    <!-- Tab One Start -->
                                    <div id="shop-1" class="tab-pane active">
                                        <div class="row">
                                        <c:forEach var="item" items="${model.listResult}">
                                            <div class="col-xl-3 col-md-6 col-lg-4 col-sm-6 col-xs-12">
                                                <article class="list-product">
                                                    <div class="img-block">
                                                    <c:url var="productDetailURL" value="/san-pham">
														<c:param name="idProduct" value="${item.idProduct }"></c:param>
												
													</c:url>
                                                        <a href="${productDetailURL }" class="thumbnail">
                                                            <img class="first-img" src="${item.image }" alt=""  style="max-width: 250px; height: 250px;"/>
                                                            <img class="second-img" src="${item.image }" alt="" style="max-width: 250px; height: 250px;" />
                                                        </a>
                                                      
                                                    </div>
                                                    <ul class="product-flag">
                                                        <li class="new">New</li>
                                                    </ul>
                                                    <div class="product-decs">
                                                      
                                                        <h2><a href="${productDetailURL }" class="product-link">${item.nameProduct }</a></h2>
                                                        <div class="rating-product">
                                                            <i class="ion-android-star"></i>
                                                            <i class="ion-android-star"></i>
                                                            <i class="ion-android-star"></i>
                                                            <i class="ion-android-star"></i>
                                                            <i class="ion-android-star"></i>
                                                        </div>
                                                        <div class="pricing-meta">
                                                            <ul>
                                                                <li class="old-price">€ ${item.sellingPrice }</li>
                                                               
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="add-to-link">
                                                        <ul>
                                                        	<form action="${pageContext.request.contextPath}/cart" method="POST">
												            	<input type="hidden" name="action" value="add" />
												                <input type="hidden" name="idProduct" value="${item.idProduct}" /> 
												                <input type="hidden" name="quantity" value="2" />
												                <button type="submit" class="cart-btn">ADD TO CART</button>
												            </form>
                                                           
                                                            <li>
                                                                <a href="wishlist.html"><i class="ion-android-favorite-outline"></i></a>
                                                            </li>
                                                            <li>
                                                                <a href="compare.html"><i class="ion-ios-shuffle-strong"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </article>
                                            </div>
                                          </c:forEach>
                                        </div>
                                    </div>
                                    <!-- Tab One End -->
                                    <!-- Tab Two Start -->
                                    <div id="shop-2" class="tab-pane">
                                      <c:forEach var="item" items="${model.listResult}">
                                        <div class="shop-list-wrap mb-30px scroll-zoom">
                                            <div class="row list-product m-0px">
                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                                            <div class="left-img">
                                                                <div class="img-block">
                                                                    <a href="single-product.html" class="thumbnail">
                                                                        <img class="first-img" src="assets/images/product-image/organic/product-7.jpg" alt="" />
                                                                        <img class="second-img" src="assets/images/product-image/organic/product-8.jpg" alt="" />
                                                                    </a>
                                                                    <div class="quick-view">
                                                                        <a class="quick_view" href="#" data-link-action="quickview" title="Quick view" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                                            <i class="ion-ios-search-strong"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <ul class="product-flag">
                                                                    <li class="new">New</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                                            <div class="product-desc-wrap">
                                                                <div class="product-decs">
                                                                    <a class="inner-link" href="shop-4-column.html"><span>GRAPHIC CORNER</span></a>
                                                                    <h2><a href="single-product.html" class="product-link">Fila Locker Room Varsity Jacket</a></h2>
                                                                    <div class="rating-product">
                                                                        <i class="ion-android-star"></i>
                                                                        <i class="ion-android-star"></i>
                                                                        <i class="ion-android-star"></i>
                                                                        <i class="ion-android-star"></i>
                                                                        <i class="ion-android-star"></i>
                                                                    </div>
                                                                    <div class="pricing-meta">
                                                                        <ul>
                                                                            <li class="old-price not-cut">€9.90</li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="product-intro-info">
                                                                        <p>Create a cool and sporty look with the FILA® Locker Room Varsity Jacket.</p>
                                                                        <p>Comfortable cotton-blend fabrication.</p>
                                                                        <p>Classic varsity jacket features brand details throughout.</p>
                                                                        <p>Flat knit collar.</p>
                                                                    </div>
                                                                    <div class="in-stock">Availability: <span>299 In Stock</span></div>
                                                                </div>
                                                                <div class="add-to-link">
                                                                    <ul>
                                                                        <li class="cart"><a class="cart-btn" href="#">ADD TO CART </a></li>
                                                                        <li>
                                                                            <a href="wishlist.html"><i class="ion-android-favorite-outline"></i></a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="compare.html"><i class="ion-ios-shuffle-strong"></i></a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                       </c:forEach> 
                                    </div>
                                    <!-- Tab Two End -->
                                </div>
                                <!-- Shop Tab Content End -->
                                <!--  Pagination Area Start -->
                                <div class="pro-pagination-style text-center">
                                    <ul>
                                        <li>
                                            <a class="prev" href="#"><i class="ion-ios-arrow-left"></i></a>
                                        </li>
                                        <li><a class="active" href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li>
                                            <a class="next" href="#"><i class="ion-ios-arrow-right"></i></a>
                                        </li>
                                    </ul>
                                </div>
                                <!--  Pagination Area End -->
                            </div>
                            <!-- Shop Bottom Area End -->
                        </div>
                        <!-- Sidebar Area Start -->
                        <div class="col-lg-3 order-lg-first col-md-12 order-md-last mb-res-md-60px mb-res-sm-60px">
                            <div class="left-sidebar">
                                <div class="sidebar-heading">
                                    <div class="main-heading">
                                        <h2>Filter By</h2>
                                    </div>
                                    <!-- Sidebar single item -->
                                    <div class="sidebar-widget">
                                        <h4 class="pro-sidebar-title">Categories</h4>
                                        <div class="sidebar-widget-list">
                                            <ul>
                                            	<c:forEach var="item" items="${categories }">
	                                                <li>
	                                                    <div class="sidebar-widget-list-left">
	                                                        <input type="checkbox" /> <a href="#">${item.nameCategory }</a>
	                                                        <span class="checkmark"></span>
	                                                    </div>
	                                                </li>
	                                             </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- Sidebar single item -->
                                </div>
                                <!-- Sidebar single item -->
                                <div class="sidebar-widget mt-20">
                                    <h4 class="pro-sidebar-title">Price</h4>
                                    <div class="price-filter mt-10">
                                        <div class="price-slider-amount">
                                            <input type="text" id="amount" name="price" placeholder="Add Your Price" />
                                        </div>
                                        <div id="slider-range"></div>
                                    </div>
                                </div>
                              
                                <!-- Sidebar single item -->
                                <div class="sidebar-widget mt-30">
                                    <h4 class="pro-sidebar-title">Brand</h4>
                                    <div class="sidebar-widget-list">
                                        <ul>
                                        	<c:forEach items="${brands }" var="item">
	                                            <li>
	                                                <div class="sidebar-widget-list-left">
	                                                    <input type="checkbox" /> <a href="#">${item.nameBrand }</a>
	                                                    <span class="checkmark"></span>
	                                                </div>
	                                            </li>
                                           </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            
                            </div>
                        </div>
                        <!-- Sidebar Area End -->
                    </div>
                </div>
            </div>
            <!-- Shop Category Area End -->
</body>
</html>