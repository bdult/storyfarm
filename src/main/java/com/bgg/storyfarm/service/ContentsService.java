package com.bgg.storyfarm.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bgg.storyfarm.common.StoryfarmConstants;
import com.bgg.storyfarm.dao.ContentsDao;

@Service
public class ContentsService {

	@Autowired
	private ContentsDao contentsDao;

	/** 브랜드 아이디로 콘텐츠 목록 조회
	 * @return
	 */
	public List<Map<String, Object>> contentsListByBrand(Map<String, Object> contentMap) {
		return contentsDao.contentsListByBrand(contentMap);
	}

	/** 브랜드 아이디로 총 콘텐츠 갯수 조회
	 * @param contentMap
	 * @return
	 */
	public int contentsCountByBrand(Map<String, Object> contentMap) {
		return contentsDao.contentsCountByBrand(contentMap);
	}
	
	/** 시리즈 아이디로 총 콘텐츠 갯수 조회
	 * @param contentMap
	 * @return
	 */
	public int contentsCountBySeries(Map<String, Object> contentMap) {
		return contentsDao.contentsCountBySeries(contentMap);
	}
	
	/** 카테고리 아이디로 총 콘텐츠 갯수 조회
	 * @param contentMap
	 * @return
	 */
	public int contentsCountByCate(Map<String, Object> contentMap) {
		return contentsDao.contentsCountByCate(contentMap);
	}
	
	/** 시리즈 아이디로 콘텐츠 목록 조회
	 * @return
	 */
	public List<Map<String, Object>> contentsListBySeries(Map<String, Object> contentMap) {
		return contentsDao.contentsListBySeries(contentMap);
	}
	
	/** 카테고리별 콘텐츠 목록 조회
	 * @param paramMap
	 * @return
	 */
	public List<Map<String, Object>> contentsListByCate(Map<String, Object> paramMap) {
		return contentsDao.contentsListByCate(paramMap);
	}
	
	/** 콘텐츠 상세 정보 보기
	 * @return
	 */
	public Map<String, Object> detail(Map<String, Object> contentMap) {
		return contentsDao.detail(contentMap);
	}
	
	/** 시리즈 상세 정보 보기
	 * @return
	 */
	public Map<String, Object> seriesDetail(Map<String, Object> contentMap) {
		return contentsDao.seriesDetail(contentMap);
	}

	/** 브랜드 목록 조회
	 * @return
	 */
	public List<Map<String, Object>> brandList(Map<String, Object> contentMap) {
		return contentsDao.brandList(contentMap);
	}
	
	/** 브랜드 상세 정보 보기
	 * @return
	 */
	public Map<String, Object> brandDetail(Map<String, Object> contentMap) {
		return contentsDao.brandDetail(contentMap);
	}
	
	/** 카테고리 아이디로 시리즈 목록 조회
	 * @return
	 */
	public List<Map<String, Object>> seriesListByCategory(Map<String, Object> contentMap) {
		return contentsDao.seriesListByCategory(contentMap);
	}
	
	/** 브랜드 아이디로 시리즈 목록 조회
	 * @return
	 */
	public List<Map<String, Object>> seriesListByBrand(Map<String, Object> contentMap) {
		return contentsDao.seriesListByBrand(contentMap);
	}

	public Map<String, Object> cateDetail(Map<String, Object> contentMap) {
		return contentsDao.cateDetail(contentMap);
	}

	public List<Map<String, Object>> cateList(HashMap<String, Object> paramMap) {
		return contentsDao.cateList(paramMap);
	}

	public String movieUrlByContentsId(String contentsId) {
		return contentsDao.movieUrlByContentsId(contentsId);
	}

	public List<Map<String, Object>> listByArr(List<String> contentsId) {
		return contentsDao.listByArr(contentsId);
	}

	public void addPlayLog(Long memberIdx, String contents_id) {
		
		
		Map playInfo = new HashMap();
		playInfo.put(StoryfarmConstants.MEMBER_IDX, memberIdx);
		playInfo.put(StoryfarmConstants.CONTENTS_ID, contents_id);
		
		// log data 중복 체크
		if(alreadyLog(playInfo)){
			// Skip
		}else{
			contentsDao.addPlayLog(playInfo);
		}
	}

	private boolean alreadyLog(Map playInfo) {
		int checkCount = contentsDao.duplicatePlayLogCount(playInfo);
		if(checkCount > 0){
			return true;
		}else{
			return false;
		}
	}

	public boolean isPaymentMember(Map memberInfo,
			Map<String, Object> paramMap) {
		Map paymentInfo = new HashMap();
		paymentInfo.put(StoryfarmConstants.MEMBER_ID, memberInfo.get(StoryfarmConstants.MEMBER_ID));
		paymentInfo.put(StoryfarmConstants.CONTENTS_ID, paramMap.get(StoryfarmConstants.CONTENTS_ID));
		int checkCount = contentsDao.paymentCheck(paymentInfo);
		if(checkCount > 0){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 자녀방
	 * @param memberInfo
	 * @return
	 */
	public Map childRoom(Map memberInfo){
		
		Map childRoomInfo = new HashMap();
		
		childRoomInfo.put("history", childMovieHistory(memberInfo));
		childRoomInfo.put("ozworldRecommend", childMovieHistory(memberInfo));
		childRoomInfo.put("ageBestMovie", ageBestMovie(memberInfo));
		
		return childRoomInfo;
	}
	
	// 아이가 자주 보는 동영상(Mockup)
	private List<Map<String, Object>> childMovieHistory(Map memberInfo){
		
		// memberInfo
		
		// dummy
		Map paramInfo = new HashMap();
		paramInfo.put("cate_id", "32");
		paramInfo.put("rownum", 0);
		paramInfo.put("perpage", 6);
		return contentsDao.contentsListByCate(paramInfo);
	}
	
	// 오즈월드 추천 동영상(Mockup)
	private List<Map<String, Object>> recommandationMovies(){
		// dummy
		Map paramInfo = new HashMap();
		paramInfo.put("cate_id", "38");
		paramInfo.put("rownum", 0);
		paramInfo.put("perpage", 3);
		return contentsDao.contentsListByCate(paramInfo);
	}
	
	// 또래가 가장많이 본 동영상
	private List<Map<String, Object>>  ageBestMovie(Map memberInfo){
		// dummy
		Map paramInfo = new HashMap();
		paramInfo.put("cate_id", "54");
		paramInfo.put("rownum", 0);
		paramInfo.put("perpage", 3);
		return contentsDao.contentsListByCate(paramInfo);
	}

	public void savePlayHistory(Map contentsInfo) {
		contentsDao.savePlayHistory(contentsInfo);
	}

	public List<Map> playHistory(Map contentsInfo) {
		return contentsDao.playHistory(contentsInfo);
	}
	
	public Map childPlayCount(Map memberInfo) {
		Map playCount = new HashMap();
		playCount.put("subject", childPlayCountBySubject(memberInfo));
		playCount.put("series", childPlayCountBySeries(memberInfo));
		playCount.put("regDt", childPlayCountByRegDT(memberInfo));
		
		return playCount;
	}

	private List<Map> childPlayCountBySubject(Map memberInfo) {
		return contentsDao.childPlayCountBySubject(memberInfo);
	}

	private List<Map> childPlayCountByRegDT(Map memberInfo) {
		return contentsDao.childPlayCountByRegDT(memberInfo);
	}

	private List<Map> childPlayCountBySeries(Map memberInfo) {
		return contentsDao.childPlayCountBySeries(memberInfo);
	}

	
	

	
}
