package com.bgg.storyfarm.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@SuppressWarnings("unchecked")
@Repository
public class ContentsDao extends SqlSessionDaoSupport {
	
	private Logger _logger = LoggerFactory.getLogger(getClass());
	
	/** 콘텐츠 목록 조회
	 * @return List
	 */
	public List<Map<String, Object>> list(Map<String, Object> contentMap) {
		
		return getSqlSession().selectList( "contentsQuery.list", contentMap);
	}

	/** 콘텐츠 상세 정보
	 * @param contentMap
	 * @return Map
	 */
	public Map<String, Object> detail(Map<String, Object> contentMap){
		
		return (Map<String, Object>)getSqlSession().selectOne("contentsQuery.detail", contentMap);
	}
	
	/** 시리즈 상세 정보
	 * @param contentMap
	 * @return Map
	 */
	public Map<String, Object> seriesDetail(Map<String, Object> contentMap){
		
		return (Map<String, Object>)getSqlSession().selectOne("contentsQuery.seriesDetail", contentMap);
	}
	
	/** 카테고리 상세 정보
	 * @param contentMap
	 * @return Map
	 */
	public Map<String, Object> cateDetail(Map<String, Object> contentMap){
		
		return (Map<String, Object>)getSqlSession().selectOne("contentsQuery.cateDetail", contentMap);
	}
	
	/** 브랜드 목록 조회
	 * @return List
	 */
	public List<Map<String, Object>> brandList(Map<String, Object> contentMap) {
		
		return getSqlSession().selectList( "contentsQuery.brandList", contentMap);
	}
	
	/** 브랜드 목록 조회
	 * @return List
	 */
	public Map<String, Object> brandDetail(Map<String, Object> contentMap) {
		
		return (Map<String, Object>)getSqlSession().selectOne( "contentsQuery.brandDetail", contentMap);
	}
	
	/** 카테고리 목록 조회
	 * @param paramMap
	 * @return
	 */
	public List<Map<String, Object>> cateList(HashMap<String, Object> paramMap) {
		return getSqlSession().selectList("contentsQuery.categoryList", paramMap);
	}
	
	/** 카테고리 아이디로 시리즈 목록 조회
	 * @return List
	 */
	public List<Map<String, Object>> seriesListByCategory(Map<String, Object> contentMap) {
		
		return getSqlSession().selectList( "contentsQuery.seriesListByCategory", contentMap);
	}
	
	/** 브랜드 아이디로 시리즈 목록 조회
	 * @return List
	 */
	public List<Map<String, Object>> seriesListByBrand(Map<String, Object> contentMap) {
		
		return getSqlSession().selectList( "contentsQuery.seriesListByBrand", contentMap);
	}

	

}
