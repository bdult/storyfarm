package com.bgg.storyfarm.common;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BreadcrumbUtilTest {

	static Logger logger = LoggerFactory.getLogger(BreadcrumbUtilTest.class);
	@Test
	public void test() {
	}
	
	public void testString(){
		logger.info("정기석");
	}
	
	private void testInt(int... numbers){
	   for (int i = 0; i < numbers.length; i++){
		   logger.info("wtf {}", numbers[i]);
	   }
	}
	
	private void testString(String... strings){
		for (int i = 0; i < strings.length; i++){
			logger.info("{}", strings[i]);
		}
	}
	
	public static void main(String[] args){
		
	}

}