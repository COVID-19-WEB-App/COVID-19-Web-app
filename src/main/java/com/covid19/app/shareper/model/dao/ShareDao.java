package com.covid19.app.shareper.model.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.covid19.app.shareper.model.dto.Share;
import com.covid19.app.shareper.model.dto.ShareFile;

@Repository
public class ShareDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public void insertBoard(Share share) {
		
		sqlSession.insert("SHARE.shareUpload", share);
	}


	public void insertFile(ShareFile shf) {
		sqlSession.insert("SHARE.insertFile",shf);
	}


	public void insertThumb(Map<String,String> fileInfo) {
		sqlSession.insert("SHARE.insertThumb" , fileInfo);
	}
	
	
	
	
}
