package com.covid19.app.admin.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.admin.model.dao.AdminDao;
import com.covid19.app.admin.model.vo.AdminMember;
import com.covid19.app.admin.model.vo.AdminTestVo;

import common.util.Paging;


@Repository
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;

	//로그인 기능
	@Override
	public AdminMember selectAdmin(AdminMember admember) {
		return adminDao.selectAdmin(admember);
	}

	@Override
	public List<AdminTestVo> memberList(AdminTestVo vo) {
		return adminDao.memberList(vo);
	}

//	@Override
//	public Map<String, Object> selectMemberList(int currentPage, int cntPerPage) {
//		
//		 Map<String, Object> commandMap = new HashMap<String, Object>();
//		 
//		 Paging p = new Paging(adminDao.selectContentCnt(), currentPage, cntPerPage);
//		 
//		 List<AdminTestVo> list = adminDao.selectMemberList(p);
//		 
//		 commandMap.put("list", list);
//		 commandMap.put("paging", p);
//		 
//		return commandMap;
//	}


	

}
