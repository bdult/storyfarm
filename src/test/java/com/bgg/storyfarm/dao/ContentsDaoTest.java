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
//		paramMap.put(StoryfarmConstants.BRAND_ID, 2);
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
	
	//시리즈 상세 테스트
	@Test
	public void testSeriesDetail() {
		
		int contents_series_id = 148; 
		
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put(StoryfarmConstants.CONTENTS_SERIES_ID, contents_series_id);
		
		Map<String, Object> series = contentsDao.seriesDetail(paramMap);
		assertNotNull(series);
	}
	
	//시리즈 상세 테스트
	@Test
	public void testCateDetail() {
		
		int contents_series_id = 39; 
		
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put(StoryfarmConstants.CATE_ID, contents_series_id);
		
		Map<String, Object> series = contentsDao.cateDetail(paramMap);
		assertNotNull(series);
	}
	
	//브랜드 목록 조회 테스트
	@Test
	public void testBrandList() {
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
//		paramMap.put(StoryfarmConstants.BRAND_ID, 2);
//		paramMap.put(StoryfarmConstants.CONTENTS_SERIES_ID, 1);
		
		List<Map<String, Object>> contents = contentsDao.brandList(paramMap);
		logger.info( consoleUtil.prettyConsoleLog(contents));
		assertThat(contents.size(), is(not(0)));
		
	}
	//카테고리 아이디로 시리즈 목록 조회 테스트
	@Test
	public void testSeriesListByCategory() {
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put(StoryfarmConstants.CATE_ID, 40);//한글
		
		List<Map<String, Object>> contents = contentsDao.seriesListByCategory(paramMap);
		logger.info( consoleUtil.prettyConsoleLog(contents));
		assertThat(contents.size(), is(not(0)));
		
	}
	//브랜드 아이디로 시리즈 목록 조회 테스트
	@Test
	public void testSeriesListByBrand() {
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put(StoryfarmConstants.BRAND_ID, 137); //YBM시사
		
		List<Map<String, Object>> contents = contentsDao.seriesListByBrand(paramMap);
		logger.info( consoleUtil.prettyConsoleLog(contents));
		assertThat(contents.size(), is(not(0)));
		
	}
}
