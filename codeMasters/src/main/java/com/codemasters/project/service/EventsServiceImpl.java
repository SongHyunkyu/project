package com.codemasters.project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codemasters.project.dao.EventsDAO;
import com.codemasters.project.dto.EventDTO;

@Service
public class EventsServiceImpl implements EventsService {

	@Autowired
	EventsDAO eventsDAO;
	
	@Override
	public Map getEvents(int pageNum, int countPerPage, EventDTO dto) {
		
		int startNum = 0, endNun = 0;
		
		// 이전 페이지의 마지막 숫자+1;
		startNum = ( (pageNum-1) * (countPerPage) + 1);
		endNun = pageNum * countPerPage;

		dto.setStartNum(startNum);
		dto.setEndNum(endNun);
		
		// 보여지는 책 리스트
		List list = eventsDAO.eventsPage(dto);	

		// 전체 책 수
		int total = eventsDAO.eventsTotal(dto);
		System.out.println("eventstotal : "+ total);
		Map map = new HashMap();
		
		map.put("list", list);
		map.put("total", total);
		
		return map;
	}

}
