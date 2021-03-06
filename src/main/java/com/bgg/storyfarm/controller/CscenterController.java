package com.bgg.storyfarm.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.bgg.storyfarm.common.MailUtil;
import com.bgg.storyfarm.common.PageUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;
import com.bgg.storyfarm.service.BoardService;
import com.bgg.storyfarm.service.CodeService;
import com.bgg.storyfarm.service.UserService;


@Controller
@RequestMapping(value = "cscenter")
public class CscenterController {
	
	private Logger logger = LoggerFactory.getLogger(CscenterController.class);
	
	//고객센터 사이드바 활성화 좌표
	private final String LM_SEQ = "lmSeq";
	private final int LNB_NOTI = 0; //공지사항
	private final int LNB_EVENT = 1; //이벤트
	private final int LNB_FAQ = 2; //자주하는 질문
	private final int LNB_QUESTION = 3; //문의하기
	
	@Autowired
	private BreadcrumbUtil breadcrumbUtil;

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private CodeService codeService;

	@Autowired
	private PageUtil pageUtil;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "notice.do")//, method = RequestMethod.GET)
	public ModelAndView notice(@RequestParam Map<String, Object> paramsMap) throws UnsupportedEncodingException {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/notice");
		mav.addObject(LM_SEQ, LNB_NOTI);
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_NOTI));
		
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, StoryfarmConstants.NOTI_BOARD_ID);
		boardMap.put("search", paramsMap.get("search"));
		
		//페이징 로직
		int totalCnt = boardService.totalCount(boardMap);
		int pageNum = setPage(paramsMap, boardMap);
		mav.addObject("pageLink", pageUtil.getPageLinkMap(totalCnt, pageNum));
		//페이징 로직
		mav.addObject("searchList", paramsMap);
		
		mav.addObject("list", boardService.list(boardMap));
		
		
		return mav;
	}

	@RequestMapping(value = "noticeView.do", method = RequestMethod.GET)
	public ModelAndView noticeView(@RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/noticeView");
		mav.addObject(LM_SEQ, LNB_NOTI);
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_NOTI));
		
		String contentId = paramsMap.get("contentsId").toString();
		boardService.hits(Integer.valueOf(contentId));
		Map<String, Object> writing = boardService.detail(paramsMap);
		mav.addObject("writing", writing);
		
		return mav;
	}
	
	@RequestMapping(value = "faq.do", method = RequestMethod.GET)
	public ModelAndView faq(@RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/faq");
		mav.addObject(LM_SEQ, LNB_FAQ);
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_FAQ));
		
		String _parentCode = String.valueOf(paramsMap.get("parent_code"));
		if( _parentCode == null || _parentCode.equals("null") ){
			paramsMap.put("parent_code", "BOT");
		}
		
		List<Map<String, Object>> faqCodeList = codeService.listByParent(paramsMap);
		mav.addObject("faqCodeList", faqCodeList);

		List subList = new ArrayList();
		mav.addObject("subList", subList);
		for(Map<String, Object> map : faqCodeList) {
			Map<String, Object> contents_code = new HashMap<String, Object>();
			contents_code.put("contents_code", map.get("CODE"));
			subList.add(boardService.faqList(contents_code));
		}
		
		return mav;
	}

	
	@RequestMapping(value = "event.do", method = RequestMethod.GET)
	public ModelAndView event(@RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/event");
		mav.addObject(LM_SEQ, LNB_EVENT);
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_EVENT));
		
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, StoryfarmConstants.EVENT_BOARD_ID);
		
		//페이징 로직
		int totalCnt = boardService.totalCount(boardMap);
		int pageNum = setPage(paramsMap, boardMap);
		mav.addObject("pageLink", pageUtil.getPageLinkMap(totalCnt, pageNum));
		//페이징 로직
		
		mav.addObject("list", boardService.list(boardMap));
		
		return mav;
	}
	
	@RequestMapping(value = "eventView.do", method = RequestMethod.GET)
	public ModelAndView eventView(@RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/eventView");
		mav.addObject(LM_SEQ, LNB_EVENT);
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_EVENT));
		
		Map<String, Object> writing = boardService.detail(paramsMap);
		mav.addObject("writing", writing);

		//댓글 목록 view
		mav.addObject("detailComments", boardService.detailComments(paramsMap));
		
		return mav;
	}
	
	/** 문의메일 보내기
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "question.do", method = RequestMethod.GET)
	public String question(Model model, HttpServletRequest request, HttpSession session) {
		
		if( session.getAttribute("userInfoSession") != null){
			//로그인 되어있을시 1:1 문의하기로 이동
			return "redirect:/mypage/questionInsert.do?board_id=3";
		}else{
			return "side-cscenter/question";
		}
	}
	/** 문의메일 보내기
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "email.do", method = RequestMethod.POST)
	public String email(@RequestParam Map<String, Object> paramsMap) {

		boolean result = userService.sendMail(paramsMap);
		
		return "redirect:/dashboard.do";
	}

	@RequestMapping(value = "winner.do", method = RequestMethod.GET)
	public ModelAndView winner(@RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/winner");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_WINNER));
		
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, StoryfarmConstants.WINNER_BOARD_ID);
		boardMap.put("search", paramsMap.get("search"));
		
		//페이징 로직
		int totalCnt = boardService.totalCount(boardMap);
		int pageNum = setPage(paramsMap, boardMap);
		mav.addObject("pageLink", pageUtil.getPageLinkMap(totalCnt, pageNum));
		//페이징 로직
		mav.addObject("searchList", paramsMap);
		
		mav.addObject("list", boardService.list(boardMap));
		
		
		return mav;
	}

	@RequestMapping(value = "winnerView.do", method = RequestMethod.GET)
	public ModelAndView winnerView(@RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-cscenter/winnerView");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_CSCENTER, 
				StoryfarmConstants.BREADCRUMB_CSCENTER_WINNER));
		
		String contentId = paramsMap.get("contentsId").toString();
		boardService.hits(Integer.valueOf(contentId));
		Map<String, Object> writing = boardService.detail(paramsMap);
		mav.addObject("writing", writing);
		
		return mav;
	}
	/** 페이지 처리
	 * @param paramsMap
	 * @param boardMap
	 * @return
	 */
	private int setPage(Map<String, Object> paramsMap, Map<String, Object> boardMap) {
		int pageNum = 1; //시작글 번호
		Object obj = paramsMap.get("pageNum");
		if(obj != null){
			try {
				pageNum = Integer.valueOf(obj.toString());
			} catch (NumberFormatException nfe) {
				nfe.printStackTrace();
			}
		}
		boardMap.put(PageUtil.ROWNUM_KEY, (pageNum - 1) * PageUtil.PER_PAGE);
		boardMap.put(PageUtil.PER_KEY, PageUtil.PER_PAGE);
		return pageNum;
	}
	
}
