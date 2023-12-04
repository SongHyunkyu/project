package com.codemasters.project.service;

import com.codemasters.project.dto.MemberDTO;

public interface MyPageService {
	
	MemberDTO memberDetail(MemberDTO dto);
	void infoUpdate(MemberDTO dto);
}
