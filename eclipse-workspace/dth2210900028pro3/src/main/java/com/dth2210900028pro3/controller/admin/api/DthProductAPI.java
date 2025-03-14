package com.dth2210900028pro3.controller.admin.api;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dth2210900028pro3.model.DthProductModel;
import com.dth2210900028pro3.model.DthUserModel;
import com.dth2210900028pro3.service.IDthProductService;
import com.dth2210900028pro3.utils.HttpUtil;
import com.dth2210900028pro3.utils.SessionUtil;
import com.fasterxml.jackson.databind.ObjectMapper;


@WebServlet(urlPatterns = {"/api-admin-product"})
@MultipartConfig
public class DthProductAPI extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Inject
	private IDthProductService productService;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ObjectMapper mapper = new ObjectMapper();
		
		request.setCharacterEncoding("UTF8");
		response.setContentType("application/json");

        // Xử lý hình ảnh nếu có
        Part part = request.getPart("uploadimage");
        String imagePath = null;
        if (part != null && part.getSize() > 0) {
            String realPath = request.getServletContext().getRealPath("/uploads");
            String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
            
            // Đảm bảo thư mục uploads tồn tại
            if (!Files.exists(Paths.get(realPath))) {
                Files.createDirectory(Paths.get(realPath));
            }

            // Lưu hình ảnh
            part.write(realPath + "/" + filename);
            imagePath = "uploads/" + filename;
        }
		DthProductModel productModel =  new DthProductModel();
		productModel.setNameProduct(request.getParameter("nameProduct"));
		productModel.setIdCategory(Integer.parseInt(request.getParameter("idCategory")));
		productModel.setIdBrand(Integer.parseInt(request.getParameter("idBrand")));
		productModel.setImportPrice(Double.parseDouble(request.getParameter("importPrice")));
		productModel.setSellingPrice(Double.parseDouble(request.getParameter("sellingPrice")));
		productModel.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		productModel.setUnit(request.getParameter("unit"));
		productModel.setShortDescription(request.getParameter("shortDescription"));
		productModel.setDetailedDescription(request.getParameter("detailedDescription"));
		productModel.setStatus(Integer.parseInt(request.getParameter("status")));
		productModel.setImage(imagePath);
		productModel.setCreatedBy(((DthUserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
		productModel = productService.save(productModel);
		mapper.writeValue(response.getOutputStream(), productModel);
	}
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    ObjectMapper mapper = new ObjectMapper();
	    request.setCharacterEncoding("UTF8");
	    response.setContentType("application/json");

	    // Xử lý hình ảnh nếu có
	    Part part = request.getPart("uploadimage");
	    String imagePath = null;
	    if (part != null && part.getSize() > 0) {
	        String realPath = request.getServletContext().getRealPath("/uploads");
	        String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();

	        // Đảm bảo thư mục uploads tồn tại
	        if (!Files.exists(Paths.get(realPath))) {
	            Files.createDirectory(Paths.get(realPath));
	        }

	        // Lưu hình ảnh
	        part.write(realPath + "/" + filename);
	        imagePath = "uploads/" + filename;
	    }

	    // Chuyển đổi dữ liệu từ request thành đối tượng DthProductModel
	    DthProductModel productModel =  productService.findOne(Long.parseLong(request.getParameter("idProduct")));

	    // Nếu có hình ảnh mới, cập nhật đường dẫn hình ảnh
	    if (imagePath != null) {
	    	productModel.setImage(imagePath);
	    }
	    productModel.setNameProduct(request.getParameter("nameProduct"));
		productModel.setIdCategory(Integer.parseInt(request.getParameter("idCategory")));
		productModel.setIdBrand(Integer.parseInt(request.getParameter("idBrand")));
		productModel.setImportPrice(Double.parseDouble(request.getParameter("importPrice")));
		productModel.setSellingPrice(Double.parseDouble(request.getParameter("sellingPrice")));
		productModel.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		productModel.setUnit(request.getParameter("unit"));
		productModel.setShortDescription(request.getParameter("shortDescription"));
		productModel.setDetailedDescription(request.getParameter("detailedDescription"));
		productModel.setStatus(Integer.parseInt(request.getParameter("status")));
		productModel.setModifiedBy(((DthUserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
		productModel = productService.update(productModel);
	    mapper.writeValue(response.getOutputStream(), productModel);
	}
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF8");
		response.setContentType("application/json");
		DthProductModel productModel =  HttpUtil.of(request.getReader()).toModel(DthProductModel.class);
		productModel.setModifiedBy(((DthUserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
		productService.delete(productModel.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
	}
	
	
}
