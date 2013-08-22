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
	
	public List<HashMap<String, String>> userList() {
		return (List<HashMap<String, String>>)getSqlSession().selectList( "userQuery.userList");
	}

	public Map<String, String> getUserData(Map<String, Object> UserData){
		return (Map<String, String>)getSqlSession().selectOne("userQuery.getUserData", UserData);
	}
	
	public int insertUser(Map<String, Object> userListMap){
		return getSqlSession().insert("userQuery.insertUser",userListMap);
	}

	public int updateUser(Map<String, String> userListMap){
		return getSqlSession().update("userQuery.updateUser", userListMap);
	}

	public int deleteUser(Map<String, String> userListMap){
		return getSqlSession().delete("userQuery.deleteUser", userListMap);
	}
}
