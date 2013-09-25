package com.bgg.storyfarm.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bgg.storyfarm.common.BreadcrumbUtil;
import com.bgg.storyfarm.common.PageUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;
import com.bgg.storyfarm.service.BoardService;

@Controller
@RequestMapping(value = "mypage")
public class MypageController {

	private final int QUESTION_BOARD_ID = 3; //이벤트
	
	@Autowired
	private BreadcrumbUtil breadcrumbUtil;
	
	@Autowired
	private BoardService boardService;

	@Autowired
	private PageUtil pageUtil;
	
	@RequestMapping(value = "info.do", method = RequestMethod.GET)
	public ModelAndView info(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/info");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO));
		return mav;
	}
	
	@RequestMapping(value = "payment.do", method = RequestMethod.GET)
	public ModelAndView payment(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/payment");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PAYMENT ));
		return mav;
	}
	
	@RequestMapping(value = "paymentSelect.do", method = RequestMethod.GET)
	public ModelAndView paymentSelect(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/paymentSelect");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PAYMENT, StoryfarmConstants.BREADCRUMB_MYPAGE_PAYMENT_SELECT ));
		return mav;
	}
	
	@RequestMapping(value = "paymentResult.do", method = RequestMethod.GET)
	public ModelAndView paymentResult(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/paymentResult");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PAYMENT, StoryfarmConstants.BREADCRUMB_MYPAGE_PAYMENT_SELECT, StoryfarmConstants.BREADCRUMB_MYPAGE_PAYMENT_RESULT ));
		return mav;
	}
	
	@RequestMapping(value = "purchasingInfo.do", method = RequestMethod.GET)
	public ModelAndView purchasingInfo(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/purchasingInfo");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PURCHASINGINFO));
		return mav;
	}
	
	@RequestMapping(value = "purchasingInfoPast.do", method = RequestMethod.GET)
	public ModelAndView purchasingInfoPast(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/purchasingInfoPast");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PURCHASINGINFO_PAST));
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
	public ModelAndView coupon(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/coupon");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_COUPON));
		return mav;
	}
	
	@RequestMapping(value = "addCoupon.do", method = RequestMethod.GET)
	public ModelAndView addCoupon(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/addCoupon");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_COUPON, StoryfarmConstants.BREADCRUMB_MYPAGE_ADD_COUPON));
		return mav;
	}
	
	@RequestMapping(value = "pauseRequest.do", method = RequestMethod.GET)
	public ModelAndView pauseRequest(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/pauseRequest");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PAUSEREQUEST));
		return mav;
	}
	
	@RequestMapping(value = "pauseRequestResult.do", method = RequestMethod.GET)
	public ModelAndView pauseRequestResult(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/pauseRequestResult");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PAUSEREQUEST, StoryfarmConstants.BREADCRUMB_MYPAGE_PAUSEREQUEST_RESULT));
		return mav;
	}
	
	@RequestMapping(value = "pauseCancel.do", method = RequestMethod.GET)
	public ModelAndView pauseCancel(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/pauseCancel");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PAUSECANCEL));
		return mav;
	}
	
	@RequestMapping(value = "pauseCancelResult.do", method = RequestMethod.GET)
	public ModelAndView pauseCancelResult(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/pauseCancelResult");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_PAUSECANCEL, StoryfarmConstants.BREADCRUMB_MYPAGE_PAUSECANCEL_RESULT));
		return mav;
	}
	
	@RequestMapping(value = "question.do", method = RequestMethod.GET)
	public ModelAndView question(@RequestParam Map<String, Object> paramsMap) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/question");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_QUESTION));

		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, QUESTION_BOARD_ID);
		
		//페이징 로직
		int totalCnt = boardService.totalCount(boardMap);
		int pageNum = setPage(paramsMap, boardMap);
		mav.addObject("pageLink", pageUtil.setPageLink(totalCnt, pageNum));
		//페이징 로직
		
		mav.addObject("list", boardService.list(boardMap));
		
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
		mav.setViewName("board/boardWrite");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_QUESTION, StoryfarmConstants.BREADCRUMB_MYPAGE_QUESTION_INSERT));
		
		mav.addObject("board_id", paramsMap.get("board_id"));
		return mav;
	}
	
	@RequestMapping(value = "boardCreate.do", method = RequestMethod.POST)
	public String boardCreate(Model model, @RequestParam Map<String, Object> paramsMap) {
		boardService.boardCreate(paramsMap);
		return "redirect:question.do";
	}
	
	@RequestMapping(value = "questionUpdate.do", method = RequestMethod.GET)
	public ModelAndView questionUpdate(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/questionUpdate");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_QUESTION, StoryfarmConstants.BREADCRUMB_MYPAGE_QUESTION_UPDATE));
		return mav;
	}
	
	@RequestMapping(value = "userInfo.do", method = RequestMethod.GET)
	public ModelAndView userInfo(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/userInfo");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_USERINFO));
		return mav;
	}
	
	@RequestMapping(value = "userInfoUpdate.do", method = RequestMethod.GET)
	public ModelAndView userInfoUpdate(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/userInfoUpdate");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_USERINFO, StoryfarmConstants.BREADCRUMB_MYPAGE_USERINFO_UPDATE));
		return mav;
	}
	
	@RequestMapping(value = "leave.do", method = RequestMethod.GET)
	public ModelAndView leave(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/leave");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_LEAVE));
		return mav;
	}
	
	@RequestMapping(value = "leaveResult.do", method = RequestMethod.GET)
	public ModelAndView leaveResult(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("side-mypage/leaveResult");
		mav.addObject(StoryfarmConstants.BREADCRUMBS, breadcrumbUtil.getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_MYPAGE_INFO, StoryfarmConstants.BREADCRUMB_MYPAGE_LEAVE, StoryfarmConstants.BREADCRUMB_MYPAGE_LEAVE_RESULT ));
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
	
}
