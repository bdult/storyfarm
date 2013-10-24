package com.bgg.storyfarm.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bgg.storyfarm.common.StoryfarmConstants;
import com.bgg.storyfarm.dao.BoardDao;

@Service
public class BoardService {

	@Autowired
	private BoardDao boardDao;
	
	
	public List<Map<String, Object>> listTop5(Map<String, Object> boardMap) {
		return boardDao.listTop5(boardMap);
	}
	
	public List<Map<String, Object>> questionList(Map<String, Object> boardMap) {
		
		return boardDao.questionList(boardMap);
	}
	
	/** 게시판 글 목록 조회
	 * @param boardMap { StoryfarmConstants.BOARD_ID 필수 }
	 * @return List
	 */
	public List<Map<String, Object>> list(Map<String, Object> boardMap) {
		
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
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put(StoryfarmConstants.BOARD_CONTENTS_ID, boardMap.get("contentsId").toString());
		
		return boardDao.detailComments(map);
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

		Map<String, Object> map = new HashMap<String, Object>();
		map.put(StoryfarmConstants.CONTENTS_ID, boardMap.get("contents_id"));
		map.put(StoryfarmConstants.MEMBER_ID, boardMap.get("member_id"));
		map.put(StoryfarmConstants.COMMENT, boardMap.get("comment"));
		
		return boardDao.commentCreate(map);
	}
	
	public void boardCreate(Map<String, Object> boardMap) {
		
		boardDao.create(boardMap);
	}
	
	/** 게시판 글 수정
	 * @param boardMap
	 * @return
	 */
	public int modify(Map<String, Object> boardMap) {
		return boardDao.modify(boardMap);
	}
	
	public int commentModify(Map<String, Object> boardMap) {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put(StoryfarmConstants.COMMENT_ID, boardMap.get("comment_id"));
		map.put(StoryfarmConstants.COMMENT, boardMap.get("comment"));
		
		return boardDao.commentModify(map);
	}

	
	public int hits(int contentsId){
		return boardDao.hits(contentsId);
	}
	
	/** 게시판 덧글 삭제
	 * @param boardMap
	 * @return
	 */
	public int commentDelete(Map<String, Object> boardMap){

		Map<String, Object> map = new HashMap<String, Object>();
		map.put(StoryfarmConstants.COMMENT_ID, boardMap.get("comment_id"));
		
		return boardDao.commentDelete(map);
	}
	
	
}
