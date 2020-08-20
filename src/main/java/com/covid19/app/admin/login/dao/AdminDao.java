package com.covid19.app.admin.login.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.admin.login.vo.AdminMember;
import com.covid19.app.admin.login.vo.Adtest;

import common.util.Paging;

@Repository
public class AdminDao {
	
	@Autowired
	private SqlSessionTemplate session;

	//로그인 기능
	public AdminMember selectAdmin(AdminMember admember) {
		return session.selectOne("ADMIN.selectAdmin", admember);
	}

	public List<Adtest> userList() {
		return session.selectList("ADMIN.userList");
	}

//	public int selectContentCnt() {
//		return session.selectOne("ADMIN.selectContentCnt");
//	}
//
//	public List<Adtest> selectUserList(Paging page) {
//		return session.selectList("ADMIN.selectUserList", page);
//	}

}
