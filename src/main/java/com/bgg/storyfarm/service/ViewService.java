package com.bgg.storyfarm.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bgg.storyfarm.dao.ViewDao;

@Service
public class ViewService {

	@Autowired
	private ViewDao viewDao;

	public List<HashMap<String, String>> memberList() {
		return viewDao.memberList();
	}

	public Map<String, String> getUserData(Map<String, Object> paramMap) {
		return viewDao.getUserData(paramMap);
	}
}
