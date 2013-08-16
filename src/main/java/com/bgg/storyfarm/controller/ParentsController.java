package com.bgg.storyfarm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "parents")
public class ParentsController {
	
	private Logger logger = LoggerFactory.getLogger(ParentsController.class);
	
	@RequestMapping(value = "study/daily.do", method = RequestMethod.GET)
	public String main(Model model) {
		return "side-parents/main";
	}
}
