package com.bgg.storyfarm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bgg.storyfarm.common.BreadcrumbUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;

@Controller
@RequestMapping(value = "mypage")
public class MypageController {

	@Autowired
	private BreadcrumbUtil breadcrumbUtil;
	
	@RequestMapping(value = "info.do", method = RequestMethod.GET)
	public ModelAndView info(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/info");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "payment.do", method = RequestMethod.GET)
	public ModelAndView payment(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/payment");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "paymentSelect.do", method = RequestMethod.GET)
	public ModelAndView paymentSelect(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/paymentSelect");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "paymentResult.do", method = RequestMethod.GET)
	public ModelAndView paymentResult(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/paymentResult");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "purchasingInfo.do", method = RequestMethod.GET)
	public ModelAndView purchasingInfo(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/purchasingInfo");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "purchasingInfoPast.do", method = RequestMethod.GET)
	public ModelAndView purchasingInfoPast(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/purchasingInfoPast");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "receiptIssuing.do", method = RequestMethod.GET)
	public ModelAndView receiptIssuing(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/receiptIssuing");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "coupon.do", method = RequestMethod.GET)
	public ModelAndView coupon(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/coupon");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "addCoupon.do", method = RequestMethod.GET)
	public ModelAndView addCoupon(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/addCoupon");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "pauseRequest.do", method = RequestMethod.GET)
	public ModelAndView pauseRequest(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/pauseRequest");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "pauseRequestResult.do", method = RequestMethod.GET)
	public ModelAndView pauseRequestResult(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/pauseRequestResult");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "pauseCancel.do", method = RequestMethod.GET)
	public ModelAndView pauseCancel(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/pauseCancel");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "pauseCancelResult.do", method = RequestMethod.GET)
	public ModelAndView pauseCancelResult(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/pauseCancelResult");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "question.do", method = RequestMethod.GET)
	public ModelAndView question(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/question");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "questionDetail.do", method = RequestMethod.GET)
	public ModelAndView questionDetail(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/questionDetail");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "questionInsert.do", method = RequestMethod.GET)
	public ModelAndView questionInsert(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/questionInsert");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "questionUpdate.do", method = RequestMethod.GET)
	public ModelAndView questionUpdate(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/questionUpdate");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "userInfo.do", method = RequestMethod.GET)
	public ModelAndView userInfo(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/userInfo");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "userInfoUpdate.do", method = RequestMethod.GET)
	public ModelAndView userInfoUpdate(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/userInfoUpdate");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "leave.do", method = RequestMethod.GET)
	public ModelAndView leave(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/leave");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
	
	@RequestMapping(value = "leaveResult.do", method = RequestMethod.GET)
	public ModelAndView leaveResult(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/leaveResult");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_REGISTER));
		return mav;
	}
}
