package com.bgg.storyfarm.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bgg.storyfarm.dao.CodeDao;
import com.bgg.storyfarm.dao.CouponDao;
import com.bgg.storyfarm.dao.PurchaseDao;

@Service
public class CouponService {

	@Autowired
	private CouponDao couponDao;
	
	/** 쿠폰 등록
	 * @param paramMap
	 * @return
	 */
	public void add(Map<String, Object> paramMap){
		couponDao.updateCouponDetail(paramMap);
	}
	
	/** 쿠폰 목록 조회
	 * @param paramMap
	 * @return
	 */
	public List<Map<String, Object>> list(Map<String, Object> paramMap){
		return couponDao.list(paramMap);
	}
}
