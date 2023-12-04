package com.codemasters.project.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codemasters.project.dao.HongDAO;
import com.codemasters.project.dto.MemberDTO;

@Service
public class HongServiceImpl implements HongService {

	
	
	@Autowired
	HongDAO hongDAO;
	
	
	@Override
	public MemberDTO find_id(MemberDTO dto) {
		
		MemberDTO find_id = hongDAO.find_id(dto);
		
		
		return find_id;
	}

	@Override
	public Map<String, Object> findUserId(Map<String, Object> param) {
		return hongDAO.findUserId(param);
	}
	@Override
	public Map<String, Object> findUserPw(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return hongDAO.findUserPw(param);
	}

	@Override
	public int ReSetUserPw(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return hongDAO.ReSetUserPw(param);
	}

	@Override
	public List<Map<String, Object>> getCartList(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return hongDAO.getCartList(param);
	}

	@Override
	public int deleteCart(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return hongDAO.deleteCart(param);
	}
	
}
