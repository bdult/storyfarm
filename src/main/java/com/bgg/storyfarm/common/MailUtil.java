package com.bgg.storyfarm.common;

import org.springframework.stereotype.Component;
import java.util.Date;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@Component
public class MailUtil {

	public void sendMail(String receive, String content){
		String content_type = "text/html";
		String smtp = "115.71.237.215";
		String character_set = "UTF-8";
		
		String senderEmail = "admin@rntsmedia.com";
		String senderName = "admin";
		String receiver = "hi11218@naver.com";
		String subject = receive;
		String contents = content;
		
		try
		{
			Properties p = System.getProperties();
			p.put("mail.smtp.host", smtp);
			
			Session session = Session.getDefaultInstance(p, null);
			MimeMessage msg = new MimeMessage(session);
	        msg.setFrom();
			
	        msg.setSentDate(new Date());
	        
	        String sender = senderName + "<" + senderEmail + ">";
	        InternetAddress from = new InternetAddress(sender);
	        msg.setFrom(from);
	        
			InternetAddress to = new InternetAddress(receiver);        
			msg.setRecipient(Message.RecipientType.TO, to);
			
	        msg.setSubject(subject, character_set);
	        
	        msg.setText(contents, character_set);
	        
	        msg.setHeader("Content-Type","text/html");
	        
	        javax.mail.Transport.send(msg);
		}
		catch(AddressException addr_e){
			System.out.println(addr_e.getMessage());
		}
		catch(MessagingException msg_e){
			System.out.println(msg_e.getMessage());
		}
	}
}
