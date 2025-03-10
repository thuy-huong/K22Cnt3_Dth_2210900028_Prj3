package com.dth2210900028pro3.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dth2210900028pro3.constant.SystemConstant;
import com.dth2210900028pro3.model.DthUserModel;
import com.dth2210900028pro3.utils.SessionUtil;

public class AuthorizationFilter implements Filter{

	private ServletContext context;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException{
		this.context = filterConfig.getServletContext();
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
	        throws IOException, ServletException {
	    HttpServletRequest request = (HttpServletRequest) servletRequest;
	    HttpServletResponse response = (HttpServletResponse) servletResponse;
	    String url = request.getRequestURI();
	    
	    try {
	    	if(url.startsWith(request.getContextPath()+"/admin")) {
	            DthUserModel model = (DthUserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
	            if (model != null) {
	                if (model.getRole().getName().equals(SystemConstant.ADMIN)) {
	                    chain.doFilter(servletRequest, servletResponse);
	                } else if (model.getRole().getName().equals(SystemConstant.USER)) {
	                    response.sendRedirect(request.getContextPath() + "/dang-nhap?action=login&message=not_permission&alert=danger");
	                }
	            } else {
	                response.sendRedirect(request.getContextPath() + "/dang-nhap?action=login&message=not_login&alert=danger");
	            }
	        } else {
	            chain.doFilter(servletRequest, servletResponse);
	        }
	    } catch (Exception e) {
	        
	        response.sendRedirect(request.getContextPath() + "/error-page.jsp"); 
	    }
	}
	
	@Override
	public void destroy() {
		
	}
}
