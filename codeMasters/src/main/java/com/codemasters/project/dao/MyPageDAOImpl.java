package com.codemasters.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.codemasters.project.dto.MemberDTO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public MemberDTO memberDetail(MemberDTO dto) {
		
		MemberDTO memberDetail = sqlSession.selectOne("mypage.memberDetail", dto);
		
		return memberDetail;
	}

	@Override
	public void infoUpdate(MemberDTO dto) {
		
		sqlSession.selectOne("mypage.infoUpdate", dto);
		
	}
	
	
}
