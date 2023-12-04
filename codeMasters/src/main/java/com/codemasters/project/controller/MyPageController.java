package com.codemasters.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codemasters.project.dto.MemberDTO;
import com.codemasters.project.service.MyPageService;

@Controller
public class MyPageController {

	@Autowired
	MyPageService mypageService;
	
	@RequestMapping("/myPageHome")
	public String myPageHome() {
		
		
		return"myPageHome";
	}
	
	@RequestMapping("/myPageInfo")
	public String myPageInfo(				
				Model model,
				@ModelAttribute
				MemberDTO dto
			) {
	
		MemberDTO info = mypageService.memberDetail(dto);
		model.addAttribute("info", info);
	
		return"myPageInfo";
	}
	
	@RequestMapping("/infoUpdate")
	public String infoUpdate(
					MemberDTO dto
				) {
	
		mypageService.infoUpdate(dto);
		
		return "redirect:/myPageInfo";
	}
	
}
