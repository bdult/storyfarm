package com.bgg.storyfarm.controller;


import java.util.HashMap;

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
import com.bgg.storyfarm.service.ContentsService;

@Controller
public class ViewController {
	
	private Logger logger = LoggerFactory.getLogger(ViewController.class);
	
	@Autowired
	private BreadcrumbUtil breadcrumbUtil;
	
	@Autowired
	private ContentsService contentsService; 
	
	@RequestMapping(value = "dashboard.do", method = RequestMethod.GET)
	public ModelAndView main(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/dashboard");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME));
		return mav;
	}
	
	@RequestMapping(value = "brand.do", method = RequestMethod.GET)
	public String brand(Model model) {
		return "view/brand";
	}
	@RequestMapping(value = "contentsList.do", method = RequestMethod.GET)
	public ModelAndView contentsList(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/contentsList");
		
		//dummy
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_KOREANLANGUAGE));
		mav.addObject("contentList", contentsService.list(paramMap));
		return mav;
	}
	
	@RequestMapping(value = "introduce.do", method = RequestMethod.GET)
	public ModelAndView introduce(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/introduce");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME,
				StoryfarmConstants.BREADCRUMB_INTRODUCE));
		return mav;
	}
	
	@RequestMapping(value = "serviceRules.do", method = RequestMethod.GET)
	public ModelAndView serviceRules(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/serviceRules");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME,
				StoryfarmConstants.BREADCRUMB_SERVICERULES));
		return mav;
	}
	
	@RequestMapping(value = "privacyRules.do", method = RequestMethod.GET)
	public ModelAndView privacyRules(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/privacyRules");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME,
				StoryfarmConstants.BREADCRUMB_PRIVACYRULES));
		return mav;
	}
	
	@RequestMapping(value = "sitemap.do", method = RequestMethod.GET)
	public ModelAndView sitemap(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/sitemap");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME,
				StoryfarmConstants.BREADCRUMB_SITEMAP));
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
