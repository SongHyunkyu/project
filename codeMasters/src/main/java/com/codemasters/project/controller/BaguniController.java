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
		
		System.out.println("�� �� �� �� �� ? "+ param.get("cart_number"));
		System.out.println(param);
		try {
			int rtnInt = hongService.deleteCart(param);
			//�������� ��ŭ rtnInt ���� 
			if(rtnInt == 1) {
				//���� 
				rtnMap.put("result",'Y');
				System.out.println("�� �� ");
			}else {
				//���� 
				rtnMap.put("result",'N');
				System.out.println("�� �� ");
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

		System.out.println("�α����� ������ ����" + user);

		System.out.println("�α����� ������ ��ȣ : " + user.getMember_number());

		List list = shkService.getCartItems(3);

		model.addAttribute("cart", list);
		System.out.println("īƮ�� ����Ʈ : " + list);

		if (list.isEmpty()) {

			// ��ٱ��ϰ� ������� �� ó���� �߰��� �� �ֽ��ϴ�.
			// ���� ���, ����ڿ��� �޽����� �����ϰų� �ٸ� �������� �����̷�Ʈ�� �� �ֽ��ϴ�.
			model.addAttribute("message", "��ٱ��ϰ� ��� �ֽ��ϴ�."); // ���� �޽��� �߰�
			return "emptyCartPage"; // ��� �ִ� ��ٱ��� �������� �̵�

		}

		return "orderForm";

	}
}
