package com.bgg.storyfarm.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class ChildrenDao extends SqlSessionDaoSupport{

	public List<Map> userChildren(Map memberInfo) {
		return (List<Map>)getSqlSession().selectList("childrendQuery.userChildren", memberInfo);
	}

}
