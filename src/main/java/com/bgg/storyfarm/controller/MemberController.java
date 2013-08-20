package com.bgg.storyfarm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MemberController {
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String loginpage(Model model) {
		return "member/login";
	}
	
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
