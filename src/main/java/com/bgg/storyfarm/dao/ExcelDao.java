package com.bgg.storyfarm.dao;

import java.util.HashMap;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class ExcelDao extends SqlSessionDaoSupport {
	
	private Logger _logger = LoggerFactory.getLogger(getClass());
	
	/** 콘텐츠 제목으로 콘텐츠 아이디 조회
	 * @return int
	 */
	public int contentsId(HashMap<String, Object> map) {
		try {
			return (Integer)getSqlSession().selectOne("excelQuery.contentsId", map);
		} catch (Exception e) {
			return 0;
		}
	}
	
	/** 콘텐츠 시리얼 넘버 수정
	 * @param map
	 * @return
	 */
	public int updateContent(HashMap<String, Object> map) {
		return getSqlSession().update("excelQuery.updateContent", map);
	}


}
