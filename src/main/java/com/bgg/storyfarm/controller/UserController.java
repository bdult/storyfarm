package com.bgg.storyfarm.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bgg.storyfarm.common.BreadcrumbUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;
import com.bgg.storyfarm.service.UserService;

@SuppressWarnings("unchecked")
@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private BreadcrumbUtil breadcrumbUtil;

	private Logger logger = LoggerFactory.getLogger(UserController.class);
	
	/**
	 * @param model
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "loginView.do", method = RequestMethod.GET)
	public ModelAndView loginView(Model model, HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/loginView");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_LOGIN));
		return mav;
	}

	/**
	 * @param model
	 * @param paramMap
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "loginResult.do", method = RequestMethod.POST)
	public String loginResult(Model model, @RequestParam Map<String, Object> paramMap, HttpServletRequest request, HttpSession session) {
		model.addAttribute(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_LOGIN));
		
		HashMap<String, String> sessionMap = (HashMap<String, String>) userService.detail(paramMap);

		if(sessionMap == null) {
			model.addAttribute("msg", "login_fail");
			return "user/loginView";
		} else {
			if(session.getAttribute("userInfoSession") == null){
				session.setAttribute("userInfoSession", sessionMap);
			}
			return "user/loginResult";
		}
		
	}
	
	


	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(Model model, HttpServletRequest request, HttpSession session) {
		logger.info("logout.do");

		if (session != null) {
			session.invalidate();
		}

		return "view/dashboard";
	}

	/**
	 * @param paramMap
	 * @return
	 */
	@RequestMapping(value = "duplication.ajax", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public @ResponseBody
	String duplication(@RequestParam Map<String, Object> paramMap) {
		Map<String, Object> user_id = userService.duplicationUser(paramMap);

		JSONObject jsonObj = new JSONObject();
		jsonObj.put("code", null);

		if (user_id == null) {
			jsonObj.put("code", "200");
		}

		return jsonObj.toJSONString();
	}
	
	/**
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "joinProvision.do", method = RequestMethod.GET)
	public ModelAndView joinProvision(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/joinProvision");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_JOINPROVISION));
		return mav;
	}

	/**
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "signUp.do", method = RequestMethod.GET)
	public ModelAndView signUp(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/signUp");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_JOINPROVISION, StoryfarmConstants.BREADCRUMB_SIGNUP));
		
		
		return mav;
	}

	/**
	 * @param model
	 * @param paramMap
	 * @return
	 */
	@RequestMapping(value = "signUpResult.do", method = RequestMethod.POST)
	public ModelAndView signUpResult(Model model, @RequestParam Map<String, Object> paramMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/signUpResult");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_JOINPROVISION, StoryfarmConstants.BREADCRUMB_SIGNUP, StoryfarmConstants.BREADCRUMB_SIGNUPRESULT));
		
		userService.insertUser(paramMap);
		
		return mav;
	}
	
	/**
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "findIdView.do", method = RequestMethod.GET)
	public ModelAndView findIdView(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/findIdView");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_FINDIDVIEW));
		return mav;
	}


	/**
	 * @param model
	 * @param paramMap
	 * @return
	 */
	@RequestMapping(value = "findIdResult.do", method = RequestMethod.POST)
	public ModelAndView findIdResult(Model model, @RequestParam Map<String, Object> paramMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/findIdResult");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_FINDID_RESULT));

		model.addAttribute("findUserData", userService.findId(paramMap));
		
		return mav;
	}
	
	/**
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "findPwdView.do", method = RequestMethod.GET)
	public ModelAndView findPwdView(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/findPwdView");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_FINDPWDVIEW));
		return mav;
	}
	
	@RequestMapping(value = "findPwdResult.do", method = RequestMethod.POST)
	public ModelAndView findPwdResult(Model model, @RequestParam Map<String, Object> paramMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/findPwdResult");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_FINDPWD_RESULT));

		model.addAttribute("findUserData", userService.findPwd(paramMap));
		
		return mav;
	}
}
