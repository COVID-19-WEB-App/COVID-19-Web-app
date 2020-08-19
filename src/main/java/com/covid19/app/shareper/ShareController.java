package com.covid19.app.shareper;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShareController {

	@RequestMapping("/share/list.do")
	public ModelAndView slist() {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("share/list");
		return mav;
		
		
	}
	@RequestMapping("/share/detail.do")
	public ModelAndView sdetail() {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("share/detail");
		return mav;
		
		
	}
	
}
