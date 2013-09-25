package com.bgg.storyfarm.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@Autowired
	private MessageSource messageSource;
	
	@RequestMapping(value = "dashboard.do", method = RequestMethod.GET)
	public ModelAndView main(Model model, Locale locale) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/dashboard");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME));
		
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
//		paramMap.put(StoryfarmConstants.BRAND_ID, 2);
//		paramMap.put(StoryfarmConstants.CONTENTS_SERIES_ID, 1);
		
		List<Map<String, Object>> brandList = contentsService.brandList(paramMap);
//		List<Map<String, Object>> categoryList = contentsService.cateList(paramMap);
		mav.addObject("brandList", brandList);
//		mav.addObject("categoryList", categoryList);
		
		
		logger.info( locale.getLanguage());
		logger.info( messageSource.getMessage("brand", null, Locale.ENGLISH));
		
		logger.info( messageSource.getMessage("brand", null, locale));
		
		return mav;
	}
	
	@RequestMapping(value = "brand.do", method = RequestMethod.GET)
	public ModelAndView brand( @RequestParam Map<String,Object> paramMap ) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/brand");
		//TODO 네비게이션 지정 필요
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME));
		
		//브랜드 상세정보 조회
		mav.addObject("brand", contentsService.brandDetail(paramMap));

		//브랜드 아이디로 시리즈 목록 조회
		List<Map<String, Object>> seriesList = contentsService.seriesListByBrand(paramMap);
		mav.addObject("seriesList", seriesList);
		
		//첫번째 시리즈의 콘텐츠 목록 조회
		Map<String, Object> seriesFirst = seriesList.get(0);
		paramMap.put("contents_series_id", seriesFirst.get("CONTENTS_SERIES_ID"));
		List<Map<String, Object>> contentList = contentsService.list(paramMap);
		mav.addObject("contentList", contentList);
		
		return mav;
	}

	/** 카테고리(대) 페이지
	 * @param paramMap
	 * @return
	 */
	@RequestMapping(value = "category.do", method = RequestMethod.GET)
	public ModelAndView category( @RequestParam Map<String,Object> paramMap ) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/category");
		
		Map<String, Object> cateDetail = contentsService.seriesDetail(paramMap);
		mav.addObject("cateDetail", cateDetail);
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_BIG_CATE));
		
		mav.addObject("seriesList", contentsService.seriesListByCategory(paramMap));
		return mav;
	}
	
	/** 시리즈 페이지
	 * @param paramMap
	 * @return
	 */
	@RequestMapping(value = "series.do", method = RequestMethod.GET)
	public ModelAndView series( @RequestParam Map<String,Object> paramMap ) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/series");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_SERIES));
		
		mav.addObject("seriesDetail", contentsService.seriesDetail(paramMap));
		mav.addObject("contentList", contentsService.list(paramMap));
		return mav;
	}

	/** 프린트학습 페이지
	 * @param paramMap
	 * @return
	 */
	@RequestMapping(value = "worksheet.do", method = RequestMethod.GET)
	public ModelAndView worksheet( @RequestParam Map<String,Object> paramMap ) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/worksheet");
//		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_KOREANLANGUAGE));
		
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
	public ModelAndView play( @RequestParam Map<String,Object> paramMap ) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/play");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME));
		
		mav.addObject("contents", contentsService.detail(paramMap));
		return mav;
	}
	
	// UNDER CODE IS TEST_CODE
	@RequestMapping(value = "cropTest.do", method = RequestMethod.GET)
	public String cropTest(Model model) {
		return "pure-cropTest";
	}
	
}
