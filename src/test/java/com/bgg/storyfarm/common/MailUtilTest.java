package com.bgg.storyfarm.common;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:servlet-contextForTest.xml"})
public class MailUtilTest {

	@Autowired
	private MailUtil mailUtil;
	
	@Test
	public void testLegacySendMail() {
		
//		String receiver = "qotkwk@gmail.com";
		String receiver = "dw.jung@rntsmedia.com";
		String subject = "운호 테스트";
		String contents = "메일보내기";
		
		mailUtil.sendMail(subject, contents, receiver);
	}
	
	@Test
	public void testSendMail() {
		
		String senderEmail = "admin@rntsmedia.com";
		String senderName = "관리자";
		String receiver = "qotkwk@gmail.com";
		String subject = "제목 테스트";
		String contents = "울릉도 동남쪽 뱃길따라 200리";
		
		mailUtil.sendMail(senderName, senderEmail, subject, contents, receiver);
	}

}
