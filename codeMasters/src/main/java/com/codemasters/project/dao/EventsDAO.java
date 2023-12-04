package com.codemasters.project.dao;

import java.util.List;

import com.codemasters.project.dto.EventDTO;

public interface EventsDAO {

	List eventsPage(EventDTO dto);
	int eventsTotal(EventDTO dto);
	
}
