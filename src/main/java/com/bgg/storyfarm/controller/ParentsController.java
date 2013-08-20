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
	
	@RequestMapping(value = "study/knowhow.do", method = RequestMethod.GET)
	public String knowhow(Model model) {
		return "side-parents/knowhow";
	}
	
	@RequestMapping(value = "study/writing.do", method = RequestMethod.GET)
	public String writing(Model model) {
		return "side-parents/writing";
	}
	
	@RequestMapping(value = "info.do", method = RequestMethod.GET)
	public String info(Model model) {
		return "side-parents/info";
	}
	
	@RequestMapping(value = "service.do", method = RequestMethod.GET)
	public String service(Model model) {
		return "side-parents/service";
	}
	
	@RequestMapping(value = "paymentservice.do", method = RequestMethod.GET)
	public String paymentservice(Model model) {
		return "side-parents/paymentservice";
	}
	
	@RequestMapping(value = "pointCoupon.do", method = RequestMethod.GET)
	public String pointCoupon(Model model) {
		return "side-parents/pointCoupon";
	}
	
	@RequestMapping(value = "qa.do", method = RequestMethod.GET)
	public String qa(Model model) {
		return "side-parents/qa";
	}
	
}
