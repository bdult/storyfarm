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

	/**
	 * 유저 정보 생성
	 * @param paramMap
	 * @return
	 */
	public int insertUser(Map<String, Object> paramMap){
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", paramMap.get("id"));
		map.put("name", paramMap.get("name"));
		map.put("pwd", paramMap.get("pwd"));
		map.put("role", paramMap.get("role"));
		
		return userDao.insertUser(map);
	}
	
	public int updateUser(Map<String, Object> paramMap){
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", paramMap.get("id"));
		map.put("name", paramMap.get("name"));
		map.put("pwd", paramMap.get("pwd"));
		map.put("role", paramMap.get("role"));
		
		return userDao.updateUser(map);
	}
}
