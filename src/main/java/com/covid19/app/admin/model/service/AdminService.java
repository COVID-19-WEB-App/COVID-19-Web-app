package com.covid19.app.admin.model.service;

import java.util.List;
import java.util.Map;

import com.covid19.app.admin.model.vo.AdminMember;
import com.covid19.app.admin.model.vo.AdminTestVo;

public interface AdminService {

	//로그인 기능
	public AdminMember selectAdmin(AdminMember admember);

//	public Map<String, Object> selectMemberList(int currentPage, int cntPerPage);

	public List<AdminTestVo> memberList(AdminTestVo vo);


	



	
	


}
