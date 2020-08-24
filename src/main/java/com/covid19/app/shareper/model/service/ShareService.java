package com.covid19.app.shareper.model.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.covid19.app.shareper.model.dao.ShareDao;
import com.covid19.app.shareper.model.dto.Share;
import com.covid19.app.shareper.model.dto.ShareFile;

import common.util.FileUtil;

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


	
	

	
}
