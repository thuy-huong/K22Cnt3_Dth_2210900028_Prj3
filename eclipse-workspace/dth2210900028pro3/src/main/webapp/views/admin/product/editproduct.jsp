<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Cập nhật sản phẩm</title>
    <link rel="stylesheet" href="path/to/bootstrap.css"> <!-- Thêm liên kết đến Bootstrap nếu cần -->
</head>
<body>
    <!-- New Product Add Start -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="col-sm-8 m-auto">
                        <div class="card">
                            <div class="card-body">
                                <h3 class="text-center" style="font-weight: 600; color: black;">
                                    Thông tin sản phẩm
                                </h3>

                                <form class="row g-3">
                                    <div class="col-12">
                                        <label for="nameProduct" class="form-label">Tên Sản phẩm</label>
                                        <input type="text" class="form-control" id="nameProduct" name="nameProduct" value="${model.nameProduct}">
                                    </div>
                                    <div class="col-md-6 my-3">
                                        <label for="idCategory" class="form-label">Danh mục</label>
                                        <select id="idCategory" name="idCategory" class="form-control">
                                            <option value="" disabled>Chọn danh mục...</option>
                                            <c:forEach var="item" items="${categories}">
                                                <option value="${item.idCategory}" 
                                                        <c:if test="${model.idCategory == item.idCategory}">selected</c:if>>
                                                    ${item.nameCategory}
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-md-6 my-3">
                                        <label for="idBrand" class="form-label">Thương hiệu</label>
                                        <select id="idBrand" name="idBrand" class="form-control">
                                            <option value="" disabled>Chọn thương hiệu...</option>
                                            <c:forEach var="item" items="${brands}">
                                                <option value="${item.idBrand}" 
                                                        <c:if test="${model.idBrand == item.idBrand}">selected</c:if>>
                                                    ${item.nameBrand}
                                                </option>
                                            </c:forEach>
                                        </select>
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
                                    <div class="col-12 my-3">
                                        <label for="image" class="form-label">Hình ảnh sản phẩm</label>
                                        <input type="file" class="form-control" id="image" name="image">
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
                                        <button type="submit" class="btn btn-primary" style="width: 40%;">Cập nhật</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- New Product Add End -->
</body>
</html>