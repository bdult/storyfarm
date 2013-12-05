package com.bgg.storyfarm.service;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bgg.storyfarm.common.StoryfarmConstants;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:servlet-contextForTest.xml"})
public class ContentsServiceTest {
	
	@Autowired
	ContentsService contentsService;

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testChildRoom() {
		
		// given 
		Map memberInfo = new HashMap();
		memberInfo.put("member_id", "test");

		// when
		Map childMovieHistory = contentsService.childRoom(memberInfo);
		
		// then
		assertNotNull(childMovieHistory.get("history"));
		assertNotNull(childMovieHistory.get("ozworldRecommend"));
		assertNotNull(childMovieHistory.get("ageBestMovie"));
	}
	
	@Test
	public void testSavePlayHistory() {
		
		// given 
		Map contentsInfo = new HashMap();
		contentsInfo.put(StoryfarmConstants.MEMBER_ID, "test");
		contentsInfo.put(StoryfarmConstants.CONTENTS_ID, "398");

		// when
		contentsService.savePlayHistory(contentsInfo);

		// then

	}
	
	@Test
	public void testSelectPlayHistory() {
		
		// given 
		Map memberInfo = new HashMap();
		memberInfo.put(StoryfarmConstants.MEMBER_ID, "test");
		memberInfo.put(StoryfarmConstants.CHILDREN_IDX, "45");

		// when
		List<Map> playHistorys = contentsService.viewHistoryOfChild(memberInfo);

		// then
		assertNotNull(playHistorys);

	}
	
	
	
}
