package com.bgg.storyfarm.controller;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bgg.storyfarm.service.ViewService;

@Controller
public class DefaultController {
	
	private Logger logger = LoggerFactory.getLogger(DefaultController.class);
	
	@Autowired
	private ViewService viewService;
	
	@RequestMapping(value = "dashboard.do", method = RequestMethod.GET)
	public String main(Model model) {
		logger.info("into dashboard.do");
		
		return "dashboard";
	}
}
