package com.codemasters.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codemasters.project.dao.MyPageDAO;
import com.codemasters.project.dto.MemberDTO;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MyPageDAO mypageDAO;

	@Override
	public MemberDTO memberDetail(MemberDTO dto) {

		MemberDTO memberDetail = mypageDAO.memberDetail(dto);
		
		return memberDetail;
	}

	@Override
	public void infoUpdate(MemberDTO dto) {
		
		mypageDAO.infoUpdate(dto);
		
	}
	
}
