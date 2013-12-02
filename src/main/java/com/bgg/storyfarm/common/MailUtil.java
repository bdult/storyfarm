package com.bgg.storyfarm.common;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
public class MailUtil {

	Logger log = LoggerFactory.getLogger(getClass());

	String CHARSET = "UTF-8";
	String SMTP = "115.71.237.215";
	
	/** Unho legacy by Unho<br />
	 * - subject(제목)<br />
	 * - content(내용)<br />
	 * - receiver(받는사람의 이메일 주소)<br />
	 */
	public void sendMail(String subject, String contents, String receiver) {
		
		//setting
		String senderEmail = "ozworld@rntsmedia.com";
		String senderName = "오즈월드 관리자";

		this.sendMail(senderName, senderEmail, subject, contents, receiver);
		
	}
	
	/** 파라미터<br />
	 * - senderName(보내는 사람)<br />
	 * - senderEmail(보내는 사람의 이메일 주소)<br />
	 * - subject(제목)<br />
	 * - content(내용)<br />
	 * - receiver(받는사람의 이메일 주소)<br />
	 */
	public void sendMail(String senderName, String senderEmail, String subject, String contents, String receiver) {
		
		try {
			Properties p = System.getProperties();
			p.put("mail.smtp.host", SMTP);
			Session session = Session.getDefaultInstance(p, null);
			MimeMessage msg = new MimeMessage(session);
			
			msg.setFrom();
			//보낸날짜
			msg.setSentDate(new Date());
			//보낸사람 ( 예 : 관리자<admin@rntsmedia.com> )
			msg.setFrom(new InternetAddress(senderEmail, senderName, CHARSET));
			//받는사람
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(receiver));
			//제목
			msg.setSubject(subject, CHARSET);
			//내용
			msg.setText(contents, CHARSET);
			msg.setHeader("Content-Type", "text/html");
			
			javax.mail.Transport.send(msg);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
