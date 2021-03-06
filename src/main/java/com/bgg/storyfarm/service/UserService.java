package com.bgg.storyfarm.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bgg.storyfarm.common.MailUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;
import com.bgg.storyfarm.dao.UserDao;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private MailUtil mailUtil;

	public List<HashMap<String, String>> list() {
		return userDao.list();
	}
	
	/**
	 * 아이디와 비밀번호로
	 * 유저정보 불러오기
	 * @param paramMap
	 * @return
	 */
	public Map<String, Object> detail(Map<String, Object> paramMap) {
		return userDao.detail(paramMap);
	}
	
	public Map<String, Object> userDetail(Map<String, Object> paramMap) {
		return userDao.userDetail(paramMap);
	}

	public List<Map<String, Object>> findId(Map<String, Object> paramMap) {
		return userDao.findId(paramMap);
	}

	public Map<String, Object> findPwd(Map<String, Object> paramMap) {
		return userDao.findPwd(paramMap);
	}
	/**
	 * 유저 정보 생성
	 * @param paramMap
	 * @return
	 */
	public void insertUser(Map<String, Object> paramMap){
		
		userDao.insertUser(paramMap);
	}
	
	public void updateUser(Map<String, Object> paramMap){
		
		userDao.updateUser(paramMap);
	}
	
	public void updateRandomPw(Map<String, Object> paramMap) {
		userDao.updaeRandomPw(paramMap);
	}
	
	public void updateUserStatus(Map<String, Object> paramMap){
		
		userDao.updateUserStatus(paramMap);
	}
	
	public Map<String, Object> duplicationUser(Map<String, Object> paramMap) {
		return userDao.duplicationUser(paramMap);
	}
	
	public boolean sendMail(Map<String, Object> paramMap) {
		
		boolean result = false;
		try {
			//제목 ( 예 : [가입관련] 가입이 안됩니다. )
			String _subject = String.format("[%s] %s", paramMap.get("type").toString(), paramMap.get("subject").toString()); 
			String _contents = paramMap.get("contents").toString(); 
			String _reciever = paramMap.get("email1").toString() + "@" + paramMap.get("email2").toString() ; 
			//메일보내기
			mailUtil.sendMail(_subject, _contents, _reciever);
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}
