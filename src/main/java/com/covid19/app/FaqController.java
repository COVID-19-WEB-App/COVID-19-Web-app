package com.covid19.app;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FaqController {
	
	@RequestMapping(value = "/faqBoard.do", method = RequestMethod.GET)
	public String FaqBoard(Model model) {
		
		return "faqBoard/faqList";
		
	}
	
}
