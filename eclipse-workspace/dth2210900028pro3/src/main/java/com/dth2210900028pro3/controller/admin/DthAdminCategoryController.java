package com.dth2210900028pro3.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dth2210900028pro3.constant.SystemConstant;
import com.dth2210900028pro3.model.DthCategoryModel;
import com.dth2210900028pro3.model.DthProductModel;
import com.dth2210900028pro3.service.ICategoryService;
import com.dth2210900028pro3.service.IDthBrandService;
import com.dth2210900028pro3.service.IDthProductService;

@WebServlet(urlPatterns = { "/admin-category" })
public class DthAdminCategoryController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Inject
	private IDthProductService productService;

	@Inject
	private ICategoryService categoryService;

	@Inject
	private IDthBrandService brandService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		DthCategoryModel model = new DthCategoryModel();
		 model.setListResult(categoryService.findAll());
         request.setAttribute(SystemConstant.MODEL, model);
       
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/category/listcate.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Logic để thêm hoặc cập nhật sản phẩm
	}
}
