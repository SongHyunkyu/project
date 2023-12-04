package com.codemasters.project.service;

import java.util.Map;

import com.codemasters.project.dto.EventDTO;

public interface EventsService {
	
	Map getEvents(int pageNum, int countPerPage, EventDTO dto);

}
