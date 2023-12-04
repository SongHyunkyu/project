package com.codemasters.project.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codemasters.project.dto.EventDTO;
import com.codemasters.project.service.EventsService;

@Controller
public class EventsPageController {
	
	@Autowired
	EventsService eventsService;
	
	@RequestMapping("/goEvents")
	public String goEvents(
					Model model,
					@ModelAttribute
					EventDTO dto,
					HttpServletRequest request
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
		Map map = eventsService.getEvents(pageNum, countPerPage, dto);
				
		map.put("pageNum", pageNum);
		map.put("countPerPage", countPerPage);
		map.put("event_name", dto.getEvent_name());
				
		// model에 담아서
		model.addAttribute("data", map);
		// jsp로 이동(forward)
		
		
		return "events";
	}
	

}
