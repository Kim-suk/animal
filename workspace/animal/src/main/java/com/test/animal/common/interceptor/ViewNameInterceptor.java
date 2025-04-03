package com.test.animal.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ViewNameInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		try {
			String viewName = getViewName(request);
			request.setAttribute("viewName", viewName);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	    String requestUri = request.getRequestURI();

		  // 특정 API는 인터셉터 무시
	    if (requestUri.startsWith("/api/findHospitals")) {
	        return true; // 통과
	    }

		return true;
	}

	private String getViewName(HttpServletRequest request) {
		// TODO Auto-generated method stub
		int start = request.getContextPath().length();
		String uri = request.getRequestURI();
		int end = uri.lastIndexOf(".");
		
		return uri.substring(start, end);
	}
	
	

}
