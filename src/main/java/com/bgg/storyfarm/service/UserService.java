package com.bgg.storyfarm.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bgg.storyfarm.dao.UserDao;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;

	public List<HashMap<String, String>> list() {
		return userDao.list();
	}
	
	/**
	 * 아이디와 비밀번호로
	 * 유저정보 불러오기
	 * @param paramMap
	 * @return
	 */
	public Map<String, String> detail(Map<String, Object> paramMap) {
		return userDao.detail(paramMap);
	}
	
	public Map<String, Object> userDetail(Map<String, Object> paramMap) {
		return userDao.userDetail(paramMap);
	}

	public Map<String, Object> findId(Map<String, Object> paramMap) {
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
	
	public Map<String, Object> duplicationUser(Map<String, Object> paramMap) {
		return userDao.duplicationUser(paramMap);
	}
}
