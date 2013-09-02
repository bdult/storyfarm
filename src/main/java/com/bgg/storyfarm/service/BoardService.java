package com.bgg.storyfarm.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bgg.storyfarm.dao.BoardDao;

@Service
public class BoardService {

	@Autowired
	private BoardDao boardDao;
	
	/** 게시판 글 목록 조회
	 * @param boardMap { StoryfarmConstants.BOARD_ID 필수 }
	 * @return List
	 */
	public List<Map<String, Object>> list(Map<String, Object> boardMap) {
		
		//TODO 페이징 로직 추가해야함
		
		return boardDao.list(boardMap);
	}
	
	/** 게시판 전체 글 갯수 조회
	 * @param boardMap { StoryfarmConstants.BOARD_ID 필수 }
	 * @return List
	 */
	public int totalCount(Map<String, Object> boardMap) {
		
		return boardDao.count(boardMap);
	}
	
	/** 게시판 댓글 보기
	 * @param boardMap
	 * @return
	 */
	public List<Map<String, Object>> detailComments(Map<String, Object> boardMap) {
		return boardDao.detailComments(boardMap);
	}

	/** 게시판 글 상세보기
	 * @param contentsId
	 * @return Map
	 */
	public Map<String, Object> detail(int contentsId) {
		return boardDao.detail(contentsId);
	}
	
	/** 게시판 덧글 생성
	 * @param boardMap
	 * @return
	 */
	public int commentCreate(Map<String, Object> boardMap) {
		return boardDao.commentCreate(boardMap);
	}
	
	/** 게시판 글 수정
	 * @param boardMap
	 * @return
	 */
	public int modify(Map<String, Object> boardMap) {
		return boardDao.modify(boardMap);
	}
	
	
}
