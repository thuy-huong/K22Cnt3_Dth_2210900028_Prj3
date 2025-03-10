package com.dth2210900028pro3.controller.admin;

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
import com.dth2210900028pro3.service.ICategoryService;
import com.dth2210900028pro3.service.IDthBrandService;
import com.dth2210900028pro3.service.IDthProductService;

@WebServlet(urlPatterns = { "/admin-product" })
public class DthAdminProductController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Inject
    private IDthProductService productService;

    @Inject
    private ICategoryService categoryService;

    @Inject
    private IDthBrandService brandService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        DthProductModel model = new DthProductModel();
        String view = "";

        // Lấy type từ request
        String type = request.getParameter("type");
        model.setType(type);

        if (SystemConstant.LIST.equals(model.getType())) {
            model.setListResult(productService.findAll());
            request.setAttribute(SystemConstant.MODEL, model);
            view = "/views/admin/product/listproduct.jsp";

        } else if (SystemConstant.EDIT.equals(model.getType())) {
            String idProduct = request.getParameter("idProduct");
            if (idProduct != null) {
                // Update
                model = productService.findOne(Long.parseLong(idProduct));
            } else {
                // Add new
                model = new DthProductModel();
            }
            
            request.setAttribute("categories", categoryService.findAll());
            request.setAttribute("brands", brandService.findAll());
            request.setAttribute(SystemConstant.MODEL, model);
            view = "/views/admin/product/editproduct.jsp";
        }

        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Logic để thêm hoặc cập nhật sản phẩm
    }
}