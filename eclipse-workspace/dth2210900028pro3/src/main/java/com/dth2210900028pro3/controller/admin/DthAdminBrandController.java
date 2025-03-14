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
import com.dth2210900028pro3.model.DthBrandModel;
import com.dth2210900028pro3.service.ICategoryService;
import com.dth2210900028pro3.service.IDthBrandService;
import com.dth2210900028pro3.service.IDthProductService;

@WebServlet(urlPatterns = { "/admin-brand" })
public class DthAdminBrandController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	@Inject
	private IDthProductService productService;

	@Inject
	private ICategoryService categoryService;

	@Inject
	private IDthBrandService brandService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		DthBrandModel model = new DthBrandModel();
		 model.setListResult(brandService.findAll());
         request.setAttribute(SystemConstant.MODEL, model);
       
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/brand/listbrand.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Logic để thêm hoặc cập nhật sản phẩm
	}

}
