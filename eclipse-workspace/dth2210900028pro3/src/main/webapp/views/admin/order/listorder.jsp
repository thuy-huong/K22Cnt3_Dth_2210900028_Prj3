<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách đơn hàng</title>
</head>
<body>

    <!-- Begin Page Content -->
    <div class="container-fluid">
        <c:url var="addNewURL" value="/admin-product">
            <c:param name="type" value="edit"></c:param>
        </c:url>
        <a href="${addNewURL}" class="btn btn-primary btn-lg my-2">Thêm mới sản phẩm</a>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h4 class="m-0 font-weight-bold text-primary text-center">Danh sách sản phẩm</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                             <tr>
                                <th>ID</th>
                                <th>Khách đặt</th>
                                <th>Địa chỉ</th>
                                <th>PTTH</th>
                                <th>Sản phẩm </th>
                                <th>Tổng tiền</th>
                                <th>Ngày đặt</th>
                                <th>Status</th>
                              
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Khách đặt</th>
                                <th>Địa chỉ</th>
                                <th>PTTH</th>
                                
                                <th>Tổng tiền</th>
                                <th>Ngày đặt</th>
                                <th>Status</th>
                              
                            </tr>
                        </tfoot>
                        <tbody>
                        
						    <c:forEach var="item" items="${model.listResult}">
						        <tr>
						            <td>${item.idOrder}</td>
						           	<td>${item.user.fullName }</td>
						           	<td>${item.shippingAddress }</td>
						           	<td>${item.paymentMethod == 1 ? "Tiền mặt" : "Chuyển khoản"}</td>
						        	
						           	<td>${item.totalPrice }</td>
						           	<td>${item.createdDate }</td>
                            		<td>${item.status == 1 ? "Đặt hàng thành công" : "Giao hàng thành công"}</td>
						        </tr>
						    </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->

</body>
</html>