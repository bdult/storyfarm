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

	/** 브랜드 아이디로 콘텐츠 목록 조회
	 * @return
	 */
	public List<Map<String, Object>> contentsListByBrand(Map<String, Object> contentMap) {
		return contentsDao.contentsListByBrand(contentMap);
	}

	/** 브랜드 아이디로 총 콘텐츠 갯수 조회
	 * @param contentMap
	 * @return
	 */
	public int contentsCountByBrand(Map<String, Object> contentMap) {
		return contentsDao.contentsCountByBrand(contentMap);
	}
	
	/** 시리즈 아이디로 총 콘텐츠 갯수 조회
	 * @param contentMap
	 * @return
	 */
	public int contentsCountBySeries(Map<String, Object> contentMap) {
		return contentsDao.contentsCountBySeries(contentMap);
	}
	
	/** 카테고리 아이디로 총 콘텐츠 갯수 조회
	 * @param contentMap
	 * @return
	 */
	public int contentsCountByCate(Map<String, Object> contentMap) {
		return contentsDao.contentsCountByCate(contentMap);
	}
	
	/** 시리즈 아이디로 콘텐츠 목록 조회
	 * @return
	 */
	public List<Map<String, Object>> contentsListBySeries(Map<String, Object> contentMap) {
		return contentsDao.contentsListBySeries(contentMap);
	}
	
	/** 카테고리별 콘텐츠 목록 조회
	 * @param paramMap
	 * @return
	 */
	public List<Map<String, Object>> contentsListByCate(Map<String, Object> paramMap) {
		return contentsDao.contentsListByCate(paramMap);
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
	
	/** 브랜드 상세 정보 보기
	 * @return
	 */
	public Map<String, Object> brandDetail(Map<String, Object> contentMap) {
		return contentsDao.brandDetail(contentMap);
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

	public Map<String, Object> cateDetail(Map<String, Object> contentMap) {
		return contentsDao.cateDetail(contentMap);
	}

	public List<Map<String, Object>> cateList(HashMap<String, Object> paramMap) {
		return contentsDao.cateList(paramMap);
	}

	public String movieUrlByContentsId(String contentsId) {
		return contentsDao.movieUrlByContentsId(contentsId);
	}

	
}
