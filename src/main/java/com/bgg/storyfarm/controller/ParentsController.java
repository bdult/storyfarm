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
@RequestMapping(value = "parents")
public class ParentsController {
	
	private Logger logger = LoggerFactory.getLogger(ParentsController.class);
	
	@Autowired
	private BreadcrumbUtil breadcrumbUtil;
	
	@RequestMapping(value = "room.do", method = RequestMethod.GET)
	public ModelAndView room(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/room");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM));
		return mav;
	}
	
	@RequestMapping(value = "study.do", method = RequestMethod.GET)
	public ModelAndView study(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/study");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM,
				StoryfarmConstants.BREADCRUMB_PARENTS_STUDY));
		return mav;
	}
	
	@RequestMapping(value = "items.do", method = RequestMethod.GET)
	public ModelAndView items(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/items");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM,
				StoryfarmConstants.BREADCRUMB_PARENTS_STUDY,
				StoryfarmConstants.BREADCRUMB_PARENTS_ITEMS));
		return mav;
	}

	@RequestMapping(value = "children.do", method = RequestMethod.GET)
	public ModelAndView children(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/children");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM,
				StoryfarmConstants.BREADCRUMB_PARENTS_CHILDREN));
		return mav;
	}
	@RequestMapping(value = "series.do", method = RequestMethod.GET)
	public ModelAndView series(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/series");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM,
				StoryfarmConstants.BREADCRUMB_PARENTS_STUDY,
				StoryfarmConstants.BREADCRUMB_PARENTS_SERIES));
		return mav;
	}

	@RequestMapping(value = "period.do", method = RequestMethod.GET)
	public ModelAndView period(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/period");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM,
				StoryfarmConstants.BREADCRUMB_PARENTS_STUDY,
				StoryfarmConstants.BREADCRUMB_PARENTS_PERIOD));
		return mav;
	}
	
	@RequestMapping(value = "weekly.do", method = RequestMethod.GET)
	public ModelAndView weekly(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/weekly");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM,
				StoryfarmConstants.BREADCRUMB_PARENTS_PERIOD,
				StoryfarmConstants.BREADCRUMB_PARENTS_WEEKLY));
		return mav;
	}
	
	@RequestMapping(value = "monthly.do", method = RequestMethod.GET)
	public ModelAndView monthly(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/monthly");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM,
				StoryfarmConstants.BREADCRUMB_PARENTS_PERIOD,
				StoryfarmConstants.BREADCRUMB_PARENTS_MONTHLY));
		return mav;
	}
	
	@RequestMapping(value = "time.do", method = RequestMethod.GET)
	public ModelAndView time(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/time");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM,
				StoryfarmConstants.BREADCRUMB_PARENTS_TIME));
		return mav;
	}
	
}
