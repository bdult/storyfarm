package com.bgg.storyfarm.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bgg.storyfarm.dao.CodeDao;

@Service
public class CodeService {

	@Autowired
	private CodeDao codeDao;
	
	public List<Map<String, Object>> listByParent(Map<String, Object> paramMap){
		return codeDao.listByParent(paramMap);
	}
}
