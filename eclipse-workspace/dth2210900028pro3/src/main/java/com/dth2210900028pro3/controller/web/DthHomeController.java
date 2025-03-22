package com.dth2210900028pro3.controller.web;

import java.io.IOException;
import java.util.List;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dth2210900028pro3.constant.SystemConstant;
import com.dth2210900028pro3.model.DthProductModel;
import com.dth2210900028pro3.model.DthUserModel;
import com.dth2210900028pro3.service.ICategoryService;
import com.dth2210900028pro3.service.IDthProductService;
import com.dth2210900028pro3.service.IDthUserService;
import com.dth2210900028pro3.utils.FormUtil;
import com.dth2210900028pro3.utils.SessionUtil;

@WebServlet(urlPatterns = { "/trang-chu", "/dang-nhap", "/dang-xuat" })
public class DthHomeController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Inject
	private IDthUserService userService;

	@Inject
	private ICategoryService cateService;

	@Inject
	private IDthProductService productService;
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if (action != null && action.equals("login")) {

			String message = request.getParameter("message");
			String alert = request.getParameter("alert");
			if (message != null && alert != null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
		} else if (action != null && action.equals("logout")) {
			SessionUtil.getInstance().removeValue(request, "USERMODEL");
			response.sendRedirect(request.getContextPath() + "/trang-chu");
		} else {
			DthProductModel model = new DthProductModel();
			model.setListResult(productService.findAll());
			request.setAttribute(SystemConstant.MODEL, model);
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		if (action != null && action.equals("login")) {
			DthUserModel model = FormUtil.toModel(DthUserModel.class, request);
			model = userService.findByUserAndPassAndStatus(model.getUserName(), model.getPassword(), 1);
			if (model != null) {
				SessionUtil.getInstance().putValue(request, "USERMODEL", model);
				

				if (model.getRole().getName().equals("User")) {
					response.sendRedirect(request.getContextPath() + "/trang-chu");
				} else if (model.getRole().getName().equals("Admin")) {
					response.sendRedirect(request.getContextPath() + "/admin-home");
				}
			} else {

				response.sendRedirect(request.getContextPath()
						+ "/dang-nhap?action=login&message=username_password_invalid&alert=danger");

			}
		}
	}
}
