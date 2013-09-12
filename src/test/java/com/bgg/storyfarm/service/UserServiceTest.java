package com.bgg.storyfarm.service;

import static org.hamcrest.CoreMatchers.*;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.*;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import com.bgg.storyfarm.dao.UserDao;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:servlet-contextForTest.xml"})
public class UserServiceTest {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private UserService userService;
	
	@Autowired
	private UserDao userDao;
	
	@Before
	public void before() {
		logger.info("==========================");
		logger.info("모든 JUNIT 테스트 시작 전 실행 됩니다.");
		logger.info("==========================");
	}

	@After
	public void after(){
		logger.info("==========================");
		logger.info("모든 JUNIT 테스트 종료 후 실행 됩니다.");
		logger.info("==========================");
	}
	
	@Test
	public void testLoginCheck(){
		logger.info("로그인 체크 테스트 입니다.");

		//given
	    Map<String, Object> userList = new HashMap<String, Object>();
	    userList.put("id", "test");
	    userList.put("pwd", "123");
	    userList.put("role", "1");
	    
		//when
	    HashMap<String, String> sessionMap = (HashMap<String, String>)userService.detail(userList);
	    
	    //than
	    assertThat(sessionMap, is(notNullValue()));
		assertThat(sessionMap.get("MEMBER_ID"), is("test"));
		assertThat(sessionMap.get("MEMBER_PW"), is("123"));
	    
	}
	
	@Test
	public void testUserCreate(){
		logger.info("회원가입 테스트 입니다.");

		//given
		Map<String, Object> userDTO = new HashMap<String,Object>();
		userDTO.put("member_id", "test12");
		userDTO.put("member_nm", "test1");
		userDTO.put("member_pw", "123");
		userDTO.put("member_email", "qwe@naver.com");
		userDTO.put("member_tel", "010-1111-1111");
		userDTO.put("member_addr_1", "서울시");
		userDTO.put("member_addr_2", "123호");
		
		//when
		userService.insertUser(userDTO);
		
		//than
		assertNotNull(userDTO);
		logger.info("{}", userDTO);
	}


	@Test
	public void testUpdateUser() {
		logger.info("회원수정 테스트 입니다.");

		//given
		String id = "test12";

		Map<String, Object> userDTO = new HashMap<String, Object>();
		userDTO.put("id", id);
		userDTO.put("name", "굿굿");
		userDTO.put("pwd", "1234");
		userDTO.put("role", "2");
		
		//when
		int result = userDao.updateUser(userDTO);
		
		//than
		assertNotNull(userDTO);
		assertThat(result, is(not(0)));
		logger.info("{}", userDTO);
	}
	
}
	