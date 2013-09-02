package com.bgg.storyfarm.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao extends SqlSessionDaoSupport {

	
	/** 테스트 시 게시판 board_id 조회용
	 * @return
	 */
	public List<Map<String, Object>> boards() {
		return (List<Map<String, Object>>)getSqlSession().selectList("boardQuery.boards");
	}
	
	/** 게시판 글 전체갯수
	 * @return
	 */
	public int count(Map<String, Object> boardMap) {
		return (Integer)getSqlSession().selectOne("boardQuery.count", boardMap);
	}
	
	/** 게시판 글 목록 조회
	 * @return
	 */
	public List<Map<String, Object>> list(Map<String, Object> boardMap) {
		return (List<Map<String, Object>>)getSqlSession().selectList("boardQuery.list", boardMap);
	}

	/** 게시판 글 조회
	 * @param boardMap
	 * @return HashMap<String, Object>
	 */
	public Map<String, Object> detail(int contentsId) {
		return (Map<String, Object>)getSqlSession().selectOne("boardQuery.detail", contentsId);
	}
	
	/** 게시판 댓글 조회
	 * @param boardCommentsMap
	 * @return
	 */
	public List<Map<String, Object>> detailComments(Map<String, Object> boardCommentsMap) {
		return (List<Map<String, Object>>)getSqlSession().selectList("boardQuery.detailComments", boardCommentsMap);
	}
	
	/** 게시판 글 생성
	 * @param boardMap
	 * @return
	 */
	public int create(Map<String, Object> boardMap){
		return getSqlSession().insert("boardQuery.create", boardMap);
	}
	
	/** 게시판 덧글 생성
	 * @param boardMap
	 * @return
	 */
	public int commentCreate(Map<String, Object> boardMap){
		return getSqlSession().insert("boardQuery.commentCreate", boardMap);
	}
	
	/** 게시판 글 수정
	 * @param boardMap
	 * @return
	 */
	public int modify(Map<String, Object> boardMap){
		return getSqlSession().insert("boardQuery.modify", boardMap);
	}
	
	/** 게시판 글 삭제
	 * @param boardMap
	 * @return
	 */
	public int commentDelete(Map<String, Object> boardMap){
		return getSqlSession().insert("boardQuery.commentDelete", boardMap);
	}

	/** 게시판 덧글 수정
	 * @param boardMap
	 * @return
	 */
	public int commentModify(Map<String, Object> boardMap){
		return getSqlSession().insert("boardQuery.commentModify", boardMap);
	}
}
