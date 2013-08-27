package com.bgg.storyfarm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bgg.storyfarm.common.BreadcrumbUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;

@Controller
@RequestMapping(value = "introduce")
public class IntroduceController {

	@Autowired
	private BreadcrumbUtil breadcrumbUtil;
	
	@RequestMapping(value = "storyfarmIntro.do", method = RequestMethod.GET)
	public ModelAndView storyfarmIntro(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-introduce/storyfarmIntro");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_STORYFARM_INTRO));
		return mav;
	}
	
	@RequestMapping(value = "publisherIntro.do", method = RequestMethod.GET)
	public ModelAndView publisherIntro(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-introduce/publisherIntro");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_PUBLISHER_INTRO));
		return mav;
	}
	
	@RequestMapping(value = "parentsroomIntro.do", method = RequestMethod.GET)
	public ModelAndView parentsroomIntro(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-introduce/parentsroomIntro");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_PARENTSROOM_INTRO));
		return mav;
	}
	
	@RequestMapping(value = "paymentInfo.do", method = RequestMethod.GET)
	public ModelAndView paymentInfo(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-introduce/paymentInfo");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_PAYMENT_INFO));
		return mav;
	}
}
