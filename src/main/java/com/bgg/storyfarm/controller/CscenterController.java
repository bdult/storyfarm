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
import org.springframework.web.servlet.ModelAndView;

import com.bgg.storyfarm.common.BreadcrumbUtil;
import com.bgg.storyfarm.common.PageUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;
import com.bgg.storyfarm.service.BoardService;


@Controller
@RequestMapping(value = "cscenter")
public class CscenterController {
	
	private Logger logger = LoggerFactory.getLogger(CscenterController.class);
	
	//게시판 TODO : 상수처리?
	private final int NOTI_BOARD_ID = 25; //공지사항
	private final int EVENT_BOARD_ID = 24; //이벤트
	
	private int pageNum = 1; //시작글 번호
	
	@Autowired
	private BreadcrumbUtil breadcrumbUtil;

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private PageUtil pageUtil;
	
	@RequestMapping(value = "notice.do", method = RequestMethod.GET)
	public ModelAndView notice(@RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/notice");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_NOTI));
		
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, NOTI_BOARD_ID);
		
		Object obj = paramsMap.get("pageNum");
		if(obj != null){
			try {
				pageNum = Integer.valueOf(obj.toString());
			} catch (NumberFormatException nfe) {
				nfe.printStackTrace();
			}
		}
		if(pageNum <= 1){
			pageNum = 1;
		}
		boardMap.put(PageUtil.ROWNUM_KEY, (pageNum - 1) * PageUtil.PER_PAGE);
		boardMap.put(PageUtil.PER_KEY, PageUtil.PER_PAGE);
		
		List<Map<String, Object>> noticeList = boardService.list(boardMap);
		mav.addObject("noticeList", noticeList);
		
		int totalCnt = boardService.totalCount(boardMap);
		Map<String, Object> pageLinkMap = pageUtil.setPageLinkDTO(totalCnt, pageNum);
		mav.addObject("pageLink", pageLinkMap);
		
		return mav;
	}
	
	@RequestMapping(value = "noticeView.do", method = RequestMethod.GET)
	public ModelAndView noticeView(@RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/noticeView");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_NOTI));
		
		String contentId = paramsMap.get("contentsId").toString();
		Map<String, Object> writing = boardService.detail(Integer.valueOf(contentId));
		mav.addObject("writing", writing);
		
		return mav;
	}
	
	@RequestMapping(value = "faq.do", method = RequestMethod.GET)
	public ModelAndView faq(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/faq");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_FAQ));
		return mav;
	}
	
	@RequestMapping(value = "event.do", method = RequestMethod.GET)
	public ModelAndView event(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/event");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_EVENT));
		
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, EVENT_BOARD_ID);
		
		List<Map<String, Object>> noticeList = boardService.list(boardMap);
		mav.addObject("noticeList", noticeList);
		
		return mav;
	}
	
	@RequestMapping(value = "eventView.do", method = RequestMethod.GET)
	public ModelAndView eventView(@RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/eventView");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_EVENT));
		
		String contentId = paramsMap.get("contentsId").toString();
		Map<String, Object> writing = boardService.detail(Integer.valueOf(contentId));
		mav.addObject("writing", writing);
		
		return mav;
	}
	
	@RequestMapping(value = "ask.do", method = RequestMethod.GET)
	public ModelAndView ask(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/ask");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_ASK));
		return mav;
	}
	
}
