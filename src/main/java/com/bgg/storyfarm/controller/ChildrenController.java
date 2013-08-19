package com.bgg.storyfarm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "children")
public class ChildrenController {
	
	private Logger logger = LoggerFactory.getLogger(ChildrenController.class);
	
	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String main(Model model) {
		
		return "dashboard";
	}
}
