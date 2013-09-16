package com.bgg.storyfarm.dao;

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
	
	/** 콘텐츠 목록을 조회
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
}
