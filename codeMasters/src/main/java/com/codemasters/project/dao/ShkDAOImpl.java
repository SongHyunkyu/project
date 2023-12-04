package com.codemasters.project.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.codemasters.project.dto.BookDTO;
import com.codemasters.project.dto.MemberDTO;
import com.codemasters.project.dto.OrderDTO;

@Repository
public class ShkDAOImpl implements ShkDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public int isUserid(String userid) {
		
		int isUserid = sqlSession.selectOne("shk.isUserid",userid);
		
		return isUserid;
	}

	@Override
	public int insert(MemberDTO dto) {
		int result = sqlSession.insert("shk.insert",dto);
		return result;
	}

	@Override
	public MemberDTO login(String mid, String mpw) {
		Map map = new HashMap();
		map.put("mid", mid);
		map.put("mpw", mpw);
		
		MemberDTO dto = sqlSession.selectOne("shk.login",map);
		return dto;
	}

	@Override
	public List getCartItems(int member_Number) {
		List cart = sqlSession.selectList("shk.getCartItems", member_Number);
		return cart;
	}


	@Override
	public void insertOrder(OrderDTO dto) {
		sqlSession.insert("shk.insertOrder",dto);		
	}

	@Override
	public List bookNum(int book_number) {
		List book = sqlSession.selectList("shk.bookNum", book_number);
		return book;
	}

	@Override
	public void deleteCart(int member_number) {
		sqlSession.delete("shk.deleteCart", member_number);
		
	}



}
