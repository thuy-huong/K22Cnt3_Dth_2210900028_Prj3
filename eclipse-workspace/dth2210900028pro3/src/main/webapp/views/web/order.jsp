<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đơn hàng</title>
</head>
<body>
       <!-- Header End -->
            <!-- Breadcrumb Area start -->
            <section class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="breadcrumb-content">
                                <h1 class="breadcrumb-hrading">Checkout Page</h1>
                                <ul class="breadcrumb-links">
                                    <li><a href="index.html">Home</a></li>
                                    <li>Order</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- checkout area start -->
            <div class="checkout-area mt-60px mb-40px">
               
                <div class="container">
                    <h1 class="text-center">Đơn hàng của tôi</h1>
                    <table class="table table-bordered table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>Mã đơn</th>
                                <th>Địa Chỉ Giao Hàng</th>
                                <th>Phương Thức Thanh Toán</th>
                              
                                <th>Giá Trị Tổng</th>
                                <th>Trạng Thái</th>
                                <th>Ngày đặt</th>
                            </tr>
                        </thead>
                        <tbody >
                        	<c:forEach var="item" items="${model.listResult}">
                            	<tr>
                            		<td>${item.idOrder }</td>
                            		<td>${item.shippingAddress }</td>
                            		<td>${item.paymentMethod == 1 ? "Tiền mặt" : "Chuyển khoản"}</td>
                           			
                            		<td>${item.totalPrice }</td>
                            		<td>${item.status == 1 ? "Đặt hàng thành công" : "Giao hàng thành công"}</td>
                            		<td>${item.createdDate }</td>
                            		
                            	</tr>
                            	
                          	</c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
            <!-- checkout area end -->
</body>
</html>