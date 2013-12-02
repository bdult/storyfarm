package com.bgg.storyfarm.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@SuppressWarnings("unchecked")
@Repository
public class CodeDao extends SqlSessionDaoSupport {

	public List<Map<String, Object>> listByParent(Map<String, Object> paramMap) {
		return getSqlSession().selectList("codeQuery.listByParent", paramMap);
	}
	
}
