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
	public String daily(Model model) {
		return "side-parents/daily";
	}
	
	@RequestMapping(value = "study/weekly.do", method = RequestMethod.GET)
	public String weekly(Model model) {
		return "side-parents/weekly";
	}
	
	@RequestMapping(value = "study/monthly.do", method = RequestMethod.GET)
	public String monthly(Model model) {
		return "side-parents/monthly";
	}
	
	@RequestMapping(value = "study/items.do", method = RequestMethod.GET)
	public String items(Model model) {
		return "side-parents/items";
	}
	
	@RequestMapping(value = "study/children.do", method = RequestMethod.GET)
	public String children(Model model) {
		return "side-parents/children";
	}
	
	@RequestMapping(value = "study/level.do", method = RequestMethod.GET)
	public String level(Model model) {
		return "side-parents/level";
	}
	
	@RequestMapping(value = "study/stats.do", method = RequestMethod.GET)
	public String stats(Model model) {
		return "side-parents/stats";
	}
}
