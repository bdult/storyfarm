package com.bgg.storyfarm.service;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bgg.storyfarm.dao.BoardDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:servlet-contextForTest.xml"})
public class BoardServiceTest {


	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	public BoardDao boardDao;
	
	
	@Before
	public void before() {
		logger.info("==========================");
		logger.info("모든 JUNIT 테스트 시작 전 실행 됩니다.");
		logger.info("==========================");
	}

	@After
	public void after(){
		logger.info("==========================");
		logger.info("모든 JUNIT 테스트 종료 후 실행 됩니다.");
		logger.info("==========================");
	}
	
	@Test
	public void testInsertBoard() {
		logger.info("게시판 생성 테스트 입니다.");

		//given
		Map<String, Object> userDTO = new HashMap<String, Object>();
		userDTO.put("board_id", "11");
		userDTO.put("id", "test");
		userDTO.put("board_title", "good1");
		userDTO.put("board_contents", "goodcontents");
		
		//when
		int result = boardDao.insertBoard(userDTO);
		
		//than
		assertNotNull(userDTO);
		assertThat(result, is(not(0)));
		logger.info("{}", userDTO);
	}
	
	@Test
	public void testViewBoard() {
		logger.info("게시판 뷰 테스트 입니다.");
		
		//when
		List<HashMap<String, Object>> boardList = boardDao.detailBoard();

		//than
		logger.info("Result : {}", boardList.toString());
		logger.info("Result set 갯수 : {}", boardList.size());

	}
}
