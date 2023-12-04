package com.codemasters.project.service;

import java.util.List;

import com.codemasters.project.dto.MemberDTO;
import com.codemasters.project.dto.OrderDTO;

public interface ShkService {
	
	Boolean result(String ename);
	
	int insert(MemberDTO dto);
	
	MemberDTO login(String mid, String mpw);
	
	List getCartItems(int member_Number);

	void insertOrder(OrderDTO dto);
	
	List getBook(int book_number);
	
	void deleteCart(int member_number);
}
