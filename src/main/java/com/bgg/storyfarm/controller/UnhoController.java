package com.bgg.storyfarm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UnhoController {
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value = "six.do")
	public String six(Model model) {
		logger.info("six.do");
		
		return "view/six";
	}
	

	@RequestMapping(value = "seven.do")
	public String seven(Model model) {
		logger.info("seven.do");
		
		return "view/seven";
	}
	

	@RequestMapping(value = "eight.do")
	public String eight(Model model) {
		logger.info("eight.do");
		
		return "view/eight";
	}
	
	@RequestMapping(value = "nine.do")
	public String nine(Model model) {
		logger.info("nine.do");
		
		return "view/nine";
	}
	
	@RequestMapping(value = "ten.do")
	public String ten(Model model) {
		logger.info("ten.do");
		
		return "view/ten";
	}
	
}
