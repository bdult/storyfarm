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
	 * 로그인 절차 중 첫번째인듯 한데
	 * step 이라고 하기 보다는 어떠한 절차 인지를 메소드 이름으로 해주면 
	 * 보기 편할 듯
	 * @param model
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "loginStep1.do", method = RequestMethod.GET)
	public ModelAndView loginStep1(Model model, HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/loginStep1");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_LOGIN));
		return mav;
	}

	/**
	 * loginStep1 과 동일한 의문
	 * @param model
	 * @param paramMap
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "loginStep2.do", method = RequestMethod.POST)
	public String loginStep2(Model model, @RequestParam Map<String, Object> paramMap, HttpServletRequest request, HttpSession session) {

		HashMap<String, String> sessionMap = (HashMap<String, String>) userService.detail(paramMap);

		// 없는 아이디와 비밀번호 틀렸다는 결과 메세지를 분리 해야 할듯 한데...
		if(sessionMap == null) {
			model.addAttribute("msg", "login_fail");
			return "user/loginStep1";
		}
		
		if(session.getAttribute("login_session") == null){
			session.setAttribute("login_session", sessionMap);
		}
		
		return "user/loginStep2";
		
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
	 * 비동기(ajax) 통신일 경우는 .do 보다는 .ajax 로 value 를 정하는게 보기 쉽지 않을까?
	 * 메소드 이름도 뒤에 Ajax 를 붙여 주면 좋을 듯
	 * duplication.do 를 호출 하여 200(ok) 를 받으면 중복 아이디가 있는 것 같은 느낌이 주는데...
	 * 다른 네이밍은 없을까??
	 * @param paramMap
	 * @return
	 */
	@RequestMapping(value = "duplication.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
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
	 * 어떤 기능인지??? 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "leave.do", method = RequestMethod.GET)
	public String leave(Model model) {
		return "user/leave";
	}

	/**
	 * 회원 절차 중 첫번째인듯 한데
	 * step 이라고 하기 보다는 어떠한 절차 인지를 메소드 이름으로 해주면 
	 * 보기 편할 듯
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "joinStep1.do", method = RequestMethod.GET)
	public ModelAndView joinStep1(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/joinStep1");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}

	/**
	 * step1 과 동일한 의문
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "joinStep2.do", method = RequestMethod.GET)
	public ModelAndView joinStep2(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/joinStep2");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER, StoryfarmConstants.BREADCRUMB_JOINSTEP2));
		
		
		return mav;
	}

	/**
	 * step1 과 동일한 의문
	 * @param model
	 * @param paramMap
	 * @return
	 */
	@RequestMapping(value = "joinStep3.do", method = RequestMethod.POST)
	public ModelAndView joinStep3(Model model, @RequestParam Map<String, Object> paramMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/joinStep3");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER, StoryfarmConstants.BREADCRUMB_JOINSTEP2, StoryfarmConstants.BREADCRUMB_JOINSTEP3));
		
		userService.insertUser(paramMap);
		
		return mav;
	}
	
	/**
	 * 화면만을 구성하는 페이지는 뒤에 View를 붙여주면 보기 편할 듯 findIdView.do
	 * 메소드 이름도 findIdView로 하면 읽기가 쉬울 듯
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "findId.do", method = RequestMethod.GET)
	public ModelAndView findId(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/findId");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_LOGIN, StoryfarmConstants.BREADCRUMB_FINDID));
		return mav;
	}

	/**
	 * 이게 필요한 이유는??
	 * 아이디 찾기는 페이지에 전체적인 디자인은 같고 결과 같에 따라 안에 문구가 변경이 되는데
	 * 구지 메소드를 나눌 필요가 있는지???
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "findIdFail.do", method = RequestMethod.GET)
	public ModelAndView findIdFail(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/findIdFail");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_FINDID_FAIL));
		return mav;
	}

	/**
	 * findIdFail 과 동일한 의문
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
	 * findId 과 동일한 의문
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "findPwd.do", method = RequestMethod.GET)
	public ModelAndView findPwd(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/findPwd");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_FINDPWD));
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
