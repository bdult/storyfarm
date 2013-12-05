package com.bgg.storyfarm.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:servlet-contextForTest.xml"})
public class CouponDaoTest {

	Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private CouponDao couponDao;
	
	@Ignore
	@Test
	public void testCouponMaker() {
		
		//쿠폰명
		String couponName = "신규 가입 반값할인";
		//쿠폰혜택
		String couponBenefit = "50%";
		//쿠폰 수량
		int quantity = 10;
		//쿠폰 만료일
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DAY_OF_MONTH, 30);
		
		HashMap<String, Object> couponMap = new HashMap<String, Object>();
		couponMap.put("coupon_nm", couponName);
		couponMap.put("coupon_type", couponBenefit);
		couponMap.put("quantity", quantity);
		couponMap.put("expire_dt", cal.getTime());
		
		int result = couponDao.insertCoupon(couponMap);
		log.info("result {}", result);
		log.info(couponMap.toString());
		
		assertThat(result, is(1));
		
		log.info("쿠폰생성");
		int couponId = (Integer)couponMap.get("coupon_id");
		for (int idx = 0; idx < quantity; idx++) {
			HashMap<String, Object> detailMap = new HashMap<String, Object>();
			detailMap.put("coupon_id", couponId);
			detailMap.put("coupon_type", couponBenefit);
			detailMap.put("quantity", quantity);
			detailMap.put("expire_dt", cal.getTime());
			
//			int result = couponDao.insertCoupon(detailMap);
			
		}
	}
	
	@Test
	public void testCouponGenerator() {

		int couponQuantity = 100000;
		String coupon;
		Map<String, String> couponMap = new HashMap<String, String>();
		for (int i = 0; i < couponQuantity; i++) {
			
			UUID uid = UUID.randomUUID();
			String uidStr = uid.toString().replaceAll("-", "").substring(0, 16);
			
			char[] arr = uidStr.toCharArray();
			StringBuilder sb = new StringBuilder(19);
			for(int begin=1; begin <= 16; begin++){
				sb.append(arr[begin-1]);
				if(begin%4 == 0 && begin != 16 ){
					sb.append("-");
				}
			}
			coupon = sb.toString();
			couponMap.put(coupon, null);
		}
		
		assertThat(couponMap.size(), is(couponQuantity));
	}
	
}
