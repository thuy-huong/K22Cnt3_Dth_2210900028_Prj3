<%@include file="/common/taglib.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách sản phẩm</title>

</head>
<body>

	<!-- Begin Page Content -->
	<div class="container-fluid">
		<c:url var="addNewURL" value="/admin-product">
			<c:param name="type" value="edit"></c:param>

		</c:url>
		<a href="${addNewURL}" class="btn btn-primary btn-lg my-2">Thêm
			mới sản phẩm</a>
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h4 class="m-0 font-weight-bold text-primary text-center">Danh
					sách sản phẩm</h4>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>ID</th>
								<th>Ảnh</th>
								<th>Tên</th>
								<th>Danh mục</th>
								<th>Brand</th>
								<th>Giá bán</th>
								<th>Status</th>
								<th>Option</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>ID</th>
								<th>Ảnh</th>
								<th>Tên</th>
								<th>Danh mục</th>
								<th>Brand</th>
								<th>Giá bán</th>
								<th>Status</th>
								<th>Option</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${model.listResult }">
								<tr>
									<td>${item.idProduct }</td>
									<td>${item.image }</td>
									<td>${item.nameProduct }</td>
									<td>${item.idCategory }</td>
									<td>${item.idBrand }</td>
									<td>${item.sellingPrice }</td>
									<td>${item.status }</td>
									<td class="text-center"><c:url var="editURL"
											value="/admin-product">
											<c:param name="type" value="edit"></c:param>
											<c:param name="idProduct" value="${item.idProduct }"></c:param>
										</c:url> <a href="#" class="text-info"> <i
											class="fas fa-fw fa-regular fa-eye"></i>
									</a> |<a href="${editURL }" class="text-success"> <i
											class="fas fa-fw fa-light fa-pen"></i>
									</a> |<a href="#" class="text-danger"> <i
											class="fas fa-fw fa-regular fa-trash"></i>
									</a></td>
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