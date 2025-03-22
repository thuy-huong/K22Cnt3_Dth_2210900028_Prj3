<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thanh toán</title>
</head>
<body>
	 <!-- Breadcrumb Area start -->
            <section class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="breadcrumb-content">
                                <h1 class="breadcrumb-hrading">Checkout Page</h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="index.html">Home</a></li>
                                    <li>Checkout</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- checkout area start -->
            <div class="checkout-area mt-60px mb-40px">
                <form action="${pageContext.request.contextPath}/thanh-toan" method="POST">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="billing-info-wrap">
                                <h3>Billing Details</h3>
                                <div class="row">
                                  <c:if test="${not empty message }" >
											<div class="alert alert-${alert }" role="alert">${message}</div>
									</c:if>
                                    <div class="col-lg-12">
                                        <div class="billing-info mb-20px">
                                            <label>Địa chỉ nhận hàng</label>
                                            <input type="text" name="shippingAddress"/>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="billing-select mb-20px">
                                            <label>Phương thức thanh toán</label>
                                            <select name="paymentMethod">
                                              
                                                <option value="1">Thanh toán khi nhận hàng</option>
                                                <option value="2">Chuyển khoản thẻ ngân hàng</option>
                                                <option value="3">Thẻ tín dụng ghi nợ</option>
                                               
                                            </select>
                                        </div>
                                    </div>
                                 
                                </div>                           
                                <div class="additional-info-wrap">
                                
                                    <div class="additional-info">
                                        <label>Ghi chú</label>
                                        <textarea  name="note"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="your-order-area">
                                <h3>Your order</h3>
                                <div class="your-order-wrap gray-bg-4">
                                    <div class="your-order-product-info">
                                        <div class="your-order-top">
                                            <ul>
                                                <li>Product</li>
                                                <li>Total</li>
                                            </ul>
                                        </div>
                                        <div class="your-order-middle">
                                            <ul>
                                                <c:set var="totalAmount" value="0" /> <!-- Khởi tạo biến tổng -->

                                   				<c:forEach var="item" items="${cart.items}">
                                                	<li><span class="order-middle-left">${item.product.nameProduct } X ${item.quantity }</span> <span class="order-price">${ item.quantity * item.product.sellingPrice} </span></li>
                                                 <c:set var="totalAmount" value="${totalAmount + (item.quantity * item.product.sellingPrice)}" /> <!-- Tính tổng -->
                                                </c:forEach>
                                            </ul>
                                        </div>
                                        <div class="your-order-bottom">
                                            <ul>
                                                <li class="your-order-shipping">Shipping</li>
                                                <li>0.0</li>
                                            </ul>
                                        </div>
                                        <div class="your-order-total">
                                            <ul>
                                                <li class="order-total">Total</li>
                                                <li>${totalAmount}</li>
                                            </ul>
                                        </div>
                                    </div>
                                    
                                </div>
                                <input type="hidden" name="totalPrice" value="${totalAmount}"/>	
                                <input type="hidden" name="tax" value="0"/>
                                <input type="hidden" name="shipping" value="0"/>		
                                 <input type="hidden" name="status" value="1"/>	
                                <input type="hidden" value="${USERMODEL.idUser }" name="idUser"/>
                                <div class="Place-order mt-25">
                                    <button class="btn-hover" type="submit">Đặt hàng</button>>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            </div>
            <!-- checkout area end -->
</body>
</html>