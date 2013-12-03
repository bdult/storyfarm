package com.bgg.storyfarm.controller;

import java.util.HashMap;
import java.util.Map;

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
import com.bgg.storyfarm.common.StoryfarmConstants;
import com.bgg.storyfarm.service.ContentsService;


@Controller
@RequestMapping(value = "children")
public class ChildrenController {
	
	private Logger logger = LoggerFactory.getLogger(ChildrenController.class);
	
	@Autowired
	private BreadcrumbUtil breadcrumbUtil;
	
	@Autowired
	private ContentsService contentsService;
	
	@RequestMapping(value = "room.do", method = RequestMethod.GET)
	public String room(Model model, @RequestParam Map<String, Object> paramsMap) {

		//기본 자녀 정보 가져오기
		Map<String, Object> map = contentsService.childRoom(paramsMap);
		
		Map<String, String> childMap = new HashMap<String, String>();
		childMap.put("NAME", "추사랑");
		map.put("defaultChild", childMap);
		
		//최근이용 컨텐츠, 추천동영상, 인기동영상
		model.addAttribute("childRoomInfo", map);
		return "children/room";
	}
	
	@RequestMapping(value = "play.do", method = RequestMethod.GET)
	public ModelAndView play( @RequestParam Map<String,Object> paramMap, HttpSession session ) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("children/play");
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
	
	private boolean isLogin(Map memberInfo) {
		if(memberInfo == null){
			return false;
		}else{
			return true;
		}
	}
}