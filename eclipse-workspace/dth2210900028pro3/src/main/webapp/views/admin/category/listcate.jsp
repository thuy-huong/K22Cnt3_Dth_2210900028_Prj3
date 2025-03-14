<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>Danh sách danh mục</title>
<link rel="stylesheet" href="path/to/bootstrap.css">
<!-- Thêm đường dẫn đến Bootstrap -->
</head>
<body>
	<!-- Begin Page Content -->
	<div class="container-fluid">


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
								<th>Tên</th>
								<th>Status</th>
								<th>Option</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>ID</th>
								<th>Tên</th>
								<th>Status</th>
								<th>Option</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${model.listResult}">
								<tr>
									<td>${item.idCategory	 }</td>
									<td>${item.nameCategory	 }</td>
									
										<c:if test="${item.status == true}">
											<td>Hiển thị</td>
										</c:if>
                                   	<c:if test="${item.status == false }">
                                   		<tr>Ẩn</tr>
                                   	</c:if>
                                   	
									<td class="text-center">
                                        <c:url var="editDMURL" value="/admin-category">
                                            <c:param name="type" value="edit"></c:param>
                                            <c:param name="idProduct" value="${item.idCategory}"></c:param>
                                        </c:url>
                                        <a href="#" class="text-info"><i class="fas fa-fw fa-regular fa-eye"></i></a> |
                                        <a href="${editURL}" class="text-success"><i class="fas fa-fw fa-light fa-pen"></i></a> |
                                        <a href="#" class="text-danger"><i class="fas fa-fw fa-regular fa-trash"></i></a>
                                    </td>
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