package com.bgg.storyfarm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bgg.storyfarm.common.BreadcrumbUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;
import com.bgg.storyfarm.dao.ContentsDao;


@Controller
@RequestMapping(value = "children")
public class ChildrenController {
	
	private Logger logger = LoggerFactory.getLogger(ChildrenController.class);
	
	@Autowired
	private BreadcrumbUtil breadcrumbUtil;
	
	@Autowired
	private ContentsDao contentsDao;
	
	@RequestMapping(value = "room.do", method = RequestMethod.GET)
	public ModelAndView room(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("children/room");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CHILDREN_ROOM));

		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put(StoryfarmConstants.BRAND_ID, 1);
		
		List<Map<String, Object>> playListContents =  contentsDao.contentsListByBrand(paramMap);
		mav.addObject("movieList", playListContents);
		return mav;
	}
	
	@RequestMapping(value = "play.do", method = RequestMethod.GET)
	public ModelAndView play(Model model, @RequestParam Map<String, Object> paramMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("children/play");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CHILDREN_ROOM,
				StoryfarmConstants.BREADCRUMB_CHILDREN_PLAYER));
		
		Map<String, Object> contentsMap = contentsDao.detail(paramMap);
		logger.info("{}", contentsMap);
		mav.addObject("movie", contentsMap);
		
		return mav;
	}
	
	@RequestMapping(value = "stat.do", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public @ResponseBody String stat(@RequestParam Map<String, Object> paramMap) {
		return "aaaa";
	}
	
}
