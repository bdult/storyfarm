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
public class ViewController {
	
	private Logger logger = LoggerFactory.getLogger(ViewController.class);
	
	@Autowired
	private ViewService viewService;
	
	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String main(Model model) {
		logger.info("into main.do");
		
		return "view/main";
	}
	
	@RequestMapping(value = "sidebar.do", method = RequestMethod.GET)
	public String sidebar(Model model) {
		
		return "side-default-view/side";
	}
	
	@RequestMapping(value = "viewpage.do", method = RequestMethod.GET)
	public String viewpage(Model model) {
		logger.info("into viewpage.do");
		
		model.addAttribute("movie", "source/ani_song07.mp4");
		
		return "view/viewpage";
	}
}
