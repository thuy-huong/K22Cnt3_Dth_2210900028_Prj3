package com.dth2210900028pro3.filter;
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.dth2210900028pro3.constant.SystemConstant;
import com.dth2210900028pro3.model.DthCartModel;
import com.dth2210900028pro3.model.DthItemModel;
import com.dth2210900028pro3.service.ICategoryService;
import com.dth2210900028pro3.service.IDthBrandService;
import com.dth2210900028pro3.utils.SessionUtil;

@WebFilter("/*") 
public class HeaderDataFilter implements Filter {

	
	@Inject
	private ICategoryService categoryService;

	@Inject
	private IDthBrandService brandService;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Khởi tạo filter nếu cần
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        // Chuyển đổi request thành HttpServletRequest để có thể sử dụng các phương thức HTTP
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        httpRequest.setAttribute("categories", categoryService.findAll());
        httpRequest.setAttribute("brands", brandService.findAll());
        
        HttpSession session = httpRequest.getSession();
        DthCartModel cartHeader = (DthCartModel) session.getAttribute("CART");
 
        if (cartHeader != null) {
        	 DthItemModel cartItems = new DthItemModel();
             cartItems.setListResult(cartHeader.getItems());
            
             request.setAttribute("cartItems", cartItems);
             request.setAttribute("cartHeader", cartHeader);
        }

       
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // Giải phóng tài nguyên nếu cần
    }
}