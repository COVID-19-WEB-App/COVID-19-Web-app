package com.covid19.app.admin.controller;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Remove;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.admin.model.service.AdminService;
import com.covid19.app.admin.model.vo.AdminMember;
import com.covid19.app.admin.model.vo.AdminTestVo;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	//관리자 메인
	@RequestMapping(value = "/admain.do", method = RequestMethod.GET)
	public String adminHome(Locale locale, Model model) {
		logger.info("Welcome COVID-19 PROJECT!! KH_FINAL_PROJECT HERE.{}", locale);				
		return "/admin/admain";
	}
	
	//로그인 화면
	@RequestMapping(value = "/adlogin.do", method = RequestMethod.GET)
	public String adminLogin(Locale locale, Model model) {
		
		logger.info("로그인", locale);
		
		return "admin/adlogin";
		
	}
	
	//로그인 기능
	@RequestMapping(value = "/adloginimpl.do", method = RequestMethod.POST)
	public ModelAndView adloginImpl(
			AdminMember admember, 
			HttpSession session,
			HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		AdminMember res = adminService.selectAdmin(admember);
		
		if( res != null) {

			mav.addObject("alertMsg", "로그인 성공");
			mav.addObject("url", request.getContextPath()+ "/admain.do");
			
		} else {
			
			mav.addObject("alertMsg", "로그인 실패");
			mav.addObject("url", request.getContextPath()+ "/adlogin.do");
		}
		
		mav.setViewName("common/result");
		
		return mav;
		
	}
	
	//로그아웃
	@RequestMapping("/adlogout.do")
	public String adlogout() {
		
		return "redirect:adlogin.do";
		
	}
	
	//게시판관리 - 게시판
	@RequestMapping(value = "/adboard.do", method = RequestMethod.GET)
	public String board() {
		return "admin/board/board";
	}
	
	//게시판 관리 - 쇼핑
	@RequestMapping(value = "/adshop.do", method = RequestMethod.GET)
	public String shop() {
		return "admin/board/shop";
	}
	
	//게시판 관리 - QnA
	@RequestMapping(value = "/adqna.do", method = RequestMethod.GET)
	public String qna() {
		return "admin/board/qna";
	}
	
	//사용자 관리 - 판매자 권한
	@RequestMapping(value = "/adseller.do", method = RequestMethod.GET)
	public String seller() {
		return "admin/user/seller";
	}
	
	//사용자 관리 - 회원상세 정보
	@RequestMapping(value = "/admemberlist.do", method = RequestMethod.GET)
	public String information(AdminTestVo vo, Model model) {
		
		List<AdminTestVo> list = adminService.memberList(vo);
		model.addAttribute("list", list);
		
		return "admin/user/memberlist";
	}
	
	//사용자 관리 - 회원상세 정보
//	@RequestMapping(value = "/adinformationList.do", method = RequestMethod.GET)
//	public ModelAndView informationList(
//		@RequestParam(required=false, defaultValue="1") int cPage
//			) {
//
//		ModelAndView mav = new ModelAndView();
//		int cntPerPage = 10;
//		Map<String, Object> commandMap = adminService.selectMemberList(cPage, cntPerPage);
//		
//		mav.addObject("paging", commandMap.get("paging"));
//		mav.addObject("memberData", commandMap);
//		mav.setViewName("admin/user/memberlist");
//		
//		return mav;
//		
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
