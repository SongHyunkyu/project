package com.codemasters.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.codemasters.project.dto.MemberDTO;
import com.codemasters.project.service.HongService;
import com.codemasters.project.service.ShkService;

@Controller
public class BaguniController {

	@Autowired
	HongService hongService;

	@Autowired
	ShkService shkService;
	
	@RequestMapping("/baguni")
	public String BaguniList(HttpSession session, Model model, @ModelAttribute MemberDTO dto) {
		Map<String,Object> param = new HashMap<String,Object>();
		
		MemberDTO user = (MemberDTO) session.getAttribute("user");
		//param.put("member",user.getMember_number());
		param.put("member",3);
		
		List<Map<String,Object>> cartList=hongService.getCartList(param);
		
		model.addAttribute("list",cartList);
		
		System.out.println("["+cartList+"]");
		
		return "baguni";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/deleteCart",method= RequestMethod.POST)
	public Map<String,Object> deleteCart (HttpServletRequest request, HttpServletResponse response, @RequestParam Map<String,Object> param){
		Map<String,Object> rtnMap =new HashMap<String,Object>();
		
		System.out.println("어 떤 거 삭 제 ? "+ param.get("cart_number"));
		System.out.println(param);
		try {
			int rtnInt = hongService.deleteCart(param);
			//성공한행 만큼 rtnInt 나옴 
			if(rtnInt == 1) {
				//성공 
				rtnMap.put("result",'Y');
				System.out.println("성 공 ");
			}else {
				//실패 
				rtnMap.put("result",'N');
				System.out.println("실 패 ");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		// rtnMap = { mid : testid}
		return rtnMap;
	}
	
	
	@RequestMapping("/baguniorder")
	public String oerder(HttpSession session, MemberDTO dto, Model model) {

		MemberDTO user = (MemberDTO) session.getAttribute("user");

		if (user == null) {
			return "/login";
		}

		System.out.println("로그인한 유저의 정보" + user);

		System.out.println("로그인한 유저의 번호 : " + user.getMember_number());

		List list = shkService.getCartItems(3);

		model.addAttribute("cart", list);
		System.out.println("카트의 리스트 : " + list);

		if (list.isEmpty()) {

			// 장바구니가 비어있을 때 처리를 추가할 수 있습니다.
			// 예를 들어, 사용자에게 메시지를 전달하거나 다른 페이지로 리다이렉트할 수 있습니다.
			model.addAttribute("message", "장바구니가 비어 있습니다."); // 예제 메시지 추가
			return "emptyCartPage"; // 비어 있는 장바구니 페이지로 이동

		}

		return "orderForm";

	}
}
