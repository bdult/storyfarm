package com.bgg.storyfarm.dao;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bgg.storyfarm.common.ConsoleUtil;
import com.bgg.storyfarm.common.PageUtil;
import com.bgg.storyfarm.common.StoryfarmConstants;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:servlet-contextForTest.xml"})
public class ContentsDaoTest {

	Logger logger = LoggerFactory.getLogger(ContentsDaoTest.class);
	
	@Autowired
	private ContentsDao contentsDao;
	
	@Autowired
	private ConsoleUtil consoleUtil;

	@Autowired
	private PageUtil pageUtil;
	
	HashMap<String, Object> paramMap = null;
	
	@Before
	public void setUp() throws Exception {
		paramMap = new HashMap<String, Object>();
	}

	@After
	public void tearDown() throws Exception {
	}
	
	
	//출판사 아이디로 콘텐츠 목록 조회 테스트
	@Test
	public void testListByBrand() {
		paramMap.put(StoryfarmConstants.BRAND_ID, 139);
		
		//페이징 로직
		int totCnt = contentsDao.contentsCountByBrand(paramMap);
		logger.info("totCnt {}", totCnt);

		int pageNum = 1;
		paramMap.put(PageUtil.ROWNUM_KEY, (pageNum - 1) * PageUtil.PER_PAGE);
		paramMap.put(PageUtil.PER_KEY, PageUtil.PER_PAGE);
		
		List<Map<String, Object>> contents = contentsDao.contentsListByBrand(paramMap);
		logger.info("size {}", contents.size());
		assertThat(contents.size(), is(not(0)));
	}
	
	//시리즈 아이디로 콘텐츠 목록 조회 테스트
	@Test
	public void testListBySeries() {
		paramMap.put(StoryfarmConstants.CONTENTS_SERIES_ID, 61);
		
		int totCnt = contentsDao.contentsCountBySeries(paramMap);
		logger.info("totCnt {}", totCnt);
		
		List<Map<String, Object>> contents = contentsDao.contentsListBySeries(paramMap);
		logger.info("size {}", contents.size());
		assertThat(contents.size(), is(not(0)));
	}
	
	//카테고리 아이디로 콘텐츠 목록 조회 테스트
	@Test
	public void testListByCate() {
		paramMap.put("cate_id", 32);
		
		//페이징 로직
		int pageNum = 1;
		int totCnt = contentsDao.contentsCountByCate(paramMap);
		logger.info("totCnt {}", totCnt);
		paramMap.put(PageUtil.ROWNUM_KEY, (pageNum - 1) * PageUtil.PER_PAGE);
		paramMap.put(PageUtil.PER_KEY, PageUtil.PER_PAGE);
		
		List<Map<String, Object>> contents = contentsDao.contentsListByCate(paramMap);
		logger.info("size {}", contents.size());
		assertThat(contents.size(), is(not(0)));
	}
	
	//콘텐츠 상세 테스트
	@Test
	public void testDetail() {
		
		int contents_id = 1; 
		
		paramMap.put(StoryfarmConstants.CONTENTS_ID, contents_id);
		
		Map<String, Object> content = contentsDao.detail(paramMap);
		assertNotNull(content);
	}
	
	//시리즈 상세 테스트
	@Test
	public void testSeriesDetail() {
		
		int contents_series_id = 148; 
		
		paramMap.put(StoryfarmConstants.CONTENTS_SERIES_ID, contents_series_id);
		
		Map<String, Object> series = contentsDao.seriesDetail(paramMap);
		assertNotNull(series);
	}
	
	//시리즈 상세 테스트
	@Test
	public void testCateDetail() {
		
		int contents_series_id = 39; 
		
		paramMap.put(StoryfarmConstants.CATE_ID, contents_series_id);
		
		Map<String, Object> series = contentsDao.cateDetail(paramMap);
		assertNotNull(series);
	}
	
	//출판사 목록 조회 테스트
	@Test
	public void testBrandList() {
		
		List<Map<String, Object>> contents = contentsDao.brandList(paramMap);
		logger.info( consoleUtil.prettyConsoleLog(contents));
		assertThat(contents.size(), is(not(0)));
		
	}
	//카테고리 아이디로 시리즈 목록 조회 테스트
	@Test
	public void testSeriesListByCategory() {
		paramMap.put(StoryfarmConstants.CATE_ID, 40);//한글
		
		List<Map<String, Object>> contents = contentsDao.seriesListByCategory(paramMap);
		logger.info( consoleUtil.prettyConsoleLog(contents));
		assertThat(contents.size(), is(not(0)));
		
	}
	//출판사 아이디로 시리즈 목록 조회 테스트
	@Test
	public void testSeriesListByBrand() {
		
		paramMap.put(StoryfarmConstants.BRAND_ID, 137); //YBM시사
		
		List<Map<String, Object>> contents = contentsDao.seriesListByBrand(paramMap);
		logger.info( consoleUtil.prettyConsoleLog(contents));
		assertThat(contents.size(), is(not(0)));
		
	}
	
	@Test
	public void testAddPlayLog() {
		
		// given 
		paramMap.put("member_idx", "92");
		paramMap.put("contents_id", "1300");

		// when
		int addCount = contentsDao.addPlayLog(paramMap);

		// then
		assertThat(addCount, is(not(0)));

	}
}
