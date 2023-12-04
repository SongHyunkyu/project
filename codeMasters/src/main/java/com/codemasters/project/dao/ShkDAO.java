package com.codemasters.project.dao;

import java.util.List;

import com.codemasters.project.dto.MemberDTO;
import com.codemasters.project.dto.OrderDTO;

public interface ShkDAO {

	int isUserid(String userid);
	
	int insert(MemberDTO dto);
	
	MemberDTO login(String mid, String mpw);
	
	List getCartItems(int member_Number);
	
	void insertOrder(OrderDTO dto);
	
	List bookNum(int book_number);
	
	void deleteCart(int member_number);
	
}
