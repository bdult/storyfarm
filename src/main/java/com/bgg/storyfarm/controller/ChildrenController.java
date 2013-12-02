package com.bgg.storyfarm.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bgg.storyfarm.common.BreadcrumbUtil;
import com.bgg.storyfarm.service.ContentsService;


@Controller
@RequestMapping(value = "children")
public class ChildrenController {
	
	private Logger logger = LoggerFactory.getLogger(ChildrenController.class);
	
	@Autowired
	private BreadcrumbUtil breadcrumbUtil;
	
	@Autowired
	private ContentsService contentsService;
	
	@RequestMapping(value = "room.do", method = RequestMethod.GET)
	public String room(Model model, @RequestParam Map<String, Object> paramsMap) {

		//기본 자녀 정보 가져오기
		Map<String, Object> map = contentsService.childRoom(paramsMap);
		
		Map<String, String> childMap = new HashMap<String, String>();
		childMap.put("NAME", "추사랑");
		map.put("defaultChild", childMap);
		
		//최근이용 컨텐츠, 추천동영상, 인기동영상
		model.addAttribute("childRoomInfo", map);
		return "children/room";
	}
	
	@RequestMapping(value = "play.do", method = RequestMethod.GET)
	public String play(Model model, @RequestParam Map<String, Object> paramMap) {
		
		return "children/play";
	}
	
}