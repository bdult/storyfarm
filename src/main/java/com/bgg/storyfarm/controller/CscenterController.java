package com.bgg.storyfarm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bgg.storyfarm.common.BreadcrumbUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;


@Controller
@RequestMapping(value = "cscenter")
public class CscenterController {
	
	private Logger logger = LoggerFactory.getLogger(CscenterController.class);
	
	@Autowired
	private BreadcrumbUtil breadcrumbUtil;
	
	@RequestMapping(value = "notice.do", method = RequestMethod.GET)
	public ModelAndView notice(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/notice");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_NOTI));
		return mav;
	}
	
	@RequestMapping(value = "faq.do", method = RequestMethod.GET)
	public String faq(Model model) {
		
		return "side-cscenter/faq";
	}
	
	@RequestMapping(value = "event.do", method = RequestMethod.GET)
	public String event(Model model) {
		
		return "side-cscenter/event";
	}
	
	@RequestMapping(value = "ask.do", method = RequestMethod.GET)
	public String ask(Model model) {
		
		return "side-cscenter/ask";
	}
	
}
