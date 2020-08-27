package com.covid19.app.shareper.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.covid19.app.shareper.model.dao.ShareDao;
import com.covid19.app.shareper.model.dto.Share;
import com.covid19.app.shareper.model.dto.ShareFile;

import common.util.FileUtil;
import common.util.Paging;

@Service
public class ShareService {
	
	@Autowired
	private ShareDao sharedao;
	
	public void shareup(Share share, List<MultipartFile> file, String root) {
		
		sharedao.insertBoard(share);
		
		if(!(file.size() == 1
				&& file.get(0).getOriginalFilename().equals(""))) {
				
				//파일업로드를 위해 FileUtil.fileUpload() 호출
				List<Map<String,String>> filedata 
						= new FileUtil().fileupload(file, root);
				for(Map<String,String> f : filedata) {
					sharedao.insertThumb(f);
				}
			}
	
	}

	public void insertFile(ShareFile shf) {
		sharedao.insertFile(shf);
	}

	
	
	
	public Map<String, Object> selectSlist(int cPage, int cntPerPage) {
		
		 Map<String, Object> commandMap 
	 		= new HashMap<String, Object>();
	 //페이징 처리를 위한 객체 생성
	 Paging p = new Paging(sharedao.selectContentCnt()
			 ,cPage,cntPerPage);
	 
	 //현재 페이지에 필요한 게시물 목록
	 List<Share> nlist = sharedao.selectshar(p);
	 commandMap.put("nlist", nlist);
	 commandMap.put("paging", p);
	return commandMap;
		
	}

	public Map<String, Object> sharedetail(int share_idx) {
		Map<String, Object> commandMap 
 		= new HashMap<String, Object>();
		List<Share> dlist = sharedao.sharedetail(share_idx);
		commandMap.put("dlist", dlist);
		System.out.println(commandMap);
		return commandMap;
		
	}



	
	

	
}
