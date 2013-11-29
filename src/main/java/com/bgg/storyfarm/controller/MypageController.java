package com.bgg.storyfarm.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import com.bgg.storyfarm.common.PageUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;
import com.bgg.storyfarm.service.BoardService;
import com.bgg.storyfarm.service.CouponService;
import com.bgg.storyfarm.service.PurchaseService;
import com.bgg.storyfarm.service.UserService;

@Controller
@RequestMapping(value = "mypage")
public class MypageController {

	@Autowired
	private BreadcrumbUtil breadcrumbUtil;
	
	@Autowired
	private BoardService boardService;

	@Autowired
	private UserService userService;
	
	@Autowired
	private PageUtil pageUtil;
	
	@Autowired
	private PurchaseService purchaseService;
	
	@Autowired
	private CouponService couponService;
	
	private Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@RequestMapping(value = "info.do", method = RequestMethod.GET)
	public ModelAndView info(Model model, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/info");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO));
		
		Map<String, Object> boardMap = getSessionId(session);
		
		mav.addObject("questionList", boardService.listTop5(boardMap));
		
		return mav;
	}
	
	@RequestMapping(value = "payment.do", method = RequestMethod.GET)
	public ModelAndView payment(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/payment");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PAYMENT ));
		return mav;
	}
	
	@RequestMapping(value = "paymentSelect.do", method = RequestMethod.POST)
	public ModelAndView paymentSelect(Model model, @RequestParam Map<String, Object> paramMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/paymentSelect");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PAYMENT, StoryfarmConstants.BREADCRUMB_MYPAGE_PAYMENT_SELECT ));
		
		mav.addObject("paymentInfo", paramMap.get("pay"));
		
		return mav;
	}
	
	@RequestMapping(value = "paymentResult.do", method = RequestMethod.POST)
	public ModelAndView paymentResult(Model model, @RequestParam Map<String, Object> paramMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/paymentResult");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PAYMENT, StoryfarmConstants.BREADCRUMB_MYPAGE_PAYMENT_SELECT, StoryfarmConstants.BREADCRUMB_MYPAGE_PAYMENT_RESULT ));

		mav.addObject("paymentInfo", paramMap.get("pay"));
		
		return mav;
	}
	
	@RequestMapping(value = "purchasingInfo.do", method = RequestMethod.GET)
	public ModelAndView purchasingInfo(Model model, @RequestParam Map<String, Object> paramMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/purchasingInfo");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PURCHASINGINFO));
		
		mav.addObject("purchaseInfo", purchaseService.detail(paramMap));
		
		return mav;
	}
	
	@RequestMapping(value = "purchasingInfoPast.do", method = RequestMethod.GET)
	public ModelAndView purchasingInfoPast(Model model, @RequestParam Map<String, Object> paramMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/purchasingInfoPast");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PURCHASINGINFO_PAST));
		
		mav.addObject("purchaseList", purchaseService.list(paramMap));

		return mav;
	}
	
	@RequestMapping(value = "receiptIssuing.do", method = RequestMethod.GET)
	public ModelAndView receiptIssuing(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/receiptIssuing");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_RECEIPTISSUING ));
		return mav;
	}
	
	@RequestMapping(value = "coupon.do", method = RequestMethod.GET)
	public ModelAndView coupon(Model model, @RequestParam Map<String, Object> paramMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/coupon");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_COUPON));
		
		mav.addObject("couponList", couponService.list(paramMap));
		
		return mav;
	}
	
	/** 입력받은 쿠폰번호를 등록.
	 * @param paramMap
	 * @return JSON
	 */
	@RequestMapping(value = "addCoupon.ajax", produces = "application/json;charset=UTF-8")
	public @ResponseBody String addCoupon(@RequestParam Map<String, Object> paramMap) {

		couponService.add(paramMap);

		JSONObject json = new JSONObject();
		json.put("code", 200);
		json.put("msg", "OK");
		
		return json.toJSONString();
	}
	
	
	@RequestMapping(value = "pause.do", method = RequestMethod.GET)
	public ModelAndView pause(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/pause");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PAUSEREQUEST));
		return mav;
	}
	
	@RequestMapping(value = "pauseRequest.do", method = RequestMethod.POST)
	public ModelAndView pauseRequest(Model model, @RequestParam Map<String, Object> paramsMap, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/pause");

		Map<String, Object> sessionMap = getSessionId(session);
		if(paramsMap.get("member_id").equals(sessionMap.get("MEMBER_ID"))){
			if(sessionMap.get("status").equals(1)){
				paramsMap.put("status", 0);
				mav.addObject("msg", "pauseCancelSuccess");
			}else {
				paramsMap.put("status", 1);
				mav.addObject("msg", "pauseSuccess");
			}
			userService.updateUserStatus(paramsMap);
			mav.setViewName("side-mypage/pause");
		}else {
			mav.addObject("msg", "pauseFail");
			mav.setViewName("side-mypage/pause");
		}
		
		return mav;
	}
	
	@RequestMapping(value = "question.do", method = RequestMethod.GET)
	public ModelAndView question(@RequestParam Map<String, Object> paramsMap, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/question");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_QUESTION));

		Map<String, Object> sessionMap = getSessionId(session);
		
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, StoryfarmConstants.QUESTION_BOARD_ID);
		boardMap.put(StoryfarmConstants.MEMBER_ID , sessionMap.get("member_id"));

