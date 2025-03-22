package com.dth2210900028pro3.controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dth2210900028pro3.constant.SystemConstant;
import com.dth2210900028pro3.model.DthOrderDetailModel;
import com.dth2210900028pro3.model.DthOrderModel;
import com.dth2210900028pro3.model.DthProductModel;
import com.dth2210900028pro3.model.DthUserModel;
import com.dth2210900028pro3.service.IDthOrderDetailService;
import com.dth2210900028pro3.service.IDthOrderService;
import com.dth2210900028pro3.service.IDthProductService;
import com.dth2210900028pro3.service.IDthUserService;

@WebServlet(urlPatterns = { "/admin-order" })
public class DthAdminOrderController extends HttpServlet {

	@Inject
	private IDthOrderService orderService;
	@Inject
	private IDthUserService userService;
	@Inject 
	private IDthOrderDetailService orderDetailService;
	
	@Inject
	private IDthProductService productService;
	
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		 DthOrderModel model = new DthOrderModel();
		
		 List<DthOrderDetailModel> orderDetailModels = new ArrayList<DthOrderDetailModel>();
		 List<DthProductModel> products = new ArrayList<DthProductModel>();
		
		 model.setListResult(orderService.findAll());
		 for(DthOrderModel item : model.getListResult()) {
			 item.setUser(userService.findByid(item.getIdUser()));
			
			 orderDetailModels.addAll(orderDetailService.findByOrderId(item.getIdOrder()));
			 item.setOrderDetails(orderDetailModels);
			 for(DthOrderDetailModel i : model.getOrderDetails()) {
				 products.add(productService.findOne(i.getIdProduct()));
			 }

		 }
	
		
		 request.setAttribute("products", products);
		 
         request.setAttribute(SystemConstant.MODEL, model);
       
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/order/listorder.jsp");
		rd.forward(request, response);
	}
}
