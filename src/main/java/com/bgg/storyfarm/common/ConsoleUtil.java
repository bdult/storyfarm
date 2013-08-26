package com.bgg.storyfarm.common;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class ConsoleUtil {

	/** List<Map>객체를 좀 더 읽기 쉽게 만들어 준다.
	 * @param list
	 * @return String
	 */
	public String prettyConsoleLog(List<Map<String, Object>> list) {
		StringBuilder sb = new StringBuilder();
		sb.append("\n====================================================\n[");
		
		int index = 0;
		for (Map<String, Object> map : list) {
			sb.append("\n" + (index++) + " - " + map.toString());
		}
		
		sb.append("\n]\nby prettyConsoleLog\n");
		sb.append("====================================================");
		return sb.toString();
	}

}
