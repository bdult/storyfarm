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
		return getSqlSession().selectList( "userQuery.list");
	}

	/**
	 * 아이디와 비밀번호로
	 * 유저정보 불러오기
	 * @param UserData
	 * @return
	 */
	public Map<String, String> detail(Map<String, Object> UserData){
		return (Map<String, String>)getSqlSession().selectOne("userQuery.detail", UserData);
	}
	
	/**
	 * 유저 정보 생성
	 * @param userListMap
	 * @return
	 */
	public void insertUser(Map<String, Object> userListMap){
		getSqlSession().insert("userQuery.insertUser",userListMap);
	}

	public void updateUser(Map<String, Object> userListMap) {
		getSqlSession().update("userQuery.updateUser", userListMap);
	}
}
