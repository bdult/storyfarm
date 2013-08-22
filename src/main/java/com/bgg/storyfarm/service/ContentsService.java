package com.bgg.storyfarm.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bgg.storyfarm.dao.ContentsDao;

@Service
public class ContentsService {

	@Autowired
	private ContentsDao contentsDao;

	/** 콘텐츠 목록을 가져옴
	 * @return
	 */
	public List<Map<String, Object>> list() {
		return contentsDao.list();
	}
	
	/** 콘텐츠 상세 정보를 가져옴
	 * @return
	 */
	public Map<String, Object> detail(Map<String, Object> contentMap) {
		return contentsDao.detail(contentMap);
	}

}
