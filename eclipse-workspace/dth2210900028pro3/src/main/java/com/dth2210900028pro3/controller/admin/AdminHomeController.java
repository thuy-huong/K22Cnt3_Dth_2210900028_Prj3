package com.dth2210900028pro3.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin-home"})
public class AdminHomeController extends HttpServlet {

	
	private static final long serialVersionUID = -699893251088344845L;
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/adminhome.jsp");
        rd.forward(request, response);
    }

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

}
