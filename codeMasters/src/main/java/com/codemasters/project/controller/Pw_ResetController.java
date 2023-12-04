package com.codemasters.project.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codemasters.project.service.BookService;

@Controller
public class Pw_ResetController {

	
	@Autowired
	BookService bookService;

	
	
	@RequestMapping("/pw_reset")
	public String ResetPw(@RequestParam Map<String,Object> param, Model model) {
		
		System.out.println(param);
		
		model.addAttribute("rere",param.get("SelectId"));

		System.out.println("1111111111111111+");

		return "pw_reset";

	}
	
}
