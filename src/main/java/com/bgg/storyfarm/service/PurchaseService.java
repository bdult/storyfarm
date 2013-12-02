package com.bgg.storyfarm.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bgg.storyfarm.dao.CodeDao;
import com.bgg.storyfarm.dao.PurchaseDao;

@Service
public class PurchaseService {

	@Autowired
	private PurchaseDao paymentDao;
	
	/** 구매내역 목록 조회
	 * @param paramMap
	 * @return
	 */
	public List<Map<String, Object>> list(Map<String, Object> paramMap){
		return paymentDao.list(paramMap);
	}
	
	/** 구매내역 상세 조회
	 * @param paramMap
	 * @return
	 */
	public Map<String, Object> detail(Map<String, Object> paramMap){
		return paymentDao.detail(paramMap);
	}
}
