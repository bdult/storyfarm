package com.bgg.storyfarm.dao;

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

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:servlet-contextForTest.xml"})
public class ContentsDaoTest {

	Logger logger = LoggerFactory.getLogger(ContentsDaoTest.class);
	
	@Autowired
	private ContentsDao contentsDao;
	
	@Autowired
	private ConsoleUtil consoleUtil;
	
	@Test
	public void testList() {
		List<Map<String, Object>> contents = contentsDao.list();
		logger.info( consoleUtil.prettyConsoleLog(contents));
	}
	
	

}
