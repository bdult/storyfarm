package com.bgg.storyfarm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bgg.storyfarm.common.BreadcrumbUtil;
import com.bgg.storyfarm.common.PageUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;
import com.bgg.storyfarm.common.StoryfarmDBConstants;
import com.bgg.storyfarm.service.BoardService;
import com.bgg.storyfarm.service.ChildrenService;
import com.bgg.storyfarm.service.ContentsService;

//부모방
@Controller
@RequestMapping(value = "parents")
public class ParentsController {
	
	private Logger logger = LoggerFactory.getLogger(ParentsController.class);
	
	//부모방 사이드바 활성화 좌표
	private final String LM_SEQ = "lmSeq";
	private final int LNB_STATS = 0; //학습통계
	private final int LNB_STUDENT_MANAGE = 1; //학습자관리
	private final int LNB_TIME_SET = 2; //사용시간설정
	
		
	@Autowired
	private BreadcrumbUtil breadcrumbUtil;

	@Autowired
	private PageUtil pageUtil;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private ChildrenService childrenService;
	
	@Autowired
	private ContentsService contentsService;
	
	//메인
	@RequestMapping(value = "room.do", method = RequestMethod.GET)
	public ModelAndView room(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/room");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM));
		
		//공지사항
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, StoryfarmConstants.NOTI_BOARD_ID);
		boardMap.put(StoryfarmConstants.BOARD_LIMIT_COUNT, 6);
		mav.addObject("noticeList", boardService.listLimit(boardMap));
		
		return mav;
	}
	
	//학습통계
	@RequestMapping(value = "study.do", method = RequestMethod.GET)
	public ModelAndView study(Model model, String children_idx,  HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/study");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM,
				StoryfarmConstants.BREADCRUMB_PARENTS_STUDY));
		mav.addObject(LM_SEQ, LNB_STATS);
		
		
		Map sessionInfo = (Map)session.getAttribute(StoryfarmConstants.MEMBER_SESSION);
		Map memberInfo = new HashMap();
		
		// mybatis 에서 대소문자를 구분하기 때문 변수 변경
		
		memberInfo.put(StoryfarmConstants.MEMBER_ID, sessionInfo.get(StoryfarmDBConstants.MEMBER_ID));
		memberInfo.put(StoryfarmConstants.CHILDREN_IDX, children_idx);
		
		// child Info
		List<Map> children = childrenService.userChildren(memberInfo);
		
		
		// play History
		
		List<Map> history = contentsService.viewHistoryOfChild(memberInfo);
		
		
		mav.addObject("children", children);
		mav.addObject("history", history);
		if(children_idx == null){
			mav.addObject("children_idx", children.get(0).get("IDX"));
		}else{
			mav.addObject("children_idx", children_idx);
		}
		return mav;
	}

	//학습자관리
	@RequestMapping(value = "children.do", method = RequestMethod.GET)
	public ModelAndView children(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/children");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM,
				StoryfarmConstants.BREADCRUMB_PARENTS_CHILDREN));
		mav.addObject(LM_SEQ, LNB_STUDENT_MANAGE);
		return mav;
	}

	//학습자추가
	@RequestMapping(value = "addChildren.do", method = RequestMethod.GET)
	public ModelAndView addChildren(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/addChildren");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM,
				StoryfarmConstants.BREADCRUMB_PARENTS_CHILDREN));
		mav.addObject(LM_SEQ, LNB_STUDENT_MANAGE);
		return mav;
	}
	
	//사용시간설정
	@RequestMapping(value = "time.do", method = RequestMethod.GET)
	public ModelAndView time(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-parents/time");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(
				StoryfarmConstants.BREADCRUMB_HOME, 
				StoryfarmConstants.BREADCRUMB_PARENTS_ROOM,
				StoryfarmConstants.BREADCRUMB_PARENTS_TIME));
		mav.addObject(LM_SEQ, LNB_TIME_SET);
		return mav;
	}
	
}
