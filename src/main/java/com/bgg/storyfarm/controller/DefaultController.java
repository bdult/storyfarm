package com.bgg.storyfarm.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DefaultController {
	
	private Logger logger = LoggerFactory.getLogger(DefaultController.class);
	
	@RequestMapping(value = "dashboard.do", method = RequestMethod.GET)
	public String main(Model model) {
		return "dashboard";
	}
	
	@RequestMapping(value = "jcrop.do", method = RequestMethod.GET)
	public String jcrop(Model model) {
		return "pure-jcrop";
	}
	
	@RequestMapping(value = "jcropAction.do", method = RequestMethod.GET)
	public String jcropAction(Model model) {
		return "pure-jcrop";
	}
}
