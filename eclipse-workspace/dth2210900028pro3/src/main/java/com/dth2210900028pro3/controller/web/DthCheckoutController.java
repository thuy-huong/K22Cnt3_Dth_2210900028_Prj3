package com.dth2210900028pro3.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import com.dth2210900028pro3.model.DthCartModel;
import com.dth2210900028pro3.model.DthItemModel;
import com.dth2210900028pro3.model.DthOrderDetailModel;
import com.dth2210900028pro3.model.DthOrderModel;
import com.dth2210900028pro3.model.DthProductModel;
import com.dth2210900028pro3.model.DthUserModel;
import com.dth2210900028pro3.service.IDthOrderDetailService;
import com.dth2210900028pro3.service.IDthOrderService;
import com.dth2210900028pro3.service.IDthProductService;
import com.dth2210900028pro3.utils.FormUtil;
import com.dth2210900028pro3.utils.SessionUtil;

@WebServlet(urlPatterns = { "/thanh-toan" })
public class DthCheckoutController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Inject
	private IDthOrderService orderService;
	@Inject
	private IDthOrderDetailService orderDetailService;
	@Inject
	private IDthProductService productService;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
		
		  HttpSession session = request.getSession();
	        DthCartModel cart = (DthCartModel) session.getAttribute("CART");

	     
	        request.setAttribute("cart", cart); // Đưa giỏ hàng vào request
	        RequestDispatcher rd = request.getRequestDispatcher("/views/web/checkout.jsp");
	        rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    HttpSession session = request.getSession();
	    DthCartModel cart = (DthCartModel) session.getAttribute("CART");

	    // Kiểm tra xem cart có tồn tại và không rỗng hay không
	    if (cart != null && !cart.getItems().isEmpty()) {
	        try {
	            // Chuyển đổi tham số từ request thành DthOrderModel
	            DthOrderModel orderModel = FormUtil.toModel(DthOrderModel.class, request);
	            orderModel.setCreatedBy(((DthUserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
	            orderModel.setModifiedBy(((DthUserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
	            DthOrderModel order = orderService.save(orderModel); // Lưu đơn hàng

	            // Lặp qua từng mặt hàng trong giỏ để lưu thông tin chi tiết đơn hàng
	            for (DthItemModel item : cart.getItems()) {
	                DthOrderDetailModel orderDetail = new DthOrderDetailModel();
	                orderDetail.setIdOrder(order.getIdOrder());
	                orderDetail.setIdProduct(item.getProduct().getIdProduct());
	                orderDetail.setQuantitySold(item.getQuantity());
	                orderDetailService.save(orderDetail); 

	                // Cập nhật số lượng sản phẩm
	                DthProductModel product = productService.findOne(item.getProduct().getIdProduct());
	                
	               
	                product.setQuantity(product.getQuantity() - item.getQuantity());
	                productService.update(product); // Cập nhật tồn kho
	            }

	            // Xoá giỏ hàng sau khi đã đặt hàng thành công
	            session.removeAttribute("CART");

	        
	            response.sendRedirect(request.getContextPath() + "/don-hang");
	        } catch (Exception e) {
	            // Xử lý lỗi, ghi lại log và thông báo cho người dùng
	            e.printStackTrace(); // Xuất ngoại lệ ra console (có thể thay bằng log)
	            request.setAttribute("message", "Đặt hàng không thành công. Vui lòng thử lại!");
	        	request.setAttribute("alert", "danger");
	            response.sendRedirect(request.getContextPath() + "/thanh-toan");
	        }
	    } else {
	    	 request.setAttribute("message", "Đặt hàng thành công. Vui lòng thử lại!");
	        	request.setAttribute("alert", "success");
	            response.sendRedirect(request.getContextPath() + "/cart");
	    }
	}
}
