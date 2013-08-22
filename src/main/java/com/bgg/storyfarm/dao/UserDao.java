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
public class UserDao extends SqlSessionDaoSupport {
	
	private Logger _logger = LoggerFactory.getLogger(getClass());
	
	public List<HashMap<String, String>> list() {
		return (List<HashMap<String, String>>)getSqlSession().selectList( "userQuery.list");
	}

	public Map<String, String> detail(Map<String, Object> UserData){
		return (Map<String, String>)getSqlSession().selectOne("userQuery.detail", UserData);
	}
}
