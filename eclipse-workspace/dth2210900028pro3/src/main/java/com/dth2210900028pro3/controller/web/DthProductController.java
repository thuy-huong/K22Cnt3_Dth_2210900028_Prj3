package com.dth2210900028pro3.controller.web;

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
import com.dth2210900028pro3.service.impl.DthProductService;

@WebServlet(urlPatterns = { "/san-pham" })
public class DthProductController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Inject
	private DthProductService productService;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    String idProduct = request.getParameter("idProduct");
	    String idCategory = request.getParameter("idCategory");
	    String idBrand = request.getParameter("idBrand");
	    String keyword = request.getParameter("keyword");
	    
	    DthProductModel model = new DthProductModel();
	    String view;

	    if (idProduct != null) {
	 
	        model = productService.findOne(Long.parseLong(idProduct));
	        view = "/views/web/productdetail.jsp";
	    } else {
	       
	        if (idCategory != null && !idCategory.isEmpty()) {
	            if (keyword != null && !keyword.isEmpty()) {
	               
	                model.setListResult(productService.finByNameAndIdCategory(keyword, Integer.parseInt(idCategory)));
	            } else {
	                
	                model.setListResult(productService.findByCategoryId(Integer.parseInt(idCategory)));
	            }
	        } else if (idBrand != null && !idBrand.isEmpty()) {
	            
	            model.setListResult(productService.findByBrandId(Integer.parseInt(idBrand)));
	        } else {
	         
	            model.setListResult(productService.findAll());
	        }

	        view = "/views/web/product.jsp";
	    }

	    request.setAttribute(SystemConstant.MODEL, model);
	    RequestDispatcher rd = request.getRequestDispatcher(view);
	    rd.forward(request, response);
	}

}
