package com.bgg.storyfarm.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bgg.storyfarm.common.BreadcrumbUtil;
import com.bgg.storyfarm.common.PageUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;
import com.bgg.storyfarm.service.ContentsService;
import com.bgg.storyfarm.service.UserService;

@Controller
public class ViewController {
	
	private Logger logger = LoggerFactory.getLogger(ViewController.class);
	
	private final String BACK_URL = "backUrl";
	
	@Autowired
	private BreadcrumbUtil breadcrumbUtil;
	
	@Autowired
	private ContentsService contentsService; 
	
	@Autowired
	private PageUtil pageUtil; 
	
	@Autowired
	private MessageSource messageSource;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "dashboard.do", method = RequestMethod.GET)
	public ModelAndView main(Model model, Locale locale,
			@RequestHeader(value="Accept-Language", required=false, defaultValue="ko") String accLang) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
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

		//페이징 
		int totalCnt = contentsService.contentsCountByBrand(paramMap);
		int pageNum = setPage(paramMap);
		mav.addObject("pageLink", pageUtil.getPageLinkMap(totalCnt, pageNum));
		
		//브랜드 아이디로 콘텐츠 목록 조회
		List<Map<String, Object>> contentList = contentsService.contentsListByBrand(paramMap);
		mav.addObject("contentList", contentList);
		
		return mav;
	}

	/** 카테고리(대) 페이지
	 * @param paramMap
	 * @return
	 */
	@RequestMapping(value = "category.do", method = RequestMethod.GET)
	public ModelAndView category( @RequestParam Map<String,Object> paramMap, HttpServletRequest request ) {
		
		request.getSession().setAttribute(BACK_URL, request.getContextPath()+request.getServletPath()+"?"+request.getQueryString());
		
		String cateId = String.valueOf(paramMap.get("cate_id"));
		ModelAndView mav = new ModelAndView();
		
		String viewName = "contents/korean";
		if(cateId.equals("32")){
			viewName = "contents/english";
		} else if(cateId.equals("38")){
			viewName = "contents/math";
		} else if(cateId.equals("54")){
			viewName = "contents/song";
		} else if(cateId.equals("79")){
			viewName = "contents/story";
		}
		mav.setViewName(viewName);
		
		Map<String, Object> cateDetail = contentsService.cateDetail(paramMap);
		mav.addObject("cateDetail", cateDetail);
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_BIG_CATE));
		
		//페이징 
		int totalCnt = contentsService.contentsCountByCate(paramMap);
		int pageNum = setPage(paramMap);
		mav.addObject("pageLink", pageUtil.getPageLinkMap(totalCnt, pageNum));
		mav.addObject("contentListByCate", contentsService.contentsListByCate(paramMap));
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
		
		//페이징 
		int totalCnt = contentsService.contentsCountBySeries(paramMap);
		int pageNum = setPage(paramMap);
		mav.addObject("pageLink", pageUtil.getPageLinkMap(totalCnt, pageNum));
		mav.addObject("contentList", contentsService.contentsListBySeries(paramMap));
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
	
	/** 오즈월드소개
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "introduce.do", method = RequestMethod.GET)
	public ModelAndView introduce(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/introduce");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME,
				StoryfarmConstants.BREADCRUMB_INTRODUCE));
		return mav;
	}
	
	/** 유료서비스소개
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "introduce2.do", method = RequestMethod.GET)
	public String introduce2(Model model) {
		model.addAttribute(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME,
				StoryfarmConstants.BREADCRUMB_INTRODUCE));
		return "view/introduce2";
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
	public ModelAndView play( @RequestParam Map<String,Object> paramMap, HttpSession session ) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/play");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME));
		
		Map memberInfo = (Map)session.getAttribute(StoryfarmConstants.MEMBER_SESSION);
		if(isLogin(memberInfo)){
			mav.addObject(StoryfarmConstants.LOGIN_YN, "Y");
			boolean isPaymentUser = contentsService.isPaymentMember(memberInfo, paramMap);
			if(isPaymentUser){
				mav.addObject(StoryfarmConstants.PAYMENT_YN, "Y");
			}else{
				mav.addObject(StoryfarmConstants.PAYMENT_YN, "N");
			}
		}else{
			mav.addObject(StoryfarmConstants.LOGIN_YN, "N");
			mav.addObject(StoryfarmConstants.PAYMENT_YN, "N");
		}
		mav.addObject(StoryfarmConstants.CONTENTS, contentsService.detail(paramMap));
		return mav;
	}


	
	@RequestMapping(value = "playList.do", method = RequestMethod.POST)
	public ModelAndView playList( @RequestParam List<String> contentId, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/playList");
		List<Map<String, Object>> playList = contentsService.listByArr(contentId);
		mav.addObject("playList", playList);
		
		Map memberInfo = (Map)session.getAttribute(StoryfarmConstants.MEMBER_SESSION);
		if(isLogin(memberInfo)){
			mav.addObject("loginYn", "Y");
		}else{
			mav.addObject("loginYn", "N");
		}
		
		return mav;
	}
	
	@RequestMapping(value = "streaming.do", method = RequestMethod.GET)
	public String streaming( @RequestParam String contents_id, HttpSession session ) {
		// play.do(상품상세) 에서 로그인 체크를 하지만 
		// 이중체크를 위해 추가 video tag src 속성에 empty 값으로 세팅 한다.
		// 또한 결제를 하지 않은 사용자의 경우도 src 값이 empty 가 된다.
		Map memberInfo = (Map)session.getAttribute(StoryfarmConstants.MEMBER_SESSION);
		
		
		if(isLogin(memberInfo)){
			
			// 플레이 히스토리 저장
			memberInfo.put(StoryfarmConstants.CONTENTS_ID, contents_id);
			contentsService.savePlayHistory(memberInfo);
			
			String redirectUrl = contentsService.movieUrlByContentsId(contents_id);
			return "redirect:"+redirectUrl;
		}else{
			return "";
		}
	}
	

	// UNDER CODE IS TEST_CODE
	@RequestMapping(value = "cropTest.do", method = RequestMethod.GET)
	public String cropTest(Model model) {
		return "pure-cropTest";
	}
	
	/** 페이지 처리
	 * @param paramsMap
	 * @param boardMap
	 * @return
	 */
	private int setPage(Map<String, Object> paramsMap) {
		int pageNum = 1; //시작글 번호
		Object obj = paramsMap.get("pageNum");
		if(obj != null){
			try {
				pageNum = Integer.valueOf(obj.toString());
			} catch (NumberFormatException nfe) {
				nfe.printStackTrace();
			}
		}
		paramsMap.put(PageUtil.ROWNUM_KEY, (pageNum - 1) * PageUtil.PER_PAGE);
		paramsMap.put(PageUtil.PER_KEY, PageUtil.PER_PAGE);
		return pageNum;
	}
	
	private boolean isLogin(Map memberInfo) {
		if(memberInfo == null){
			return false;
		}else{
			return true;
		}
	}
	
}
