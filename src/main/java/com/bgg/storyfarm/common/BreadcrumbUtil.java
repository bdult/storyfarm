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
			case StoryfarmConstants.BREADCRUMB_REGISTER:
				this.setBreadcrumbMap("회원가입", "/register.do");
				break;
			case StoryfarmConstants.BREADCRUMB_CSCENTER_NOTI:
				this.setBreadcrumbMap("공지사항", "/cscenter/notice.do");
				break;
			case StoryfarmConstants.BREADCRUMB_CSCENTER:
				this.setBreadcrumbMap("고객센터", "/cscenter.do");
				break;
			case StoryfarmConstants.BREADCRUMB_CHILDREN_ROOM:
				this.setBreadcrumbMap("자녀방", "/children/room.do");
				break;
			case StoryfarmConstants.BREADCRUMB_PARENTS_ROOM:
				this.setBreadcrumbMap("부모방", "/parents/study/daily.do");
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
