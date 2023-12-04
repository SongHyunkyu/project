package com.codemasters.project.dao;

import java.util.List;

import com.codemasters.project.dto.BookDTO;
import com.codemasters.project.dto.EventDTO;
import com.codemasters.project.dto.MemberDTO;
import com.codemasters.project.dto.NoticeDTO;

public interface ManagerDAO {

	List bookPage(BookDTO dto);
	int bookTotal(BookDTO dto);
	int createBook(BookDTO dto);
	int updateBook(BookDTO dto);
	List managerBookDetail(BookDTO dto);
	List deleteBook(List dto);
	List selectImg(List dto);
	
	List memberPage(MemberDTO dto);
	int memberTotal(MemberDTO dto);
	List memberDetail(MemberDTO dto);
	int updateMember(MemberDTO dto);
	List gradeDown(List dto);
	
	List noticePage(NoticeDTO dto);
	int noticeTotal(NoticeDTO dto);
	int createNotice(NoticeDTO dto);
	List noticeDetail(NoticeDTO dto);
	int updateNotice(NoticeDTO dto);
	List deleteNotice(List dto);
	
	List eventPage(EventDTO dto);
	int eventTotal(EventDTO dto);
	int createEvent(EventDTO dto);
	int updateEvent(EventDTO dto);
	List managerEventDetail(EventDTO dto);
	List deleteEvent(List dto);
	List selectEventImg(List dto);
	
}
