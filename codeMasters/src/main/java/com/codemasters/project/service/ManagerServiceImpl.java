package com.codemasters.project.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.codemasters.project.dao.ManagerDAO;
import com.codemasters.project.dto.BookDTO;
import com.codemasters.project.dto.EventDTO;
import com.codemasters.project.dto.MemberDTO;
import com.codemasters.project.dto.NoticeDTO;

@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	ManagerDAO managerDAO;

	// å
	
	@Override
	public Map getManagerBook(int pageNum, int countPerPage, BookDTO dto) {

		int startNum = 0, endNun = 0;
		
		// ���� �������� ������ ����+1;
		startNum = ( (pageNum-1) * (countPerPage) + 1);
		endNun = pageNum * countPerPage;

		dto.setStartNum(startNum);
		dto.setEndNum(endNun);
		
		// �������� å ����Ʈ
		List list = managerDAO.bookPage(dto);	

		// ��ü å ��
		int total = managerDAO.bookTotal(dto);
		System.out.println("booktotal : "+ total);
		Map map = new HashMap();
		
		map.put("list", list);
		map.put("total", total);
		
		return map;
	}
	
	@Override
	public int createBook(BookDTO dto) {
		
		int createBook = managerDAO.createBook(dto);
		
		return createBook;
	}
	
	@Override
	public int updateBook(BookDTO dto) {
		
		int updateBook = managerDAO.updateBook(dto);
		
		return updateBook;
	}

	@Override
	public String bookImgUpload(MultipartHttpServletRequest files) {
		
		String uploadFolder = "D:\\3rd\\codemasters_spring\\codeMasters\\src\\main\\webapp\\resources\\bookimg";
		String oName = null;
		
		List<MultipartFile> list = files.getFiles("files");
		for(int i=0; i<list.size(); i++) {
			MultipartFile mFile = list.get(i);
			
			oName = mFile.getOriginalFilename();
			String name = mFile.getName(); // form�� name
			long size = mFile.getSize();
			
			System.out.println("OriginalFilename : "+ oName);
			System.out.println("name : "+ name);
			System.out.println("size : "+ size);
			System.out.println();
			
			// �ð��� �̿��� unique�� ���ϸ� ����
			oName = System.currentTimeMillis() +"_"+ oName;
			
			// UUID�� �̿��ϴ� ���
			UUID uuid = UUID.randomUUID();
			System.out.println("uuid : "+ uuid.toString());
			oName = uuid.toString() +"_"+ oName;
			
			File saveFile = new File(uploadFolder +"\\"+ oName);
			
			// ������ ����
			try {
				
				mFile.transferTo(saveFile);
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			// DB�� ���ϸ� ����
			
		}
		return oName;
		
	}
	
	@Override
	public List deleteBook(List dto) {
		
		List deleteBook = managerDAO.deleteBook(dto);
		
		return deleteBook;
	}

	@Override
	public List deleteBook_Img(List dto) {
		
		List<BookDTO> img_name = managerDAO.selectImg(dto);
		for ( int i = 0; i < img_name.size(); i++ ) {
			File book_img = new File("D:\\3rd\\codemasters_spring\\codeMasters\\src\\main\\webapp\\"+img_name.get(i).getBook_img());
			System.out.println(book_img);
			if (book_img.exists()) {
				if ( book_img.delete()) {
					System.out.println("�̹��� ���� ����");
				} else {
					System.out.println("���� ����");
				}
			} else {
				System.out.println("�̹����� �������� �ʽ��ϴ�");
			}

		}
		
		return img_name;
	}
	@Override
	public List managerBookDetail(BookDTO dto) {
		
		List bookList = managerDAO.managerBookDetail(dto);
		
		return bookList;
	}

	// ��������
	
	@Override
	public Map getManagerMember(int pageNum, int countPerPage,MemberDTO dto) {
		
		int startNum = 0, endNun = 0;
				
				// ���� �������� ������ ����+1;
				startNum = ( (pageNum-1) * (countPerPage) + 1);
				endNun = pageNum * countPerPage;
		
				dto.setStartNum(startNum);
				dto.setEndNum(endNun);
		
		List list = managerDAO.memberPage(dto);
		
		int total = managerDAO.memberTotal(dto);
		System.out.println("membertotal : "+ total);
		Map map = new HashMap();
		
		map.put("list", list);
		map.put("total", total);
		
		return map;
	}
	
	@Override
	public List memberDetail(MemberDTO dto) {

		List memberList = managerDAO.memberDetail(dto);
		
		return memberList;
	}

	@Override
	public int updateMember(MemberDTO dto) {

		int updateMember = managerDAO.updateMember(dto);
		
		return updateMember;
	}

	@Override
	public List gradeDown(List dto) {
		
		List gradeDown = managerDAO.gradeDown(dto);
		
		return gradeDown;
	}
	
	// ��������

	@Override
	public Map getManagerNotice(int pageNum, int countPerPage, NoticeDTO dto) {

		int startNum = 0, endNun = 0;
		
		// ���� �������� ������ ����+1;
		startNum = ( (pageNum-1) * (countPerPage) + 1);
		endNun = pageNum * countPerPage;

		dto.setStartNum(startNum);
		dto.setEndNum(endNun);
		
		// �������� å ����Ʈ
		List list = managerDAO.noticePage(dto);	

		// ��ü å ��
		int total = managerDAO.noticeTotal(dto);
		System.out.println("noticetotal : "+ total);
		Map map = new HashMap();
		
		map.put("list", list);
		map.put("total", total);
		
		return map;
	}

	@Override
	public int createNotice(NoticeDTO dto) {
		
		int createNotice = managerDAO.createNotice(dto);
		
		return createNotice;
	}

	@Override
	public List managerNoticeDetail(NoticeDTO dto) {

		List noticeList = managerDAO.noticeDetail(dto);
		
		return noticeList;
	}

	@Override
	public int updateNotice(NoticeDTO dto) {

		int updateNotice = managerDAO.updateNotice(dto);
		
		return updateNotice;
	}	
	
	@Override
	public List deleteNotice(List dto) {
		
		List deleteNotice = managerDAO.deleteNotice(dto);
		
		return deleteNotice;
	}
	
	// �̺�Ʈ

	
	@Override
	public Map getManagerEvent(int pageNum, int countPerPage, EventDTO dto) {

		int startNum = 0, endNun = 0;
		
		// ���� �������� ������ ����+1;
		startNum = ( (pageNum-1) * (countPerPage) + 1);
		endNun = pageNum * countPerPage;

		dto.setStartNum(startNum);
		dto.setEndNum(endNun);
		
		// �������� å ����Ʈ
		List list = managerDAO.eventPage(dto);	

		// ��ü å ��
		int total = managerDAO.eventTotal(dto);
		System.out.println("eventtotal : "+ total);
		Map map = new HashMap();
		
		map.put("list", list);
		map.put("total", total);
		
		return map;
	}
	
	@Override
	public int createEvent(EventDTO dto) {
		
		int createEvent = managerDAO.createEvent(dto);
		
		return createEvent;
	}
	
	@Override
	public int updateEvent(EventDTO dto) {
		
		int updateEvent = managerDAO.updateEvent(dto);
		
		return updateEvent;
	}

	@Override
	public String eventImgUpload(MultipartHttpServletRequest files) {
		
		String uploadFolder = "E:\\temp\\codemasters_spring\\codeMasters\\src\\main\\webapp\\resources\\eventimg";
		String oName = null;
		
		List<MultipartFile> list = files.getFiles("files");
		for(int i=0; i<list.size(); i++) {
			MultipartFile mFile = list.get(i);
			
			oName = mFile.getOriginalFilename();
			String name = mFile.getName(); // form�� name
			long size = mFile.getSize();
			
			System.out.println("OriginalFilename : "+ oName);
			System.out.println("name : "+ name);
			System.out.println("size : "+ size);
			System.out.println();
			
			// �ð��� �̿��� unique�� ���ϸ� ����
			oName = System.currentTimeMillis() +"_"+ oName;
			
			// UUID�� �̿��ϴ� ���
			UUID uuid = UUID.randomUUID();
			System.out.println("uuid : "+ uuid.toString());
			oName = uuid.toString() +"_"+ oName;
			
			File saveFile = new File(uploadFolder +"\\"+ oName);
			
			// ������ ����
			try {
				
				mFile.transferTo(saveFile);
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			// DB�� ���ϸ� ����
			
		}
		return oName;
		
	}
	
	@Override
	public List deleteEvent(List dto) {
		
		List deleteEvent = managerDAO.deleteEvent(dto);
		
		return deleteEvent;
	}

	@Override
	public List deleteEvent_Img(List dto) {
		
		List<EventDTO> img_name = managerDAO.selectEventImg(dto);
		for ( int i = 0; i < img_name.size(); i++ ) {
			File event_img = new File("D:\\3rd\\codemasters_spring\\codeMasters\\src\\main\\webapp\\"+img_name.get(i).getEvent_img());
			System.out.println(event_img);
			if (event_img.exists()) {
				if (event_img.delete()) {
					System.out.println("�̹��� ���� ����");
				} else {
					System.out.println("���� ����");
				}
			} else {
				System.out.println("�̹����� �������� �ʽ��ϴ�");
			}

		}
		
		return img_name;
	}
	
	@Override
	public List managerEventDetail(EventDTO dto) {
		
		List eventList = managerDAO.managerEventDetail(dto);
		
		return eventList;
	}


}
