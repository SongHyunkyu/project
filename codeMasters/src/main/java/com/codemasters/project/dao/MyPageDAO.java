package com.codemasters.project.dao;

import com.codemasters.project.dto.MemberDTO;

public interface MyPageDAO {
	
	MemberDTO memberDetail(MemberDTO dto);
	void infoUpdate(MemberDTO dto);

}
