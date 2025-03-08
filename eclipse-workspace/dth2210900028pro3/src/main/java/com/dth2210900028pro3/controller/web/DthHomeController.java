package com.dth2210900028pro3.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dth2210900028pro3.service.ICategoryService;
import com.dth2210900028pro3.service.IDthProductService;

@WebServlet(urlPatterns = {"/trang-chu"})
public class DthHomeController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Inject
	private ICategoryService cateService;

	@Inject
	private IDthProductService productService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
        rd.forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }
}
