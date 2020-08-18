package com.covid19.app.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.admin.model.vo.AdminMember;
import com.covid19.app.admin.model.vo.AdminTestVo;

import common.util.Paging;

@Repository
public class AdminDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	//로그인 기능
	public AdminMember selectAdmin(AdminMember admember) {
		return sqlSession.selectOne("ADMIN.selectAdmin", admember);
	}

//	public int selectContentCnt() {
//		return sqlSession.selectOne("TEST.selectContentCntd");
//	}
//
//	public List<AdminTestVo> selectMemberList(Paging page) {
//		return sqlSession.selectList("TEST.selectMemberList", page);
//	}

	public List<AdminTestVo> memberList(AdminTestVo vo) {
		return sqlSession.selectList("TEST.memberList", vo);
	}


}
