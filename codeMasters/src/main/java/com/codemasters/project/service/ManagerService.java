package com.codemasters.project.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.codemasters.project.dto.BookDTO;
import com.codemasters.project.dto.EventDTO;
import com.codemasters.project.dto.MemberDTO;
import com.codemasters.project.dto.NoticeDTO;

public interface ManagerService {

	Map getManagerBook(int pageNum, int countPerPage, BookDTO dto);
	int createBook(BookDTO dto);
	String bookImgUpload(MultipartHttpServletRequest files);
	List managerBookDetail(BookDTO dto);
	int updateBook(BookDTO dto);
	List deleteBook(List dto);
	List deleteBook_Img(List dto);
	
	Map getManagerMember(int pageNum, int countPerPage,MemberDTO dto);
	List memberDetail(MemberDTO dto);
	int updateMember(MemberDTO dto);
	List gradeDown(List dto);
	
	
	Map getManagerNotice(int pageNum, int countPerPage,NoticeDTO dto);
	int createNotice(NoticeDTO dto);
	List managerNoticeDetail(NoticeDTO dto);
	int updateNotice(NoticeDTO dto);
	List deleteNotice(List dto);
	
	Map getManagerEvent(int pageNum, int countPerPage,EventDTO dto);
	int createEvent(EventDTO dto);
	String eventImgUpload(MultipartHttpServletRequest files);
	List managerEventDetail(EventDTO dto);
	int updateEvent(EventDTO dto);
	List deleteEvent(List dto);
	List deleteEvent_Img(List dto);
}
