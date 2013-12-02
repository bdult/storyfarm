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
public class CouponDao extends SqlSessionDaoSupport {

	public void add(Map<String, Object> paramMap){
		//쿠폰등록
	}
	
	/** 쿠폰 목록 조회
	 * @param paramMap
	 * @return
	 */
	public List<Map<String, Object>> list(Map<String, Object> paramMap) {
		
		//dummy
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		
		for (int i = 0; i < 10; i++) {
			Calendar calendar = new GregorianCalendar(2013,10,29);	//13년 11월 29일 셋팅
			Date regDate = calendar.getTime();
			Date expireDate = calendar.getTime();
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("REG_DT", regDate);//구매날짜
			map.put("COUPON", "avcc-1234-qwer-7777");//요금제
			map.put("NAME", "11월 이벤트");//쿠폰명
			map.put("EXPIRE_DT", expireDate);//쿠폰만료일
			map.put("STATUS", "미사용");//상태
			
			list.add(map);
		}
		
		return list;
	}
	
}
