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
import com.bgg.storyfarm.common.StoryfarmConstants;
import com.bgg.storyfarm.service.BoardService;


@Controller
@RequestMapping(value = "cscenter")
public class CscenterController {
	
	private Logger logger = LoggerFactory.getLogger(CscenterController.class);
	
	//게시판 TODO : 상수처리?
	private final int NOTI_BOARD_ID = 25; //공지사항
	private final int EVENT_BOARD_ID = 24; //이벤트
	
	//페이징 TODO : 상수처리?
	private final String ROWNUM = "rownum"; //key name
	private final int START_ROWNUM = 0; //시작글 번호
	private final int PER_PAGE = 15; //글 목록 갯수
	
	@Autowired
	private BreadcrumbUtil breadcrumbUtil;

	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "notice.do", method = RequestMethod.GET)
	public ModelAndView notice(@RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/notice");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_NOTI));
		
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, NOTI_BOARD_ID); //임시 공지사항 게시판 아이디
		// 컨텐츠 가져오기
		String pageNum = paramsMap.get("pageNum").toString();
		
		int rowNum = 0;
		Object obj = paramsMap.get("pageNum");
		if(obj != null){
			rowNum = Integer.valueOf(obj.toString());
		}
		boardMap.put(ROWNUM, (rowNum - 1) * PER_PAGE); 
		List<Map<String, Object>> noticeList = boardService.list(boardMap);
		mav.addObject("noticeList", noticeList);
		
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
