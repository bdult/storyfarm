package com.bgg.storyfarm.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao extends SqlSessionDaoSupport {



	public List<HashMap<String, Object>> detailBoard() {
		return (List<HashMap<String, Object>>)getSqlSession().selectList("boardQuery.detailBoard");
	}
	
	public int insertBoard(Map<String, Object> boardListMap){
		return getSqlSession().insert("boardQuery.insertBoard",boardListMap);
	}

}
