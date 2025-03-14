package com.dth2210900028pro3.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dth2210900028pro3.dao.IDthUserDAO;
import com.dth2210900028pro3.model.DthUserModel;
import com.dth2210900028pro3.service.impl.DthUserService;
import com.dth2210900028pro3.utils.FormUtil;


@WebServlet(urlPatterns = { "/dang-ky" })
public class DthRegisterController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Inject
	private DthUserService userService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		DthUserModel model = FormUtil.toModel(DthUserModel.class, request);
		DthUserModel userExists = userService.findByUserName(model.getUserName());
		if (userExists != null) {
			request.setAttribute("message", "Tên đăng nhập đã tồn tại. Vui lòng chọn tên khác.");
			request.setAttribute("alert", "danger");
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
			rd.forward(request, response);
			return; 
		}
		
		DthUserModel userNew = userService.addUser(model);

		if (userNew !=null) {
			  response.sendRedirect(request.getContextPath() + "/dang-nhap?action=login");
		} else {
			request.setAttribute("message", "Đăng ký thất bại. Vui lòng thử lại.");
			request.setAttribute("alert", "danger");
		}

		
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
		rd.forward(request, response);
	}
}
