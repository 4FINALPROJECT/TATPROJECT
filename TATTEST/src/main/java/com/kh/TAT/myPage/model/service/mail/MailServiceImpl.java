package com.kh.TAT.myPage.model.service.mail;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

	@Service
	public class MailServiceImpl implements MailService {
	    // org.springframework.mail.javamail.JavaMailSender

		@Autowired
		private JavaMailSender javaMailSender;
	 
	    public void setJavaMailSender(JavaMailSender javaMailSender) {
	        this.javaMailSender = javaMailSender;
	    }
	 
	    @Override
	    public boolean send(String subject, String text, String from, String to) {
	        // javax.mail.internet.MimeMessage
	        MimeMessage message = javaMailSender.createMimeMessage();
	 
	        System.out.println("성공");
	        
	        try {
	            // org.springframework.mail.javamail.MimeMessageHelper
	            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
	            helper.setSubject(subject);
	            helper.setText(text, true);
	            helper.setFrom(from);
	            helper.setTo(to);
	 
	            javaMailSender.send(message);
	            
	            System.out.println("성공");
	            
	            return true;
	        } catch (MessagingException e) {
	            e.printStackTrace();
	        }
	        return false;
	    }


	

}
