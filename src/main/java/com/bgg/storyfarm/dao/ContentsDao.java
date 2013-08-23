package com.bgg.storyfarm.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class ContentsDao extends SqlSessionDaoSupport {
	
	private Logger _logger = LoggerFactory.getLogger(getClass());
	
	public List<Map<String, Object>> list() {
		
		// will return dummy data
		List<Map<String, Object>> dummyList = new ArrayList<Map<String, Object>>();
		
		int lastNum = 10;
		for( int beginNum = 1; beginNum <= lastNum; beginNum++ ){
			HashMap<String, Object> dummyMap = new HashMap<String, Object>();
			dummyMap.put("content_id", beginNum);
			dummyMap.put("content_name", "콘텐츠" + beginNum);
			dummyList.add( dummyMap );
		}
		
		return dummyList;
		//return (List<HashMap<String, Object>>)getSqlSession().selectList( "contentsQuery.list");
	}

	public Map<String, Object> detail(Map<String, Object> contentMap){
		
		// will return dummy data
		HashMap<String, Object> dummyMap = new HashMap<String, Object>();
		dummyMap.put("content_id", 1);
		dummyMap.put("content_name", "콘텐츠 상세1");
		
		return dummyMap;
		//return (Map<String, Object>)getSqlSession().selectOne("contentsQuery.detail", ContentMap);
	}
}
