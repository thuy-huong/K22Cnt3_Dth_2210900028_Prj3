<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="path/to/your/styles.css"> <!-- Đường dẫn đến file CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> <!-- Thêm Font Awesome -->
</head>
<body>
    <!-- Breadcrumb Area start -->
    <section class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcrumb-content">
                        <h1 class="breadcrumb-heading">Cart Page</h1>
                        <ul class="breadcrumb-links">
                            <li><a href="#">Home</a></li>
                            <li>Cart</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Area End -->

    <!-- Cart Area Start -->
    <div class="cart-main-area mtb-60px">
        <div class="container">
             <c:if test="${not empty message }" >
											<div class="alert alert-${alert }" role="alert">${message}</div>
									</c:if>
            <h3 class="cart-page-title">Your cart items</h3>
            <div class="row">
                <div class="col-lg-12">
                    <form action="#" method="POST"> <!-- Thêm method cho form -->
                        <div class="table-content table-responsive cart-table-content">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Hình ảnh</th>
                                        <th>Tên Sản Phẩm</th>
                                        <th>Số Lượng</th>
                                        <th>Giá</th>
                                        <th>Tổng</th>
                                        <th>Thao tác</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   <c:set var="totalAmount" value="0" /> <!-- Khởi tạo biến tổng -->

                                   <c:forEach var="item" items="${model.listResult}">
							            <tr>
							                <c:url var="productDetailURL" value="/san-pham">
							                    <c:param name="idProduct" value="${item.product.idProduct}"></c:param>
							                </c:url>
							                <td>
							                    <a href="${productDetailURL}">
							                        <img src="${item.product.image}" alt="${item.product.nameProduct || 'Product image'}" style="max-width: 100px; height: auto;">
							                    </a>
							                </td>
							                <td>
							                    <a href="${productDetailURL}">${item.product.nameProduct}</a>
							                </td>
							                <td>
							                    <form action="${pageContext.request.contextPath}/cart" method="POST">
							                        <input type="hidden" name="action" value="update" />
							                        <input type="hidden" name="idProduct" value="${item.product.idProduct}" />
							                        <input type="number" name="quantity" value="${item.quantity}" min="1" />
							                        <button type="submit" class="btn btn-success">Cập nhật</button>
							                    </form>
							                </td>
							                <td>${item.product.sellingPrice}</td>
							                <td>${item.quantity * item.product.sellingPrice}</td>
							                <td class="product-remove">
							                    <form action="${pageContext.request.contextPath}/cart" method="POST">
							                        <input type="hidden" name="action" value="remove" />
							                        <input type="hidden" name="idProduct" value="${item.product.idProduct}" />
							                        <button type="submit" class="remove-btn btn-danger">Xóa</button>
							                    </form>
							                </td>
							            </tr>
							            <c:set var="totalAmount" value="${totalAmount + (item.quantity * item.product.sellingPrice)}" /> <!-- Tính tổng -->
							        </c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="5" class="text-center"><b>Tổng tiền</b></td>
                                        <td ><b>${totalAmount}</b></td> <!-- Hiển thị tổng tiền -->
                                    </tr>
                                </tfoot>
                            </table>
                            
                        </div>
                    </form>
                      <!-- Nút tiếp tục mua sắm và thanh toán -->
                    <div class="cart-buttons p-5">
                        <a href="${pageContext.request.contextPath}/san-pham" class="btn btn-secondary">Tiếp tục mua sắm</a>
                        <c:if test="${not empty USERMODEL && not empty model.listResult}">
                        	 <a href="${pageContext.request.contextPath}/thanh-toan" class="btn btn-primary">Thanh toán</a>
                        </c:if>
                   		<c:if test="${empty  model.listResult}">
                        	 <a href="${pageContext.request.contextPath}/san-pham" class="btn btn-primary">Thanh toán</a>
                        </c:if>
                      	<c:if test="${ empty USERMODEL  }">
                      		<a href="${pageContext.request.contextPath}/dang-nhap?action=login&message=not_login&alert=danger" class="btn btn-primary">Thanh toán</a>
                      	</c:if>
                	</div>
            </div>
        </div>
    </div>
    <!-- Cart Area End -->
</body>
</html>