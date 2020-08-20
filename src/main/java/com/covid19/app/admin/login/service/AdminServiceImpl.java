package com.covid19.app.admin.login.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covid19.app.admin.login.dao.AdminDao;
import com.covid19.app.admin.login.vo.AdminMember;
import com.covid19.app.admin.login.vo.Adtest;


@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;

	@Override
	public AdminMember selectAdmin(AdminMember admember) {
		return adminDao.selectAdmin(admember);
	}



}
