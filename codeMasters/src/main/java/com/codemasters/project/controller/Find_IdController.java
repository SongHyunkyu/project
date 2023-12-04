package com.codemasters.project.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.codemasters.project.dto.MemberDTO;
import com.codemasters.project.service.BookService;
import com.codemasters.project.service.HongService;

@Controller
public class Find_IdController {

	@Autowired
	HongService hongService;

	@RequestMapping("/find_id")
	public String find_id( Model model, @ModelAttribute MemberDTO dto) {
	

		System.out.println("dto : " + dto);

		MemberDTO find_id = hongService.find_id(dto);
		System.out.println("find_id : " + find_id);

		model.addAttribute("id", find_id);

		if (find_id != null) {
			model.addAttribute("found_id", find_id.getMname());
		}
		model.addAttribute("error_message", "일치하는 정보가 없습니다.");

		System.out.println("1");
		System.out.println(model);

		return "find_id";

	}
	
	@ResponseBody
	@RequestMapping(value="/findUserId",method= RequestMethod.POST)
	public Map<String,Object> findUserId (HttpServletRequest request, HttpServletResponse response, @RequestParam Map<String,Object> param){
		Map<String,Object> rtnMap =new HashMap<String,Object>();
		//param에는 jsp에서 던진 id_name_text랑 id_email_text가 담겨있음 
		rtnMap = hongService.findUserId(param);
		// rtnMap = { mid : testid}
		return rtnMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/findUserPw",method= RequestMethod.POST)
	public Map<String,Object> findUserPw (HttpServletRequest request, HttpServletResponse response, @RequestParam Map<String,Object> param){
		Map<String,Object> rtnMap =new HashMap<String,Object>();
		
		rtnMap = hongService.findUserPw(param);
		//rtnMap = { MPW : 뭐 시 기 }
		return rtnMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/ReSetUserPw",method= RequestMethod.POST)
	public Map<String,Object> ReSetUserPw (HttpServletRequest request, HttpServletResponse response, @RequestParam Map<String,Object> param){
		Map<String,Object> rtnMap =new HashMap<String,Object>();
		
		System.out.println("222222222222222222222");
		System.out.println(param);
		
		int rtnInt = hongService.ReSetUserPw(param);
		//성공한행 만큼 rtnInt 나옴 
		if(rtnInt == 1) {
			//성공 
			rtnMap.put("result",'Y');
		}else {
			//실패 
			rtnMap.put("result",'N');
		}
		
		
		return rtnMap;
	}
}
