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

		// �α��� ���ص� �۵�
//		if (!"/login".equals(servletPath) && !"/logout".equals(servletPath)&& !"/main".equals(servletPath)
//				&& !"/loginchk".equals(servletPath)&& !"/tos".equals(servletPath) && !"/agree".equals(servletPath)
//				&& !"/register".equals(servletPath) && !"/isuserid".equals(servletPath) && !"/order".equals(servletPath)
//				&& !"/resources/".equals(servletPath)) 
		
		// �α����� �ʿ��� �������� �߰�
		if("/order".equals(servletPath) || "/order2".equals(servletPath)) 
		{			
			HttpSession session = request.getSession();
			String isLogin = (String) session.getAttribute("isLogin");
			if (isLogin != null && isLogin.equals("ok")) {
			    // �̹� �α��ε� ��� �������� �̵�
			    return true; // 
			} else {
			    // �α��ε��� ���� ��� �α��� �������� �̵�
			    response.sendRedirect(ctxPath + "/login");
			    return false; // ��û�� �ߴ��ϰ� �����̷��� ó��
			}
		}

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
//		System.out.println("postHandle ����");
//		
//		long now = System.currentTimeMillis();
//		long before = (Long)request.getAttribute("before");
//		
//		System.out.println("�ɸ� �ð� : " + (now - before));

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
//		System.out.println("afterCompletion ����");

	}

}
