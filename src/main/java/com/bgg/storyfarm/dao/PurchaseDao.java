package com.bgg.storyfarm.dao;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class PurchaseDao extends SqlSessionDaoSupport {

	public List<Map<String, Object>> list(Map<String, Object> paramMap) {
		
		//dummy
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		
		for (int i = 0; i < 10; i++) {
			Calendar calendar = new GregorianCalendar(2013,10,29);	//13년 11월 29일 셋팅
			Date regDate = calendar.getTime();
			Date startDate = calendar.getTime();
			calendar.add(Calendar.DAY_OF_MONTH, 30);
			Date expireDate = calendar.getTime();
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("REG_DT", regDate);//구매날짜
			map.put("PAYMENT_CODE", "월정기요금");//요금제
			map.put("PRICE", 20000);//가격
			map.put("PAYMENT_PROCESS", "신용카드");//결제방법
			map.put("START_DT", startDate);//사용개시
			map.put("EXPIRE_DT", expireDate);//만료일
			
			long remineDays = (expireDate.getTime() - new Date().getTime()) / (1000*60*60*24);    
			map.put("REMAIN_DAYS", remineDays);//남은일수
			
			list.add(map);
		}
		
		return list;
	}
	
	public Map<String, Object> detail(Map<String, Object> paramMap) {
		
		//dummy
		Calendar calendar = new GregorianCalendar(2013,10,29);	//13년 11월 29일 셋팅
		Date regDate = calendar.getTime();
		Date startDate = calendar.getTime();
		calendar.add(Calendar.DAY_OF_MONTH, 30);
		Date expireDate = calendar.getTime();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("REG_DT", regDate);//구매날짜
		map.put("PAYMENT_CODE", "월정기요금");//요금제
		map.put("PRICE", 20000);//가격
		map.put("PAYMENT_PROCESS", "신용카드");//결제방법
		map.put("START_DT", startDate);//사용개시
		map.put("EXPIRE_DT", expireDate);//만료일
		
		long remineDays = (expireDate.getTime() - new Date().getTime()) / (1000*60*60*24);    
		map.put("REMAIN_DAYS", remineDays);//남은일수
		
		return map;
	}
	
}
