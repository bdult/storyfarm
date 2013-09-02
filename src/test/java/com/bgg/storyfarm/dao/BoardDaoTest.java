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
import com.bgg.storyfarm.dao.BoardDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:servlet-contextForTest.xml"})
public class BoardDaoTest {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	public BoardDao boardDao;
	
	@Autowired
	public ConsoleUtil consoleUtil;
	
	@Test
	public void testBoards() {
		//when
		List<Map<String, Object>> boards = boardDao.boards();

		//than
		logger.info(consoleUtil.prettyConsoleLog(boards));
		logger.info("게시판 갯수 : {}", boards.size());
	}
	
	//게시판 글목록 가져오기
	@Test
	public void testList() {
		
		//given
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, "11");
		//페이징 처리시 파라미터 추가
		//boardMap.put(StoryfarmConstants.BOARD_PAGE, "1");
		
		//when
		List<Map<String, Object>> boardList = boardDao.list(boardMap);
		
		//than
		logger.info("{}", boardMap);
		assertThat(boardList.size(), is(not(0)));
	}
	
	//게시판 글목록 가져오기
	@Test
	public void testCount() {
		
		//given
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, "11");
		//페이징 처리시 파라미터 추가
		//boardMap.put(StoryfarmConstants.BOARD_PAGE, "1");
		
		//when
		int count = boardDao.count(boardMap);
		
		//than
		assertThat(count, is(not(0)));
	}
	
	//게시판 댓글목록 가져오기
	@Test
	public void testDetailComments() {
		
		//given
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_CONTENTS_ID, "69");
		
		//when
		List<Map<String, Object>> detailComments = boardDao.detailComments(boardMap);
//		int detailComments = boardDao.detailComments(boardMap);

		//than
		logger.info("{}", boardMap);
		assertThat(detailComments.size(), is(not(0)));
	}
	
	//게시판 글 생성 테스트 입니다.
	@Test
	public void testCreate() {

		for(int begin=1; begin <= 50; begin++){
			
			//given
			Map<String, Object> boardMap = new HashMap<String, Object>();
			boardMap.put(StoryfarmConstants.BOARD_ID, 2);
			boardMap.put(StoryfarmConstants.BOARD_MEMBER_ID, "test");
			boardMap.put(StoryfarmConstants.BOARD_TITLE, "이벤트" + begin);
			boardMap.put(StoryfarmConstants.BOARD_CONTENTS, "이벤트 내용 " + begin);
			
			//when
			int result = boardDao.create(boardMap);
		}
		
		//than
//		assertNotNull(boardMap);
//		assertThat(result, is(not(0)));
//		logger.info("{}", boardMap);
	}

	//게시판 글 수정 테스트 입니다.
	@Test
	public void testModify() {
		
		//given
		int contents_id = 1;
		
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_CONTENTS_ID, contents_id + "");
		boardMap.put(StoryfarmConstants.BOARD_TITLE, "abc");
		boardMap.put(StoryfarmConstants.BOARD_CONTENTS, "qwqeq");
		
		//when
		logger.info("{}", boardMap);
		int result = boardDao.modify(boardMap);
		
		//than
		assertThat(result, is(not(0)));
		if(result > 0) {
			Map<String, Object> content = boardDao.detail(contents_id);
			assertNotNull(content);
		}
	}
	
	//뷰 테스트 입니다.
	@Test
	public void testDetail() {
		
		//given
		int contents_id = 1;
		
		//when
		Map<String, Object> content = boardDao.detail(contents_id);

		//than
		assertNotNull(content);
		logger.info("Result : {}", content.toString());

	}
}
