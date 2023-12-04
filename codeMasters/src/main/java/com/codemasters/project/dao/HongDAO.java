package com.codemasters.project.dao;

import java.util.List;
import java.util.Map;

import com.codemasters.project.dto.MemberDTO;

public interface HongDAO {

	
    MemberDTO find_id(MemberDTO dto);
    
    /**
	 * nameÀÌ ¶û email·Î id Ã£ ±â 
	 * @param param (id_name_text , id_email_text)
	 * @return
	 */
	public Map<String, Object> findUserId(Map<String, Object> param);

	public Map<String, Object> findUserPw(Map<String, Object> param);

	public int ReSetUserPw(Map<String, Object> param);

	List<Map<String, Object>> getCartList(Map<String, Object> param);

	public int deleteCart(Map<String, Object> param);
	
	
}
