package com.bgg.storyfarm.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bgg.storyfarm.dao.ChildrenDao;

@Service
public class ChildrenService {
	
	@Autowired
	ChildrenDao childrenDao;

	public List<Map> userChildren(Map memberInfo) {
		return childrenDao.userChildren(memberInfo);
	}

}
