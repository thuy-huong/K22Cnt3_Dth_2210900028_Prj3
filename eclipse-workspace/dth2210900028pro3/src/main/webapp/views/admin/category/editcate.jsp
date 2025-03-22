<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-product"/>
<c:url var="listURL" value="/admin-product">
		<c:param name="type" value="list"></c:param>
</c:url>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>${not empty model.idCategory ? 'Cập nhật danh mục' : 'Thêm mới danh mục'}</title>
    <link rel="stylesheet" href="path/to/bootstrap.css"> 
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-sm-8 m-auto">
                        <div class="card">
                            <div class="card-body">
                                <h3 class="text-center" style="font-weight: 600; color: black;">Thông tin sản phẩm</h3>
                                <form class="row g-3" id="formSubmit" enctype="multipart/form-data">
                                    <div class="col-12">
                                        <label for="nameProduct" class="form-label">Tên danh mục</label>
                                        <input type="text" class="form-control" id="nameProduct" name="nameProduct" value="${model.nameProduct}">
                                    </div>
                                    
                                    <div class="col-md-6 my-3">
                                        <label for="importPrice" class="form-label">Đơn giá nhập</label>
                                        <input type="number" class="form-control" id="importPrice" name="importPrice" value="${model.importPrice}">
                                    </div>
                                    <div class="col-md-6 my-3">
                                        <label for="sellingPrice" class="form-label">Đơn giá bán</label>
                                        <input type="number" class="form-control" id="sellingPrice" name="sellingPrice" value="${model.sellingPrice}">
                                    </div>
                                    <div class="col-md-6 my-3">
                                        <label for="quantity" class="form-label">Số lượng</label>
                                        <input type="number" class="form-control" id="quantity" name="quantity" value="${model.quantity}">
                                    </div>
                                    <div class="col-md-6 my-3">
                                        <label for="unit" class="form-label">Đơn vị tính</label>
                                        <input type="text" class="form-control" id="unit" name="unit" value="${model.unit}">
                                    </div>
                                    <div class="col-md-6 my-3">
                                        <label for="status" class="form-label">Trạng thái</label>
                                        <select id="status" name="status" class="form-control">
                                            <option value="1" ${model.status == true ? 'selected' : ''}>Hiển thị</option>
                                            <option value="0" ${model.status == false ? 'selected' : ''}>Ẩn</option>
                                        </select>
                                    </div>
                                    <div class="col-12 my-3">
                                        <label for="uploadimage" class="form-label">Hình ảnh sản phẩm</label>
                                        </br >
                                       	<img src="${model.image}" alt="${item.nameProduct}" style="max-width: 100px; height: auto;">
                                        <input type="file" class="form-control" id="uploadimage" name="uploadimage">
                                    </div>
                                    <div class="col-12 my-3">
                                        <label for="shortDescription" class="form-label">Mô tả ngắn sản phẩm</label>
                                        <textarea class="form-control" id="shortDescription" name="shortDescription">${model.shortDescription}</textarea>
                                    </div>
                                    <div class="col-12 my-3">
                                        <label for="detailedDescription" class="form-label">Mô tả chi tiết sản phẩm</label>
                                        <textarea class="form-control" id="detailedDescription" rows="10" name="detailedDescription">${model.detailedDescription}</textarea>
                                    </div>
                                    <div class="col-12 my-3 text-center">
                                        <input type="hidden" name="idProduct" id="idProduct" value="${model.idProduct}"/>
                                        <input type="button" class="btn btn-primary" style="width: 40%;" id="btnAddOrUpdateProduct"
                                               value="${not empty model.idProduct ? 'Cập nhật sản phẩm' : 'Thêm mới sản phẩm'}" />
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", function() {
            document.getElementById("btnAddOrUpdateProduct").addEventListener("click", function(e) {
                e.preventDefault();
                const formData = new FormData(document.getElementById("formSubmit"));

                var id = document.getElementById("idProduct").value;
                if (id === "") {
                    addNew(formData);
                } else {
                    update(formData);
                }
            });
        });

        function addNew(formData) {
            fetch('${APIurl}', {
                method: 'POST',
                body: formData // Gửi trực tiếp formData
            })
            .then(response => {
                if (response.ok) {
                    return response.json();
                }
                throw new Error('Có lỗi xảy ra khi thêm mới sản phẩm');
            })
            .then(data => {
                alert("Sản phẩm đã được thêm thành công!");
                window.location.href = '${listURL}'; // Chuyển hướng đến danh sách sản phẩm
            })
            .catch(error => {
                alert("Đã xảy ra lỗi: " + error.message);
            });
        }

        function update(formData) {
            fetch('${APIurl}', {
                method: 'PUT',
                body: formData // Gửi trực tiếp formData
            })
            .then(response => {
                if (response.ok) {
                    return response.json();
                }
                throw new Error('Có lỗi xảy ra khi cập nhật sản phẩm');
            })
            .then(data => {
                alert("Sản phẩm đã được cập nhật thành công!");
                window.location.href = '${listURL}'; // Chuyển hướng đến danh sách sản phẩm
            })
            .catch(error => {
                alert("Đã xảy ra lỗi: " + error.message);
            });
        }
    </script>
</body>
</html>