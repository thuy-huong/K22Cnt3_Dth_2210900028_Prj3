package com.dth2210900028pro3.controller.web;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dth2210900028pro3.constant.SystemConstant;
import com.dth2210900028pro3.model.DthOrderModel;
import com.dth2210900028pro3.model.DthUserModel;
import com.dth2210900028pro3.service.IDthOrderDetailService;
import com.dth2210900028pro3.service.IDthOrderService;
import com.dth2210900028pro3.utils.SessionUtil;

@WebServlet(urlPatterns = { "/don-hang" })
public class DthOrderController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Inject
	private IDthOrderService orderService;
	@Inject 
	private IDthOrderDetailService orderDetailService;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		DthUserModel user = (DthUserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
		
		List<DthOrderModel> orders = orderService.findByIdUser(user.getIdUser());
		for(DthOrderModel order: orders) {
			order.setOrderDetails(orderDetailService.findByOrderId(order.getIdOrder()));
		}
		DthOrderModel model = new DthOrderModel();
		model.setListResult(orders);
		 request.setAttribute(SystemConstant.MODEL, model);
		    RequestDispatcher rd = request.getRequestDispatcher("/views/web/order.jsp");
		    rd.forward(request, response);
	}
}
