package com.bgg.storyfarm.service;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.fail;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:servlet-contextForTest.xml"})
public class PurchaseServiceTest {

	Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private PurchaseService purchaseService;
	
	@Test
	public void testList() {
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		List list = purchaseService.list(paramMap);
		log.info(list.toString());
		
		assertThat(list.size(), is(not(0)));
	}
	
	@Test
	public void testDetail() {
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		Map<String, Object> result = purchaseService.detail(paramMap);
		log.info(result.toString());
		
		assertNotNull(result);
	}

}
