package com.bgg.storyfarm.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
@SuppressWarnings("unchecked")
public class ViewDao extends SqlSessionDaoSupport {
	
	private Logger _logger = LoggerFactory.getLogger(getClass());
	
	public List<HashMap<String, String>> memberList() {
		return (List<HashMap<String, String>>)getSqlSession().selectList( "viewQuery.memberList");
	}

	public Map<String, String> getUserData(Map<String, Object> UserData){
		return (Map<String, String>)getSqlSession().selectOne("viewQuery.getUserData", UserData);
	}
}
