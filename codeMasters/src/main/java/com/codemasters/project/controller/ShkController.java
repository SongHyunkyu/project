package com.codemasters.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.codemasters.project.dto.MemberDTO;
import com.codemasters.project.dto.OrderDTO;
import com.codemasters.project.service.ShkService;

@Controller
public class ShkController {

	@Autowired
	ShkService shkService;

	@Autowired
	private JavaMailSender mailSender;

	// 약관동의 화면으로 이동
	@RequestMapping("/tos")
	public String tos(HttpSession session) {

		session.setAttribute("agree", false);
		session.setMaxInactiveInterval(60);
		return "termsOfService";
	}

	// 동의에 체크하면 세션값을 true로 바꿈
	@RequestMapping(value = "/agree", method = RequestMethod.POST)
	public String agree(HttpSession session) {

		session.setAttribute("agree", true);
		return "redirect:/register";
	}

	// 세션값이 true면 회원가입폼으로 이동
	@RequestMapping("/register")
	public String register(HttpSession session) {

		Boolean agree = (Boolean) session.getAttribute("agree");
		if (agree == null || !agree) {

			return "redirect:/tos";
		}
		return "registerForm";
	}

	// ajax를 이용한 아이디 중복체크
	@RequestMapping(value = "/isuserid", method = RequestMethod.POST)
	@ResponseBody
	public boolean isuserid(@RequestParam("mid") String mid) {

		// true, false를 회원가입폼으로 전달
		Boolean result = shkService.result(mid);

		return result;
	}

	// 회원가입
	@RequestMapping("/insert")
	public String insert(@ModelAttribute MemberDTO dto) {

		// 1 일반회원, 2 관리자
		dto.setMember_grade(1);

		shkService.insert(dto);

		return "/main";
	}

	// 로그인 화면으로 이동
	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	// 로그인 화면에서 입력받은 데이터 체크
	@RequestMapping("/loginchk")
	public String loginchk(@RequestParam("mid") String mid, @RequestParam("mpw") String mpw, HttpSession session) {

		// db에서 입력받은 id와 pw에 맞는 정보를 가져옴
		MemberDTO member = shkService.login(mid, mpw);

		if (member != null) {
			session.setAttribute("isLogin", "ok");
			session.setAttribute("user", member);
			session.setMaxInactiveInterval(1800);
			return "main";
		} else {
			return "login";
		}
	}

	// 메인
	@RequestMapping("/main")
	public String main() {

		return "main";
	}

	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {

		System.out.println("로그아웃");

		HttpSession session = request.getSession();
		session.invalidate();

		return "redirect:/main";
	}

	// 장바구니 > 주문
	@RequestMapping("/order")
	public String oerder(HttpSession session, MemberDTO dto, Model model) {

		// 로그인한 회원의 세션정보를 가져옴
		MemberDTO user = (MemberDTO) session.getAttribute("user");

		// 장바구니에서 현재 로그인한 회원번호와 일치하는 상품을 가져옴
		List list = shkService.getCartItems(user.getMember_number());

		model.addAttribute("cart", list);

		if (list.isEmpty()) {
			return "cart";
		}
		return "orderForm";
	}

	@RequestMapping("/order_c")
	public String order_c(@ModelAttribute OrderDTO dto, HttpSession session, @RequestParam("address") String address,
			@RequestParam("address_detail") String address_detail,
			@RequestParam("book_number") List<Integer> book_number) {

		// 세션에서 유저 정보 가져옴
		MemberDTO user = (MemberDTO) session.getAttribute("user");

		dto.setShipping(address + " " + address_detail);
		dto.setMember_number(user.getMember_number());

		// 수량만큼 db에 저장
		for (int i = 0; i < book_number.size(); i++) {
			dto.setBook_number(book_number.get(i));
			shkService.insertOrder(dto);
		}

		// 결제정보 db에 저장후 장바구니에서 상품 삭제
		shkService.deleteCart(user.getMember_number());
		return "purchaseOk";
	}

	// 상세페이지에서 결제시
	@RequestMapping("/order2")
	public String order2(@RequestParam("book_number") int book_number, @RequestParam("quantity") int quantity,
			Model model, HttpSession session) {
		// db에서 해당 책번호의 정보를 가져옴
		List list = shkService.getBook(book_number);

		model.addAttribute("list", list);
		model.addAttribute("amount", quantity);

		return "orderForm2";
	}

	@RequestMapping("/order_d")
	public String order_d(@ModelAttribute OrderDTO dto, @RequestParam("address") String address,
			@RequestParam("address_detail") String address_detail,
			@RequestParam("book_number") List<Integer> book_number, HttpSession session) {
		// 세션에서 유저 정보 가져옴
		MemberDTO user = (MemberDTO) session.getAttribute("user");

		dto.setShipping(address + " " + address_detail);
		dto.setMember_number(user.getMember_number());

		// 수량만큼 db에 저장
		for (int i = 0; i < book_number.size(); i++) {
			dto.setBook_number(book_number.get(i));
			shkService.insertOrder(dto);
		}
		return "purchaseOk";
	}

	@RequestMapping("/po")
	public String po() {
		return "purchaseOk";
	}

	@RequestMapping("/po1")
	public String po1() {
		return "redirect:/main";
	}

	@RequestMapping("send")
	public String send() {
		return "/project/sendMail";
	}

	private Map<String, Integer> emailMap = new HashMap<String, Integer>();

	@RequestMapping(value = "/sendMail", method = RequestMethod.GET)
	public void sendMailTest(@RequestParam("email") String email) throws Exception {

		Random random = new Random();
		int authenticationNumber = random.nextInt(900000) + 100000; // 6자리 난수 생성

		String subject = "북마스터스 입니다";
		String content = "인증번호를 입력해주세요" + "\n" + authenticationNumber;
		String from = "BookMasters@gmail.com";
		String to = email;

		MimeMessage mail = mailSender.createMimeMessage();
		MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");

		mailHelper.setFrom(from);
		mailHelper.setTo(to);
		mailHelper.setSubject(subject);
		mailHelper.setText(content, true);

		mailSender.send(mail);

		emailMap.put(email, authenticationNumber);

		System.out.println("입력받은 이메일 : " + email);
		System.out.println("보낸 인증번호 : " + authenticationNumber);

	}

	@RequestMapping(value = "/emailOk", method = RequestMethod.POST)
	@ResponseBody
	public String verifyCode(@RequestParam("email") String email, @RequestParam("code") String code) {

		Integer storedCode = emailMap.get(email);

		// 인증번호가 일치하는지 확인
		if (storedCode != null && storedCode.toString().equals(code)) {
			return "true";
		} else {
			return "false";
		}
	}

}
