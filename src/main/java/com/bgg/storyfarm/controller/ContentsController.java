package com.bgg.storyfarm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "contents")
public class ContentsController {
	
	private Logger logger = LoggerFactory.getLogger(ContentsController.class);
	
	@RequestMapping(value = "brand.do", method = RequestMethod.GET)
	public String brand(Model model) {
		return "contents/brand";
	}
	
	@RequestMapping(value = "play.do", method = RequestMethod.GET)
	public String play(Model model) {
		return "contents/play";
	}
}
