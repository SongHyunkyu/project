package com.codemasters.project.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.codemasters.project.dto.BookDTO;
import com.codemasters.project.dto.EventDTO;
import com.codemasters.project.dto.MemberDTO;
import com.codemasters.project.dto.NoticeDTO;
import com.codemasters.project.service.ManagerService;

@Controller
public class ManagerController {

	@Autowired
	ManagerService managerService;
	
	@RequestMapping("/managerBook")
	public String manageBook(
					Model model,
					HttpServletRequest request,
					@ModelAttribute BookDTO dto
				) {
		
		int pageNum = 1;
		int countPerPage = 10;
		int sort = 1;
		
		String temp_pageNum = request.getParameter("pageNum");
		if(temp_pageNum != null) {
			try {
				
				pageNum = Integer.parseInt(temp_pageNum);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		String temp_countPerPage = request.getParameter("countPerPage");
		if(temp_countPerPage != null) {
			try {
				
				pageNum = Integer.parseInt(temp_countPerPage);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		// db에서 book 목록 전체 조회
		Map map = managerService.getManagerBook(pageNum, countPerPage, dto);
				
		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);
		map.put("book_name", dto.getBook_name());
				
		// model에 담아서
		model.addAttribute("data", map);
		// jsp로 이동(forward)

		return "managerBook";
	}
	
	@RequestMapping("/goBookCreate")
	public String goBookCreate() {
		return "managerBookCreate";
	}
	
	@RequestMapping("/managerBookCreate")
	public String managerBookCreate(
				Model model,
				@ModelAttribute
				BookDTO dto,
				MultipartHttpServletRequest files
			) {
		
		String book_img = managerService.bookImgUpload(files);
		dto.setBook_img("resources\\bookimg\\" + book_img);
		int list = managerService.createBook(dto);
		
		model.addAttribute("list", list);
		
		return "redirect:/managerBook";
	}
	
	@RequestMapping("/managerBookDetail")
	public String managerBookUpdate(
				Model model,
				@ModelAttribute
				BookDTO dto) {
		
		List list = managerService.managerBookDetail(dto);
		model.addAttribute("list", list);
		
		return "managerBookUpdate";	
	}
	
	@RequestMapping("/managerBookUpdate")
	public String managerBookUpdate(
				Model model,
				@ModelAttribute
				BookDTO dto,
				MultipartHttpServletRequest files
			) {
		
		String book_img = managerService.bookImgUpload(files);
		dto.setBook_img("resources\\bookimg\\" + book_img);
		int list = managerService.updateBook(dto);
		
		model.addAttribute("list", list);
		
		return "redirect:/managerBook";
	}
	
	@RequestMapping("/managerBookDelete")
	public String managerBookDelete(
				Model model,
				@RequestParam("book_number")
				List<Integer> dto
				) {
		System.out.println(dto);
		managerService.deleteBook_Img(dto);
		List list = managerService.deleteBook(dto);
		model.addAttribute("list", list);
		
		return "redirect:/managerBook";
	}
	
	@RequestMapping("/managerMember")
	public String managermember(
				Model model,
				HttpServletRequest request,
				@ModelAttribute MemberDTO dto
			) {
		
		
		int pageNum = 1;
		int countPerPage = 10;
		int sort = 1;
		
		
		String temp_pageNum = request.getParameter("pageNum");
		if(temp_pageNum != null) {
			try {
				
				pageNum = Integer.parseInt(temp_pageNum);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		String temp_countPerPage = request.getParameter("countPerPage");
		if(temp_countPerPage != null) {
			try {
				
				pageNum = Integer.parseInt(temp_countPerPage);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		Map map = managerService.getManagerMember(pageNum, countPerPage, dto);
		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);
		map.put("mid", dto.getMid());
		
		model.addAttribute("data", map);
		
		return "managerMember";
	}
	
	@RequestMapping("/managerMemberDetail")
	public String managerMemberDetail(
				Model model,
				@ModelAttribute
				MemberDTO dto) {
		
		List list = managerService.memberDetail(dto);
		model.addAttribute("list", list);
		
		return "managerMemberUpdate";
	}
	
	@RequestMapping("/managerMemberUpdate")
	public String manaerMemberUpdate(
					Model model,
					@ModelAttribute
					MemberDTO dto) {
		
		int list = managerService.updateMember(dto);
		model.addAttribute("list", list);
		
		return "redirect:/managerMember";
	}
	
	@RequestMapping("/gradeDown")
	public String gradeDown(
				Model model,
				@RequestParam("member_number")
				List<Integer> dto) {
		
		List list = managerService.gradeDown(dto);
		model.addAttribute("list", list);
		
		return "redirect:/managerMember";
	}
	
	@RequestMapping("/managerNotice")
	public String managerNotice(
					Model model,
					HttpServletRequest request,
					@ModelAttribute NoticeDTO dto
				) {
		
		int pageNum = 1;
		int countPerPage = 10;
		int sort = 1;
		
		String temp_pageNum = request.getParameter("pageNum");
		if(temp_pageNum != null) {
			try {
				
				pageNum = Integer.parseInt(temp_pageNum);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		String temp_countPerPage = request.getParameter("countPerPage");
		if(temp_countPerPage != null) {
			try {
				
				pageNum = Integer.parseInt(temp_countPerPage);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		// db에서 notice 목록 전체 조회
		Map map = managerService.getManagerNotice(pageNum, countPerPage, dto);
				
		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);
		map.put("book_name", dto.getNotice_name());
				
		// model에 담아서
		model.addAttribute("data", map);
		// jsp로 이동(forward)

		return "managerNotice";
	}	
	
	
	@RequestMapping("/goNoticeCreate")
	public String goNoticeCreate() {
		return "managerNoticeCreate";
	}
	
	
	@RequestMapping("/managerNoticeCreate")
	public String managerNoticeCreate(
				Model model,
				@ModelAttribute
				NoticeDTO dto
			) {
		

		int list = managerService.createNotice(dto);
		
		model.addAttribute("list", list);
		
		return "redirect:/managerNotice";
	}
	
	@RequestMapping("/managerNoticeDetail")
	public String managerNoticeUpdate(
				Model model,
				@ModelAttribute
				NoticeDTO dto) {
		
		List list = managerService.managerNoticeDetail(dto);
		model.addAttribute("list", list);
		
		return "managerNoticeUpdate";	
	}	
	
	@RequestMapping("/managerNoticeUpdate")
	public String manaerNoticeUpdate(
					Model model,
					@ModelAttribute
					NoticeDTO dto) {
		int list = managerService.updateNotice(dto);
		model.addAttribute("list", list);
		
		return "redirect:/managerNotice";
	}	
	
	@RequestMapping("/managerNoticeDelete")
	public String managerNoticeDelete(
				Model model,
				@RequestParam("notice_number")
				List<Integer> dto
				) {
		List list = managerService.deleteNotice(dto);
		model.addAttribute("list", list);
		
		return "redirect:/managerNotice";
	}
	
	// 이벤트
	
	
	@RequestMapping("/managerEvent")
	public String managerEvent(
					Model model,
					HttpServletRequest request,
					@ModelAttribute EventDTO dto
				) {
		
		int pageNum = 1;
		int countPerPage = 10;
		int sort = 1;
		
		String temp_pageNum = request.getParameter("pageNum");
		if(temp_pageNum != null) {
			try {
				
				pageNum = Integer.parseInt(temp_pageNum);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		String temp_countPerPage = request.getParameter("countPerPage");
		if(temp_countPerPage != null) {
			try {
				
				pageNum = Integer.parseInt(temp_countPerPage);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		// db에서 event 목록 전체 조회
		Map map = managerService.getManagerEvent(pageNum, countPerPage, dto);
				
		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);
		map.put("event_name", dto.getEvent_name());
				
		// model에 담아서
		model.addAttribute("data", map);
		// jsp로 이동(forward)

		return "managerEvent";
	}	
	
	
	@RequestMapping("/goEventCreate")
	public String goEventCreate() {
		return "managerEventCreate";
	}
	
	
	@RequestMapping("/managerEventCreate")
	public String managerEventCreate(
				Model model,
				@ModelAttribute
				EventDTO dto,
				MultipartHttpServletRequest files
			) {
		
		String event_img = managerService.eventImgUpload(files);
		dto.setEvent_img("resources\\eventimg\\" + event_img);
		int list = managerService.createEvent(dto);
		
		model.addAttribute("list", list);
		
		return "redirect:/managerEvent";
	}
	
	@RequestMapping("/managerEventDetail")
	public String managerEventDetail(
				Model model,
				@ModelAttribute
				EventDTO dto) {
		
		List list = managerService.managerEventDetail(dto);
		model.addAttribute("list", list);
		
		return "managerEventUpdate";	
	}	
	
	@RequestMapping("/managerEventUpdate")
	public String manaerEventUpdate(
					Model model,
					@ModelAttribute
					EventDTO dto,
					MultipartHttpServletRequest files) {
		
		String event_img = managerService.eventImgUpload(files);
		dto.setEvent_img("resources\\eventimg\\" + event_img);
		int list = managerService.updateEvent(dto);
		model.addAttribute("list", list);
		
		return "redirect:/managerEvent";
	}	
	
	@RequestMapping("/managerEventDelete")
	public String managerEventDelete(
				Model model,
				@RequestParam("event_number")
				List<Integer> dto
				) {
		
		managerService.deleteEvent_Img(dto);
		List list = managerService.deleteEvent(dto);
		model.addAttribute("list", list);
		
		return "redirect:/managerEvent";
	}
	

}
