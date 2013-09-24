package com.bgg.storyfarm.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bgg.storyfarm.dao.ContentsDao;

@Service
public class ContentsService {

	@Autowired
	private ContentsDao contentsDao;

	/** 콘텐츠 목록 조회
	 * @return
	 */
	public List<Map<String, Object>> list(Map<String, Object> contentMap) {
		return contentsDao.list(contentMap);
	}
	
	/** 콘텐츠 상세 정보 보기
	 * @return
	 */
	public Map<String, Object> detail(Map<String, Object> contentMap) {
		return contentsDao.detail(contentMap);
	}
	
	/** 시리즈 상세 정보 보기
	 * @return
	 */
	public Map<String, Object> seriesDetail(Map<String, Object> contentMap) {
		return contentsDao.seriesDetail(contentMap);
	}

	/** 브랜드 목록 조회
	 * @return
	 */
	public List<Map<String, Object>> brandList(Map<String, Object> contentMap) {
		return contentsDao.brandList(contentMap);
	}
	
	/** 카테고리 아이디로 시리즈 목록 조회
	 * @return
	 */
	public List<Map<String, Object>> seriesListByCategory(Map<String, Object> contentMap) {
		return contentsDao.seriesListByCategory(contentMap);
	}
	
	/** 브랜드 아이디로 시리즈 목록 조회
	 * @return
	 */
	public List<Map<String, Object>> seriesListByBrand(Map<String, Object> contentMap) {
		return contentsDao.seriesListByBrand(contentMap);
	}

	public List<Map<String, Object>> cateList(HashMap<String, Object> paramMap) {
		return contentsDao.cateList(paramMap);
	}
}
