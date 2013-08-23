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
@RequestMapping(value = "children")
public class ChildrenController {
	
	private Logger logger = LoggerFactory.getLogger(ChildrenController.class);
	
	@Autowired
	private BreadcrumbUtil breadcrumbUtil;
	
	@RequestMapping(value = "room.do", method = RequestMethod.GET)
	public ModelAndView room(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("children/room");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CHILDREN_ROOM));
		return mav;
	}
}
