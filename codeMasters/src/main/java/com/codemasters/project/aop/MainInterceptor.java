package com.codemasters.project.aop;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class MainInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		String uri = request.getRequestURI();
		String url = request.getRequestURL().toString();
		String ctxPath = request.getContextPath();
		String servletPath = request.getServletPath();

//		System.out.println("uri : " + uri);
//		System.out.println("url : " + url);
//		System.out.println("ctxPath : " + ctxPath);
//		System.out.println("servletPath : " + servletPath);

		// 로그인 안해도 작동
//		if (!"/login".equals(servletPath) && !"/logout".equals(servletPath)&& !"/main".equals(servletPath)
//				&& !"/loginchk".equals(servletPath)&& !"/tos".equals(servletPath) && !"/agree".equals(servletPath)
//				&& !"/register".equals(servletPath) && !"/isuserid".equals(servletPath) && !"/order".equals(servletPath)
//				&& !"/resources/".equals(servletPath)) 
		
		// 로그인이 필요한 페이지만 추가
		if("/order".equals(servletPath) || "/order2".equals(servletPath)) 
		{			
			HttpSession session = request.getSession();
			String isLogin = (String) session.getAttribute("isLogin");
			if (isLogin != null && isLogin.equals("ok")) {
			    // 이미 로그인된 경우 페이지로 이동
			    return true; // 
			} else {
			    // 로그인되지 않은 경우 로그인 페이지로 이동
			    response.sendRedirect(ctxPath + "/login");
			    return false; // 요청을 중단하고 리다이렉션 처리
			}
		}

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
//		System.out.println("postHandle 실행");
//		
//		long now = System.currentTimeMillis();
//		long before = (Long)request.getAttribute("before");
//		
//		System.out.println("걸린 시간 : " + (now - before));

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
//		System.out.println("afterCompletion 실행");

	}

}
