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

	// ������� ȭ������ �̵�
	@RequestMapping("/tos")
	public String tos(HttpSession session) {

		session.setAttribute("agree", false);
		session.setMaxInactiveInterval(60);
		return "termsOfService";
	}

	// ���ǿ� üũ�ϸ� ���ǰ��� true�� �ٲ�
	@RequestMapping(value = "/agree", method = RequestMethod.POST)
	public String agree(HttpSession session) {

		session.setAttribute("agree", true);
		return "redirect:/register";
	}

	// ���ǰ��� true�� ȸ������������ �̵�
	@RequestMapping("/register")
	public String register(HttpSession session) {

		Boolean agree = (Boolean) session.getAttribute("agree");
		if (agree == null || !agree) {

			return "redirect:/tos";
		}
		return "registerForm";
	}

	// ajax�� �̿��� ���̵� �ߺ�üũ
	@RequestMapping(value = "/isuserid", method = RequestMethod.POST)
	@ResponseBody
	public boolean isuserid(@RequestParam("mid") String mid) {

		// true, false�� ȸ������������ ����
		Boolean result = shkService.result(mid);

		return result;
	}

	// ȸ������
	@RequestMapping("/insert")
	public String insert(@ModelAttribute MemberDTO dto) {

		// 1 �Ϲ�ȸ��, 2 ������
		dto.setMember_grade(1);

		shkService.insert(dto);

		return "/main";
	}

	// �α��� ȭ������ �̵�
	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	// �α��� ȭ�鿡�� �Է¹��� ������ üũ
	@RequestMapping("/loginchk")
	public String loginchk(@RequestParam("mid") String mid, @RequestParam("mpw") String mpw, HttpSession session) {

		// db���� �Է¹��� id�� pw�� �´� ������ ������
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

	// ����
	@RequestMapping("/main")
	public String main() {

		return "main";
	}

	// �α׾ƿ�
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {

		System.out.println("�α׾ƿ�");

		HttpSession session = request.getSession();
		session.invalidate();

		return "redirect:/main";
	}

	// ��ٱ��� > �ֹ�
	@RequestMapping("/order")
	public String oerder(HttpSession session, MemberDTO dto, Model model) {

		// �α����� ȸ���� ���������� ������
		MemberDTO user = (MemberDTO) session.getAttribute("user");

		// ��ٱ��Ͽ��� ���� �α����� ȸ����ȣ�� ��ġ�ϴ� ��ǰ�� ������
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

		// ���ǿ��� ���� ���� ������
		MemberDTO user = (MemberDTO) session.getAttribute("user");

		dto.setShipping(address + " " + address_detail);
		dto.setMember_number(user.getMember_number());

		// ������ŭ db�� ����
		for (int i = 0; i < book_number.size(); i++) {
			dto.setBook_number(book_number.get(i));
			shkService.insertOrder(dto);
		}

		// �������� db�� ������ ��ٱ��Ͽ��� ��ǰ ����
		shkService.deleteCart(user.getMember_number());
		return "purchaseOk";
	}

	// ������������ ������
	@RequestMapping("/order2")
	public String order2(@RequestParam("book_number") int book_number, @RequestParam("quantity") int quantity,
			Model model, HttpSession session) {
		// db���� �ش� å��ȣ�� ������ ������
		List list = shkService.getBook(book_number);

		model.addAttribute("list", list);
		model.addAttribute("amount", quantity);

		return "orderForm2";
	}

	@RequestMapping("/order_d")
	public String order_d(@ModelAttribute OrderDTO dto, @RequestParam("address") String address,
			@RequestParam("address_detail") String address_detail,
			@RequestParam("book_number") List<Integer> book_number, HttpSession session) {
		// ���ǿ��� ���� ���� ������
		MemberDTO user = (MemberDTO) session.getAttribute("user");

		dto.setShipping(address + " " + address_detail);
		dto.setMember_number(user.getMember_number());

		// ������ŭ db�� ����
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
		int authenticationNumber = random.nextInt(900000) + 100000; // 6�ڸ� ���� ����

		String subject = "�ϸ����ͽ� �Դϴ�";
		String content = "������ȣ�� �Է����ּ���" + "\n" + authenticationNumber;
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

		System.out.println("�Է¹��� �̸��� : " + email);
		System.out.println("���� ������ȣ : " + authenticationNumber);

	}

	@RequestMapping(value = "/emailOk", method = RequestMethod.POST)
	@ResponseBody
	public String verifyCode(@RequestParam("email") String email, @RequestParam("code") String code) {

		Integer storedCode = emailMap.get(email);

		// ������ȣ�� ��ġ�ϴ��� Ȯ��
		if (storedCode != null && storedCode.toString().equals(code)) {
			return "true";
		} else {
			return "false";
		}
	}

}
