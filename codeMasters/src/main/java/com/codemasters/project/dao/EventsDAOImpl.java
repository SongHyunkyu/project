package com.codemasters.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.codemasters.project.dto.EventDTO;

@Repository
public class EventsDAOImpl implements EventsDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List eventsPage(EventDTO dto) {
			
		List eventsList = sqlSession.selectList("events.events", dto);
			
		return eventsList;
		
	}

	@Override
	public int eventsTotal(EventDTO dto) {
		
		int total = sqlSession.selectOne("events.eventsTotal", dto);
		
		return total;
	}

}
