package com.bgg.storyfarm.common;

import static org.junit.Assert.*;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BreadcrumbUtilTest {

	Logger logger = LoggerFactory.getLogger(BreadcrumbUtilTest.class);
	@Test
	public void test() {
		testInt(1, 2, 3, 4);
		testString("one", "two", "three", "four");
	}
	
	private void testInt(int... numbers){
	   for (int i = 0; i < numbers.length; i++){
		   logger.info("{}", numbers[i]);
	   }
	}
	
	private void testString(String... strings){
		for (int i = 0; i < strings.length; i++){
			logger.info("{}", strings[i]);
		}
	}

}
