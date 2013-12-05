package com.bgg.storyfarm.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class CouponDao extends SqlSessionDaoSupport {

	public int insertCoupon(Map<String, Object> paramsMap){
		return getSqlSession().insert("couponQuery.insertCoupon", paramsMap);
	}
	
	public int insertCouponDetail(Map<String, Object> paramsMap){
		return getSqlSession().insert("couponQuery.insertCouponDetail", paramsMap);
	}
	
	public int updateCouponDetail(Map<String, Object> paramsMap){
		return getSqlSession().update("couponQuery.updateCouponDetail", paramsMap);
	}
	
	/** 쿠폰 목록 조회
	 * @param paramMap
	 * @return
	 */
	public List<Map<String, Object>> list(Map<String, Object> paramsMap) {
		return getSqlSession().selectList("couponQuery.list", paramsMap);
	}
	
}
