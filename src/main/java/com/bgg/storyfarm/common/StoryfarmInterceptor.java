package com.bgg.storyfarm.common;

import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class StoryfarmInterceptor extends HandlerInterceptorAdapter {

	private Logger logger = LoggerFactory.getLogger(StoryfarmInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
		
		try {
			long startTime = System.currentTimeMillis();
			request.setAttribute("startTime", startTime);

			this.printRequestLog(request);
			
			if(	this.isSessionCheck(request.getServletPath()) ){
				
				HttpSession session = request.getSession(false);
				
				String callBackUrl = request.getContextPath()+request.getServletPath()+"?"+request.getQueryString();
				if ( session == null || session.getAttribute(StoryfarmConstants.MEMBER_SESSION) == null){
					request.getSession().setAttribute(StoryfarmConstants.CALL_BACK_URL, callBackUrl);
					response.sendRedirect(request.getContextPath()+"/loginView.do");
					return false;
				} else {
					
//					 ROLE처리 로직 구현 예정
//					 자격 없을시 "접근권한이 없음" 문구 알림
//					@SuppressWarnings("unchecked")
//					HashMap<String, Object> map = (HashMap<String, Object>) session.getAttribute("user");
//					if(map.get("level_cd").equals("2")) {
//						response.sendRedirect("/index.do?result=5");
//						return false;
//					}
				}
			}
				 
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

		printRequestProcessingTime(request);

	}

	private void printRequestProcessingTime(HttpServletRequest request) {
		long startTime = (Long) request.getAttribute("startTime");
		long endTime = System.currentTimeMillis();
		long executeTime = endTime - startTime;
		logger.info("[RES]_["+request.getServletPath()+"]_EXECUTETIME_[ " + executeTime + "ms ]");
	}

	private void printRequestLog(HttpServletRequest request) {
		try {
			StringBuffer sb = new StringBuffer();
			sb.append("[REQ]");
			sb.append("_IP_[" + request.getRemoteAddr() + "]");
			sb.append("_REQURL_[" + request.getServletPath() + "]");
			sb.append("_PARAM_[");

			// parameter
			Enumeration<?> eNames = request.getParameterNames();
			while (eNames.hasMoreElements()) {
				String name = (String) eNames.nextElement();
				String[] values = request.getParameterValues(name);
				String paramIngo = "[" + name + " : ";
				for (int x = 0; x < values.length; x++) {
					if (x == 0) {
						// paramIngo += URLEncoder.encode(values[x], "UTF-8");
						paramIngo += values[x];
					} else {
						// paramIngo += ", "+URLEncoder.encode(values[x],
						// "UTF-8");
						paramIngo += ", " + values[x];
					}
				}

				if (StringUtils.isNotEmpty(name)) {
					if (name.equals("pwd")) {
						paramIngo = "xxxx ]";
					} else {
						paramIngo += "]";
					}
				}

				if (eNames.hasMoreElements()) {
					sb.append(paramIngo + ",");
				} else {
					sb.append(paramIngo);
				}
			}
			sb.append("]");
			logger.info(sb.toString());
		} catch (Exception e) {
			logger.error("{}", e);
		}
	}
	
	private boolean isSessionCheck(String _path) {
		
		boolean isCheck = true;
		
		ArrayList<String> ignoreList = new ArrayList<String>();
		ignoreList.add("dashboard.do");
		ignoreList.add("loginView.do");
		ignoreList.add("loginResult.do");
		ignoreList.add("signUp.do");
		ignoreList.add("signUpComplete.do");
		ignoreList.add("signUpResult.do");
		ignoreList.add("duplication.ajax");
		ignoreList.add("addr.ajax");
		ignoreList.add("signResult.do");
		ignoreList.add("findIdView.do");
		ignoreList.add("findPwdView.do");
		ignoreList.add("joinProvision.do");
		ignoreList.add("introduce.do");
		ignoreList.add("introduce2.do");
		ignoreList.add("serviceRules.do");
		ignoreList.add("privacyRules.do");
		ignoreList.add("cscenter/");
		//ignoreList.add("세션 체크 안할 URL");
		
		//세션 체크 안할 URL은 ignoreList에 추가해야함.
		
		for(String ignorePath : ignoreList){
			if(_path.contains(ignorePath)){
				isCheck = false;
				break;
			}
		}
		
		logger.info(String.format("isCheck : %s, path : %s", isCheck, _path));
		return isCheck;
		
	}
}
