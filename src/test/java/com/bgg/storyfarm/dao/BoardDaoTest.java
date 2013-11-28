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
	
	@Test
	public void testListTop5(){
		
		//given
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, "3");
		boardMap.put("member_id", "test");
		
		//when
		List<Map<String, Object>> boardList = boardDao.listTop5(boardMap);
		
		//then
		logger.info("{}", boardMap);
		assertThat(boardList.size(), is(not(0)));
		
	}
	

	//게시판 글목록 가져오기
	@Test
	public void testQuestionList() {
		
		//given
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, "1");
		boardMap.put("member_id", "test");
		//페이징 처리시 파라미터 추가
		//boardMap.put(StoryfarmConstants.BOARD_PAGE, "1");
		
		//when
		List<Map<String, Object>> boardList = boardDao.questionList(boardMap);
		
		//than
		logger.info("{}", boardMap);
		assertThat(boardList.size(), is(not(0)));
	}
	
	//게시판 글목록 가져오기
	@Test
	public void testList() {
		
		//given
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, "1");
		boardMap.put("search", "사항");
		boardMap.put("rownum", 0);
		boardMap.put("perpage", 10);
		//페이징 처리시 파라미터 추가
		//boardMap.put(StoryfarmConstants.BOARD_PAGE, "1");
		
		//when
		List<Map<String, Object>> boardList = boardDao.list(boardMap);
		
		//than
		logger.info("{}", boardMap);
		assertThat(boardList.size(), is(not(0)));
	}
	
	//게시판 글목록 제한적 가져오기
	@Test
	public void testListLimit() {
		
		//given
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.BOARD_ID, StoryfarmConstants.NOTI_BOARD_ID);
		boardMap.put(StoryfarmConstants.BOARD_LIMIT_COUNT, 6);
		
		//when
		List<Map<String, Object>> boardList = boardDao.listLimit(boardMap);
		
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
			boardDao.create(boardMap);
		}
		
		//than
//		assertNotNull(boardMap);
//		assertThat(result, is(not(0)));
//		logger.info("{}", boardMap);
	}
	
	
	//덧글 글 생성 테스트 입니다.
	@Test
	public void testCommentCreate() {
		
		//given
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.CONTENTS_ID, "69");
		boardMap.put(StoryfarmConstants.MEMBER_ID, "test");
		boardMap.put(StoryfarmConstants.COMMENT, "comment field");
		
		//when
		int result = boardDao.commentCreate(boardMap);
		
		//than
		assertNotNull(boardMap);
		assertThat(result, is(not(0)));
		logger.info("{}", boardMap);
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
	
	
	//게시판 덧글 수정 테스트 입니다.
	@Test
	public void testCommentModify() {
		
		//given
		int comment_id = 44;
		
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.COMMENT_ID, comment_id);
		boardMap.put(StoryfarmConstants.COMMENT, "Modify comment test");
		
		//when
		int result = boardDao.commentModify(boardMap);
		
		//than
		assertThat(result, is(not(0)));
		
	}
	
	//게시판 덧글 삭제 테스트 입니다.
	@Test
	public void testCommentDelete() {
		
		//given
		int comment_id = 1;
		
		Map<String, Object> boardMap = new HashMap<String, Object>();
		boardMap.put(StoryfarmConstants.COMMENT_ID, comment_id);
		
		//when
		int result = boardDao.commentDelete(boardMap);

		//than
		assertThat(result, is(not(0)));
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
	
	//조회수 추가 테스트 입니다.
	@Test
	public void testHits() {
		
		//given
		int contents_id = 19;
		
		//when
		int result = boardDao.hits(contents_id);
		
		//than
		assertThat(result, is(not(0)));
		
	}
	
	//faq 조회 테스트 입니다.
	@Test
	public void faqListTest() {
		
		//given
		Map<String, Object> contents_code = new HashMap<String, Object>();
		contents_code.put("contents_code", "BOT003");
		
		//when
		List<Map<String, Object>> faqList = boardDao.faqList(contents_code);
		
		//than
		logger.info("{}", faqList);
		assertThat(faqList.size(), is(not(0)));
		
	}
	
	//code 조회 테스트 입니다.
	@Test
	public void codeListTest() {
		
		//given
		
		
		//when
		List<Map<String, Object>> codeList = boardDao.codeList();

		//than
		logger.info("{}", codeList);
		assertThat(codeList.size(), is(not(0)));
	}
}
