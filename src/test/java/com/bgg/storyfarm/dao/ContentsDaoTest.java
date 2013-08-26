package com.bgg.storyfarm.dao;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

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

import com.bgg.storyfarm.common.ConsoleUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:servlet-contextForTest.xml"})
public class ContentsDaoTest {

	Logger logger = LoggerFactory.getLogger(ContentsDaoTest.class);
	
	@Autowired
	private ContentsDao contentsDao;
	
	@Autowired
	private ConsoleUtil consoleUtil;
	
	//콘텐츠 목록 조회 테스트
	@Test
	public void testList() {
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put(StoryfarmConstants.BRAND_ID, 2);
//		paramMap.put(StoryfarmConstants.CONTENTS_SERIES_ID, 1);
		
		List<Map<String, Object>> contents = contentsDao.list(paramMap);
		logger.info( consoleUtil.prettyConsoleLog(contents));
		assertThat(contents.size(), is(not(0)));
		
	}
	
	//콘텐츠 상세 테스트
	@Test
	public void testDetail() {
		
		int contents_id = 1; 
		
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put(StoryfarmConstants.CONTENTS_ID, contents_id);
		
		Map<String, Object> content = contentsDao.detail(paramMap);
		assertNotNull(content);
	}
	
	

}
