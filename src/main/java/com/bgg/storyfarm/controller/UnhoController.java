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

	@RequestMapping(value = "twentynine.do")
	public String twentynine(Model model) {
		logger.info("twentynine.do");
		
		return "view/twentynine";
	}

	@RequestMapping(value = "thirtysix.do")
	public String thirtysix(Model model) {
		logger.info("thirtysix.do");
		
		return "view/thirtysix";
	}
	
	@RequestMapping(value = "thirtyeight.do")
	public String thirtyeight(Model model) {
		logger.info("thirtyeight.do");
		
		return "view/thirtyeight";
	}
	
	@RequestMapping(value = "cscenter/fortytwo.do")
	public String fortytwo(Model model) {
		logger.info("fortytwo.do");
		
		return "side-cscenter/fortytwo";
	}
	
	@RequestMapping(value = "cscenter/fortythree.do")
	public String fortythree(Model model) {
		logger.info("fortythree.do");
		
		return "side-cscenter/fortythree";
	}
	
	@RequestMapping(value = "cscenter/fortyfour.do")
	public String fortyfour(Model model) {
		logger.info("fortyfour.do");
		
		return "side-cscenter/fortyfour";
	}
	
	@RequestMapping(value = "cscenter/fortyfive.do")
	public String fortyfive(Model model) {
		logger.info("fortyfive.do");
		
		return "side-cscenter/fortyfive";
	}
}
