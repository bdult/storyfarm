package com.bgg.storyfarm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "cscenter")
public class CscenterController {
	
	private Logger logger = LoggerFactory.getLogger(CscenterController.class);
	
	@RequestMapping(value = "notice.do", method = RequestMethod.GET)
	public String notice(Model model) {
		
		return "side-cscenter/notice";
	}
	
	@RequestMapping(value = "noticeWriting.do", method = RequestMethod.GET)
	public String noticeWriting(Model model) {
		
		return "side-cscenter/noticeWriting";
	}
	
	@RequestMapping(value = "faq.do", method = RequestMethod.GET)
	public String faq(Model model) {
		
		return "side-cscenter/faq";
	}
	
	@RequestMapping(value = "find.do", method = RequestMethod.GET)
	public String find(Model model) {
		
		return "side-cscenter/find";
	}
	
	@RequestMapping(value = "question.do", method = RequestMethod.GET)
	public String question(Model model) {
		
		return "side-cscenter/question";
	}
	
	@RequestMapping(value = "coupon.do", method = RequestMethod.GET)
	public String coupon(Model model) {
		
		return "side-cscenter/coupon";
	}
	
	@RequestMapping(value = "payment.do", method = RequestMethod.GET)
	public String payment(Model model) {
		
		return "side-cscenter/payment";
	}
}
