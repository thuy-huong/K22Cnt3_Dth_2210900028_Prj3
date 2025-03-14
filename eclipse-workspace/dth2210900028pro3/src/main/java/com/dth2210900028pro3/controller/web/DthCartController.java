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

import com.dth2210900028pro3.constant.SystemConstant;
import com.dth2210900028pro3.model.DthCartModel;
import com.dth2210900028pro3.model.DthItemModel;
import com.dth2210900028pro3.model.DthProductModel;
import com.dth2210900028pro3.service.IDthProductService;

@WebServlet(urlPatterns = { "/cart" })
public class DthCartController extends HttpServlet {
    private static final long serialVersionUID = -2172409254049086913L;

    @Inject
    private IDthProductService productService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        DthCartModel cart = (DthCartModel) session.getAttribute("CART");
 
        if (cart == null) {
            cart = new DthCartModel(); // Nếu không có, khởi tạo giỏ hàng mới
        }

        DthItemModel model = new DthItemModel();
        model.setListResult(cart.getItems());
       
        request.setAttribute(SystemConstant.MODEL, model);
        request.setAttribute("cart", cart); // Đưa giỏ hàng vào request
        
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/cart.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            addItemToCart(request, response);
        } else if ("update".equals(action)) {
            updateItemInCart(request, response);
        } else if ("remove".equals(action)) {
            removeItemFromCart(request, response);
        }
    }

    private void addItemToCart(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        Long idProduct = Long.parseLong(request.getParameter("idProduct"));
        DthProductModel product = productService.findOne(idProduct);

        if (product != null) {
            DthItemModel item = new DthItemModel();
            item.setProduct(product);
            item.setQuantity(Integer.parseInt(request.getParameter("quantity")));

            HttpSession session = request.getSession();
            DthCartModel cart = (DthCartModel) session.getAttribute("CART");

            if (cart == null) {
                cart = new DthCartModel(); 
            }
           
            cart.addItem(item); 
            cart.setTotalQuantity(cart.TinhTotalQuantity());
            session.setAttribute("CART", cart); 
            
            response.sendRedirect(request.getContextPath() + "/cart");
        } else {
            response.getWriter().write("Product not found.");
        }
    }

    private void updateItemInCart(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        Long idProduct = Long.parseLong(request.getParameter("idProduct"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        HttpSession session = request.getSession();
        DthCartModel cart = (DthCartModel) session.getAttribute("CART");

        if (cart != null) {
            cart.updateItemQuantity(idProduct, quantity); 
            cart.setTotalQuantity(cart.TinhTotalQuantity());
            session.setAttribute("CART", cart); 
            
            
        }

        response.sendRedirect(request.getContextPath() + "/cart");
    }

    private void removeItemFromCart(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        Long idProduct = Long.parseLong(request.getParameter("idProduct"));

        HttpSession session = request.getSession();
        DthCartModel cart = (DthCartModel) session.getAttribute("CART");

        if (cart != null) {
            cart.removeItem(idProduct); // Xóa sản phẩm khỏi giỏ hàng
            session.setAttribute("CART", cart); // Lưu giỏ hàng vào session
        }

        response.sendRedirect(request.getContextPath() + "/cart");
    }
}