package com.dth2210900028pro3.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dth2210900028pro3.model.DthProductModel;
import com.dth2210900028pro3.service.IDthProductService;
import com.dth2210900028pro3.utils.HttpUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet(urlPatterns = {"/api-admin-product"})
public class DthProductAPI extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Inject
	private IDthProductService productService;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ObjectMapper mapper = new ObjectMapper();
		
		request.setCharacterEncoding("UTF8");
		response.setContentType("application/json");
		DthProductModel productModel =  HttpUtil.of(request.getReader()).toModel(DthProductModel.class);
		productModel = productService.save(productModel);
		mapper.writeValue(response.getOutputStream(), productModel);
	}
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF8");
		response.setContentType("application/json");
		DthProductModel updateProduct =  HttpUtil.of(request.getReader()).toModel(DthProductModel.class);
		updateProduct= productService.update(updateProduct);
		mapper.writeValue(response.getOutputStream(), updateProduct);
	}
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF8");
		response.setContentType("application/json");
		DthProductModel productModel =  HttpUtil.of(request.getReader()).toModel(DthProductModel.class);
		productService.delete(productModel.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
	}
	
	
}
