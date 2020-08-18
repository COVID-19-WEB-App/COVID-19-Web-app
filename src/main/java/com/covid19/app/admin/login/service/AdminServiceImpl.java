package com.covid19.app.admin.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.admin.login.dao.AdminDao;
import com.covid19.app.admin.login.vo.AdminMember;

@Repository
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao adminDao;

	@Override
	public AdminMember selectAdmin(AdminMember admember) {
		return adminDao.selectAdmin(admember);
	}
	

}
