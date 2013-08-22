package com.bgg.storyfarm.controller;

import java.util.HashMap;
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

import com.bgg.storyfarm.service.ViewService;



@Controller
public class MemberController {

@Autowired
private ViewService viewService;

	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value = "loginStep1.do", method = RequestMethod.GET)
	public String loginStep1(Model model, HttpServletRequest request, HttpSession session) {
		return "member/loginStep1";
	}
	
	@RequestMapping(value = "loginStep2.do", method = RequestMethod.POST)
	public String loginStep2(Model model, @RequestParam Map<String,Object> paramMap, HttpServletRequest request, HttpSession session) {

		HashMap<String, String> sessionMap = (HashMap<String, String>)viewService.getUserData(paramMap);
		session.setAttribute("login_session", sessionMap);
		logger.info("" + session.getAttribute("login_session"));
		if(session.getAttribute("login_session") == null)
		{
			session.invalidate();

			model.addAttribute("msg", "login_fail");
			return "member/loginStep1";
		}else{
			return "member/loginStep2";
		}
	}


	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(Model model, HttpServletRequest request, HttpSession session) {
		logger.info("logout.do");

		if(session != null){
			session.invalidate();
		}
        
        return "dashboard";
	}
//	@RequestMapping(value = "loginStep2.do", method = RequestMethod.GET)
//	public ModelAndView loginStep2(@RequestParam Map<String,Object> paramMap, HttpServletRequest request, HttpSession session) {
//
//		ModelAndView mav = new ModelAndView();
//		
//
//		HashMap<String, String> sessionMap = (HashMap<String, String>)viewService.getUserData(paramMap);
//
//		session.setAttribute("login_session", sessionMap);
//		
//		if(session.getAttribute("login_session") == null)
//		{
//			session.invalidate();
//			mav.addObject("msg", "login_fail");
//			mav.setViewName("member/loginStep1");
//		}else{
//			mav.setViewName("member/loginStep2");
//		}
//		return mav;	
//	}
	
	@RequestMapping(value = "leave.do", method = RequestMethod.GET)
	public String leave(Model model) {
		return "member/leave";
	}
	
	@RequestMapping(value = "joinStep1.do", method = RequestMethod.GET)
	public String joinStep1(Model model) {
		return "member/joinStep1";
	}
	
	@RequestMapping(value = "joinStep2.do", method = RequestMethod.GET)
	public String joinStep2(Model model) {
		return "member/joinStep2";
	}
	
	
}
