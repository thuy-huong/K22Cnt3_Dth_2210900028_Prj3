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
import com.dth2210900028pro3.model.DthProductModel;
import com.dth2210900028pro3.service.IDthProductService;

@WebServlet(urlPatterns = { "/admin-product-list" })
public class DthAdminProductController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Inject
	private IDthProductService productService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DthProductModel model = new DthProductModel();
		model.setListResult(productService.findAll());
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/product/listproduct.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