		//페이징 로직
		int totalCnt = boardService.totalCount(boardMap);
		int pageNum = setPage(paramsMap, boardMap);
		mav.addObject("pageLink", pageUtil.getPageLinkMap(totalCnt, pageNum));
		//페이징 로직
		
		mav.addObject("list", boardService.questionList(boardMap));
		
		return mav;
	}
	
	@RequestMapping(value = "questionDetail.do", method = RequestMethod.GET)
	public ModelAndView questionDetail(@RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/questionDetail");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_QUESTION, StoryfarmConstants.BREADCRUMB_MYPAGE_QUESTION_DETAIL));
		
		String contentId = paramsMap.get("contentsId").toString();
		Map<String, Object> writing = boardService.detail(Integer.valueOf(contentId));
		mav.addObject("writing", writing);

		//댓글 목록 view
		mav.addObject("detailComments", boardService.detailComments(paramsMap));
		mav.addObject("contentsId", contentId);
		mav.addObject("commentsId", paramsMap.get("comment_id"));
		
		return mav;
	}
	
	@RequestMapping(value = "questionInsert.do", method = RequestMethod.GET)
	public ModelAndView questionInsert(Model model, @RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/questionWrite");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_QUESTION, StoryfarmConstants.BREADCRUMB_MYPAGE_QUESTION_INSERT));
		
		return mav;
	}
	
	@RequestMapping(value = "boardCreate.do", method = RequestMethod.POST)
	public String boardCreate(Model model, @RequestParam Map<String, Object> paramsMap, HttpSession session) {

		Map<String, Object> sessionMap = getSessionId(session);
		
		paramsMap.put(StoryfarmConstants.BOARD_ID, StoryfarmConstants.QUESTION_BOARD_ID);
		paramsMap.put(StoryfarmConstants.MEMBER_ID , sessionMap.get("member_id"));
		
		boardService.boardCreate(paramsMap);
		return "redirect:question.do";
	}
	
	@RequestMapping(value = "questionUpdate.do", method = RequestMethod.POST)
	public ModelAndView questionUpdate(Model model, @RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/questionUpdate");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_QUESTION, StoryfarmConstants.BREADCRUMB_MYPAGE_QUESTION_UPDATE));
		
		mav.addObject("writing", paramsMap);
		return mav;
	}
	
	@RequestMapping(value = "boardModify.do", method = RequestMethod.POST)
	public String boardModify(Model model, @RequestParam Map<String, Object> paramsMap, HttpSession session) {

		Map<String, Object> sessionMap = getSessionId(session);
		
		paramsMap.put(StoryfarmConstants.BOARD_ID, StoryfarmConstants.QUESTION_BOARD_ID);
		paramsMap.put(StoryfarmConstants.MEMBER_ID , sessionMap.get("member_id"));
		
		boardService.modify(paramsMap);
		return "redirect:question.do";
	}
	
	@RequestMapping(value = "userInfo.do", method = RequestMethod.GET)
	public ModelAndView userInfo(Model model, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/userInfo");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_USERINFO_UPDATE));

		Map<String, Object> boardMap = getSessionId(session);
		
		mav.addObject("userInfo", userService.userDetail(boardMap));
		
		return mav;
	}

	@RequestMapping(value = "userInfoUpdate.do", method = RequestMethod.POST)
	public ModelAndView userInfoUpdate(Model model, @RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/userInfoUpdate");
		
		userService.updateUser(paramsMap);
		return mav;
	}
	
	@RequestMapping(value = "leave.do", method = RequestMethod.GET)
	public ModelAndView leave(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/leave");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_LEAVE));
		
		return mav;
	}
	
	@RequestMapping(value = "leaveResult.do", method = RequestMethod.POST)
	public ModelAndView leaveResult(Model model, @RequestParam Map<String, Object> paramsMap, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> sessionMap = getSessionId(session);
		
		if(paramsMap.get("member_id").equals(sessionMap.get("member_id"))){
			paramsMap.put("status", 2);
			userService.updateUserStatus(paramsMap);
			session.invalidate();
			mav.setViewName("view/dashboard");
		}else {
			mav.addObject("msg", "loginFail");
			mav.setViewName("side-mypage/leave");
		}
		
		return mav;
	}
	

	/** 페이지 처리
	 * @param paramsMap
	 * @param boardMap
	 * @return
	 */
	private int setPage(Map<String, Object> paramsMap, Map<String, Object> boardMap) {
		int pageNum = 1; //시작글 번호
		Object obj = paramsMap.get("pageNum");
		if(obj != null){
			try {
				pageNum = Integer.valueOf(obj.toString());
			} catch (NumberFormatException nfe) {
				nfe.printStackTrace();
			}
		}
		boardMap.put(PageUtil.ROWNUM_KEY, (pageNum - 1) * PageUtil.PER_PAGE);
		boardMap.put(PageUtil.PER_KEY, PageUtil.PER_PAGE);
		return pageNum;
	}

	private Map<String, Object> getSessionId(HttpSession session) {
		@SuppressWarnings("unchecked")
		Map<String, Object> sessionMap = (Map<String, Object>)session.getAttribute("userInfoSession");

		Map<String, Object> getSessionMap = new HashMap<String, Object>();
		getSessionMap.put(StoryfarmConstants.BOARD_ID, StoryfarmConstants.QUESTION_BOARD_ID);
		getSessionMap.put("member_id", sessionMap.get("MEMBER_ID"));
		getSessionMap.put("stauts", sessionMap.get("STATUS"));
		return getSessionMap;
	}
	
}
