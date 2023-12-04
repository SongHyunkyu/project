package com.codemasters.project.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.codemasters.project.dto.MemberDTO;

@Repository
public class HongDAOImpl implements HongDAO{

	
	
	@Autowired
	SqlSession sqlSession;
	
	
	@Override
	public MemberDTO find_id(MemberDTO dto) {

		//MemberDTO find_id = sqlSession.selectOne("master.find_id",dto);

		//return find_id;
		return dto;
	}

	@Override
	public Map<String, Object> findUserId(Map<String, Object> param) {
		return sqlSession.selectOne("hong.findUserId",param);
	}

	@Override
	public Map<String, Object> findUserPw(Map<String, Object> param) {
		return sqlSession.selectOne("hong.findUserPw",param);
	}

	@Override
	public int ReSetUserPw(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return sqlSession.update("hong.ReSetUserPw",param);
	}

	@Override
	public List<Map<String, Object>> getCartList(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("hong.getCartList",param);
	}

	@Override
	public int deleteCart(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return sqlSession.delete("hong.deleteCart",param);
	}
	
}
