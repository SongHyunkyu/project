package com.codemasters.project.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MainController {
//	
//	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
//	
//
//
//
//	
//	@RequestMapping("/login")
//	public String login(HttpServletRequest request) {
//		System.out.println("login ����");
//		
//		// ���ǿ� �α��� ���� �ֱ�
//		// ������ ���� ���涧 ���ο� ������ return����
//		HttpSession session = request.getSession();
//
////		// ������ ���� ���涧 null�� return����
////		HttpSession session = request.getSession(false);
//
//		session.setAttribute("isLogin", "OK");
//		
//		return "login";
//	}
//	
//	@RequestMapping("/main")
//	public String main(
//			HttpServletRequest request, 
//			HttpServletResponse response
//	) {
//		System.out.println("main ����");
//		
//
//		return "main";
//	}
//
//	
//	@RequestMapping("/logout")
//	public String logout(HttpServletRequest request) {
//		System.out.println("logout ����");
//		
//		HttpSession session = request.getSession();
//		session.invalidate();
//		
//		return "logout";
//	}
//	
}
