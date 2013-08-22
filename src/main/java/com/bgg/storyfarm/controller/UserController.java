package com.bgg.storyfarm.controller;

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

import com.bgg.storyfarm.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	private Logger logger = LoggerFactory.getLogger(UserController.class);

	@RequestMapping(value = "loginStep1.do", method = RequestMethod.GET)
	public ModelAndView loginStep1(Model model, HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/loginStep1");
		
		// dummy breadcrumbs
		List<Map<String, String>> breadcrumbs = new ArrayList<Map<String, String>>();
		
		Map<String, String> map1 = new HashMap<String, String>();
		map1.put("name", "홈");
		map1.put("url", "/");
		Map<String, String> map2 = new HashMap<String, String>();
		map2.put("name", "로그인");
		map2.put("url", "/");
		
		breadcrumbs.add(map1);
		breadcrumbs.add(map2);
		
		mav.addObject("breadcrumbs", breadcrumbs);
		return mav;
	}

	@RequestMapping(value = "loginStep2.do", method = RequestMethod.POST)
	public String loginStep2(Model model, @RequestParam Map<String, Object> paramMap, HttpServletRequest request, HttpSession session) {

		HashMap<String, String> sessionMap = (HashMap<String, String>) userService.detail(paramMap);
		session.setAttribute("login_session", sessionMap);
		logger.info("" + session.getAttribute("login_session"));
		if (session.getAttribute("login_session") == null) {
			session.invalidate();

			model.addAttribute("msg", "login_fail");
			return "user/loginStep1";
		} else {
			return "user/loginStep2";
		}
	}

	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(Model model, HttpServletRequest request, HttpSession session) {
		logger.info("logout.do");

		if (session != null) {
			session.invalidate();
		}

		return "view/dashboard";
	}

	// @RequestMapping(value = "loginStep2.do", method = RequestMethod.GET)
	// public ModelAndView loginStep2(@RequestParam Map<String,Object> paramMap,
	// HttpServletRequest request, HttpSession session) {
	//
	// ModelAndView mav = new ModelAndView();
	//
	//
	// HashMap<String, String> sessionMap = (HashMap<String,
	// String>)viewService.getUserData(paramMap);
	//
	// session.setAttribute("login_session", sessionMap);
	//
	// if(session.getAttribute("login_session") == null)
	// {
	// session.invalidate();
	// mav.addObject("msg", "login_fail");
	// mav.setViewName("user/loginStep1");
	// }else{
	// mav.setViewName("user/loginStep2");
	// }
	// return mav;
	// }

	@RequestMapping(value = "leave.do", method = RequestMethod.GET)
	public String leave(Model model) {
		return "user/leave";
	}

	@RequestMapping(value = "joinStep1.do", method = RequestMethod.GET)
	public String joinStep1(Model model) {
		return "user/joinStep1";
	}

	@RequestMapping(value = "joinStep2.do", method = RequestMethod.GET)
	public String joinStep2(Model model) {
		return "user/joinStep2";
	}

}
