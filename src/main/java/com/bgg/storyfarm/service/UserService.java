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

	public List<HashMap<String, String>> userList() {
		return userDao.userList();
	}

	public Map<String, String> getUserData(Map<String, Object> paramMap) {
		return userDao.getUserData(paramMap);
	}
}
