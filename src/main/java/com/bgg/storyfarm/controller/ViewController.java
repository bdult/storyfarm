package com.bgg.storyfarm.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bgg.storyfarm.service.ContentsService;

@Controller
public class ViewController {
	
	private Logger logger = LoggerFactory.getLogger(ViewController.class);
	
	@Autowired
	private ContentsService contentsService; 
	
	@RequestMapping(value = "dashboard.do", method = RequestMethod.GET)
	public String main(Model model) {
		return "view/dashboard";
	}
	
	@RequestMapping(value = "brand.do", method = RequestMethod.GET)
	public String brand(Model model) {
		return "view/brand";
	}
	@RequestMapping(value = "contentslist.do", method = RequestMethod.GET)
	public ModelAndView contentslist(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/contentslist");
		
		mav.addObject("contentList", contentsService.list());
		return mav;
	}
	
	@RequestMapping(value = "play.do", method = RequestMethod.GET)
	public String play(Model model) {
		return "view/play";
	}
	
	// UNDER CODE IS TEST_CODE
	@RequestMapping(value = "cropTest.do", method = RequestMethod.GET)
	public String cropTest(Model model) {
		return "pure-cropTest";
	}
	
}
