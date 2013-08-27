package com.bgg.storyfarm.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

/**
 * Breadcrumb(네비게이션) 유틸리티 예) 홈 > 고객센터 > Q&A
 */
@Component
public class BreadcrumbUtil {

	HashMap<String, String> breadcrumbMap;

	/** 
	 * 상위 카테고리부터 넣어준다.<br /><br />
	 * 예) 홈 > 고객센터<br />
	 *     getBreadcrumbs(StoryfarmConstants.BREADCRUMB_HOME, StoryfarmConstants.BREADCRUMB_CSCENTER);
	 * @param breadcrumbKeys
	 * @return List
	 */
	public List<Map<String, String>> getBreadcrumbs(int... breadcrumbKeys) {
		List<Map<String, String>> breadcrumbs = new ArrayList<Map<String, String>>();

		for (int index = 0; index < breadcrumbKeys.length; index++) {

			int _breadcrumbKey = breadcrumbKeys[index];
			switch (_breadcrumbKey) {
			case StoryfarmConstants.BREADCRUMB_HOME:
				this.setBreadcrumbMap("홈", "/");
				break;
			case StoryfarmConstants.BREADCRUMB_LOGIN:
				this.setBreadcrumbMap("로그인", "/login.do");
				break;
			case StoryfarmConstants.BREADCRUMB_FINDID:
				this.setBreadcrumbMap("아이디 찾기", "/findId.do");
				break;
			case StoryfarmConstants.BREADCRUMB_FINDID_RESULT:
				this.setBreadcrumbMap("아이디 찾기 결과", "/findIdResult.do");
				break;
			case StoryfarmConstants.BREADCRUMB_FINDID_FAIL:
				this.setBreadcrumbMap("아이디 찾기 없음", "/findIdFail.do");
				break;
			case StoryfarmConstants.BREADCRUMB_FINDPWD:
				this.setBreadcrumbMap("비밀번호 찾기", "/findPwd.do");
				break;
			case StoryfarmConstants.BREADCRUMB_FINDPWD_RESULT:
				this.setBreadcrumbMap("비밀번호 찾기 결과", "/findPwdResult.do");
				break;
			case StoryfarmConstants.BREADCRUMB_REGISTER:
				this.setBreadcrumbMap("회원가입", "/register.do");
				break;
			case StoryfarmConstants.BREADCRUMB_STORYFARM_INTRO:
				this.setBreadcrumbMap("스토리팜 소개", "/introduce/storyfarmIntro.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PUBLISHER_INTRO:
				this.setBreadcrumbMap("제휴출판사 소개", "/introduce/publisherIntro.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PARENTSROOM_INTRO:
				this.setBreadcrumbMap("부모방 소개", "/introduce/storyfarmIntro.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PAYMENT_INFO:
				this.setBreadcrumbMap("유료서비스 안내", "/introduce/storyfarmIntro.do");
				break;
			case StoryfarmConstants.BREADCRUMB_CSCENTER_NOTI:
				this.setBreadcrumbMap("공지사항", "/cscenter/notice.do");
				break;
			case StoryfarmConstants.BREADCRUMB_CSCENTER:
				this.setBreadcrumbMap("고객센터", "/cscenter/notice.do");
				break;
			case StoryfarmConstants.BREADCRUMB_CHILDREN_ROOM:
				this.setBreadcrumbMap("자녀방", "/children/room.do");
				break;
			case StoryfarmConstants.BREADCRUMB_CHILDREN_PLAYER:
				this.setBreadcrumbMap("콘텐츠 플레이어", "/children/player.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PARENTS_ROOM:
				this.setBreadcrumbMap("부모방", "/parents/room.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PARENTS_STUDY:
				this.setBreadcrumbMap("학습통계", "/parents/study.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PARENTS_CHILDREN:
				this.setBreadcrumbMap("학습자관리", "/parents/children.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PARENTS_TIME:
				this.setBreadcrumbMap("사용시간설정", "/parents/time.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PARENTS_ITEMS:
				this.setBreadcrumbMap("과목별학습현황", "/parents/items.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PARENTS_SERIES:
				this.setBreadcrumbMap("전집별학습현황", "/parents/series.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PARENTS_PERIOD:
				this.setBreadcrumbMap("기간별학습현황", "/parents/period.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PARENTS_WEEKLY:
				this.setBreadcrumbMap("주별학습현황", "/parents/weekly.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PARENTS_MONTHLY:
				this.setBreadcrumbMap("월별학습현황", "/parents/monthly.do");
				break;
			case StoryfarmConstants.BREADCRUMB_ABOUT:
				this.setBreadcrumbMap("회사소개", "/about.do");
				break;
			case StoryfarmConstants.BREADCRUMB_SERVICERULES:
				this.setBreadcrumbMap("이용약관", "/serviceRules.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PRIVACYRULES:
				this.setBreadcrumbMap("개인정보취급방침", "/privacyRules.do");
				break;
			case StoryfarmConstants.BREADCRUMB_SITEMAP:
				this.setBreadcrumbMap("사이트맵", "/sitemap.do");
				break;
			default:
				break;
			}
			
			breadcrumbs.add(breadcrumbMap);
		}
		
		breadcrumbMap = null;
		return breadcrumbs;
	}

	private void setBreadcrumbMap(String name, String url) {
		breadcrumbMap = new HashMap<String, String>();
		breadcrumbMap.put(StoryfarmConstants.BREADCRUMB_NAME, name);
		breadcrumbMap.put(StoryfarmConstants.BREADCRUMB_URL, url);
	}

}
