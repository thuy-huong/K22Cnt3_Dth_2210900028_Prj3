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
                                   <c:forEach var="item" items="${model.listResult}">
                                        <tr>
                                            <td><img src="${item.product.image}" alt="${item.product.nameProduct}" style="max-width: 100px; height: auto;"></td>
                                            <td>${item.product.nameProduct}</td>
                                            <td>
                                                <form action="${pageContext.request.contextPath}/cart" method="POST">
									                <input type="hidden" name="action" value="update" />
									                <input type="hidden" name="idProduct" value="${item.product.idProduct}" />
									                <input type="number" name="quantity" value="${item.quantity}" min="1" />
									                <button type="submit">Cập nhật</button>
									            </form>
                                            </td>
                                            <td>${item.product.sellingPrice}</td>
                                            <td>${item.quantity * item.product.sellingPrice}</td>
                                            <td class="product-remove">
									            <form action="${pageContext.request.contextPath}/cart" method="POST">
									                <input type="hidden" name="action" value="remove" />
									                <input type="hidden" name="idProduct" value="${item.product.idProduct}" />
									                <button type="submit" class="remove-btn"><i class="fa fa-times"></i>Xóa</button>
									            </form>
									        </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Cart Area End -->
</body>
</html>