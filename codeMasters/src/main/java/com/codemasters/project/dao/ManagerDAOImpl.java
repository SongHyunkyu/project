package com.codemasters.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.codemasters.project.dto.BookDTO;
import com.codemasters.project.dto.EventDTO;
import com.codemasters.project.dto.MemberDTO;
import com.codemasters.project.dto.NoticeDTO;

@Repository
public class ManagerDAOImpl implements ManagerDAO {

	@Autowired
	SqlSession sqlSession;

	// 책

	@Override
	public List bookPage(BookDTO dto) {

		List bookList = sqlSession.selectList("manager.managerbook", dto);
		
		
	
		return bookList;
	}

	@Override
	public int createBook(BookDTO dto) {
		
		int createBook = sqlSession.insert("manager.createBook", dto);
		
		return createBook;
	}
	
	@Override
	public int updateBook(BookDTO dto) {
		
		int updateBook = sqlSession.insert("manager.updateBook", dto);
		
		return updateBook;
	}
	
	@Override
	public int bookTotal(BookDTO dto) {
		
		int result = sqlSession.selectOne("manager.bookTotal", dto);
		System.out.println("total: " + result);
		
		return result;
	}

	@Override
	public List deleteBook(List dto) {
		
		List deleteBook = sqlSession.selectList("manager.deleteBook", dto);
		
		return deleteBook;
	}

	@Override
	public List selectImg(List dto) {
		List selectImg = sqlSession.selectList("manager.selectImg", dto);
		return selectImg;
	}


	@Override
	public List managerBookDetail(BookDTO dto) {
		

		List bookDetail = sqlSession.selectList("manager.managerBookDetail", dto);
		
		return bookDetail;
	}
	
	// 유저관리

	@Override
	public List memberPage(MemberDTO dto) {
		
		List memberList = sqlSession.selectList("manager.managermember", dto);
		
		
		
		return memberList;
	}

	@Override
	public int memberTotal(MemberDTO dto) {
		
		int result = sqlSession.selectOne("manager.memberTotal", dto);
		System.out.println("total: " + result);
		
		return result;
	}
	
	@Override
	public List memberDetail(MemberDTO dto) {
		
		List memberDetail = sqlSession.selectList("manager.memberDetail", dto);
		
		return memberDetail;
	}

	@Override
	public int updateMember(MemberDTO dto) {
		
		int memberUpdate = sqlSession.update("manager.memberUpdate", dto);
		
		return memberUpdate;
	}

	@Override
	public List gradeDown(List dto) {
		
		List gradeDown = sqlSession.selectList("manager.grade_down", dto);
		
		return gradeDown;
	}
	
	// 공지사항

	@Override
	public List noticePage(NoticeDTO dto) {
		
		List noticeList = sqlSession.selectList("manager.managerNotice", dto);

		return noticeList;
	}

	@Override
	public int noticeTotal(NoticeDTO dto) {
		
		int result = sqlSession.selectOne("manager.noticeTotal", dto);
		System.out.println("total: " + result);
		
		return result;
	}

	@Override
	public int createNotice(NoticeDTO dto) {
		
		int createNotice = sqlSession.insert("manager.createNotice", dto);
		
		return createNotice;
	}

	@Override
	public List noticeDetail(NoticeDTO dto) {
		
		List noticeDetail = sqlSession.selectList("manager.noticeDetail", dto);
		
		return noticeDetail;
	}

	@Override
	public int updateNotice(NoticeDTO dto) {
		
		int noticeUpdate = sqlSession.update("manager.noticeUpdate", dto);
		
		return noticeUpdate;
	}

	@Override
	public List deleteNotice(List dto) {
		
		List deleteNotice = sqlSession.selectList("manager.deleteNotice", dto);
		
		return deleteNotice;
	}
	
	// 이벤트
	
	@Override
	public List eventPage(EventDTO dto) {

		List eventList = sqlSession.selectList("manager.managerEvent", dto);
		
		
	
		return eventList;
	}

	@Override
	public int createEvent(EventDTO dto) {
		
		int createEvent = sqlSession.insert("manager.createEvent", dto);
		
		return createEvent;
	}
	
	@Override
	public int updateEvent(EventDTO dto) {
		
		int updateEvent = sqlSession.insert("manager.updateEvent", dto);
		
		return updateEvent;
	}
	
	@Override
	public int eventTotal(EventDTO dto) {
		
		int result = sqlSession.selectOne("manager.eventTotal", dto);
		System.out.println("total: " + result);
		
		return result;
	}

	@Override
	public List deleteEvent(List dto) {
		
		List deleteEvent = sqlSession.selectList("manager.deleteEvent", dto);
		
		return deleteEvent;
	}

	@Override
	public List selectEventImg(List dto) {
		List selectEventImg = sqlSession.selectList("manager.selectEventImg", dto);
		return selectEventImg;
	}


	@Override
	public List managerEventDetail(EventDTO dto) {
		

		List eventDetail = sqlSession.selectList("manager.managerEventDetail", dto);
		
		return eventDetail;
	}


}
