package com.codemasters.project.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codemasters.project.dao.ShkDAO;
import com.codemasters.project.dto.BookDTO;
import com.codemasters.project.dto.MemberDTO;
import com.codemasters.project.dto.OrderDTO;

@Service
public class ShkServiceImpl implements ShkService {
	
	@Autowired
	ShkDAO shkDAO;

	@Override
	public Boolean result(String ename) {		
		int result = shkDAO.isUserid(ename);		
		return result>0;
	}

	@Override
	public int insert(MemberDTO dto) {		
		int insert = shkDAO.insert(dto);	
		return insert;
	}

	@Override
	public MemberDTO login(String mid, String mpw) {
		MemberDTO dto = shkDAO.login(mid, mpw);
		return dto;
	}

	@Override
	public List getCartItems(int member_Number) {
		List cart = shkDAO.getCartItems(member_Number);
		return cart;
	}

	@Override
	public void insertOrder(OrderDTO dto) {
		shkDAO.insertOrder(dto);
			
	}

	@Override
	public List getBook(int book_number) {
		List book = shkDAO.bookNum(book_number);
		return book;
	}

	@Override
	public void deleteCart(int member_number) {
		shkDAO.deleteCart(member_number);
		
	}


}
