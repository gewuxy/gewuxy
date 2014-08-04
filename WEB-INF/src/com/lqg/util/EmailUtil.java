package com.lqg.util;


import javax.mail.internet.MimeMessage;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;



public class EmailUtil {
	private JavaMailSender mailSender;//ע��Spring E-mail�����ķ����ʼ�����
	public JavaMailSender getMailSender() {
		return mailSender;
	}
	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	public  void doSend(MessageInfo msg){				
		MimeMessage mimeMessage = mailSender.createMimeMessage();//������Ϣ����
		MimeMessageHelper messageHelper = null;//�������ڷ���HTML��ʽ�ʼ��Ķ���
		try{
			messageHelper = new MimeMessageHelper(mimeMessage,true,"UTF-8");			
			messageHelper.setTo(msg.getTo());//�����ռ��˵�ַ
			messageHelper.setSubject(msg.getSubject());//��������
			messageHelper.setSentDate(msg.getSendDate());//���÷���ʱ��
			messageHelper.setText(msg.getMsg(),true);//�����ʼ����ģ��������ݰ�HTML��ʽ	
			
		}catch(Exception ex){
			ex.printStackTrace();
		}	
		JavaMailSenderImpl sender = (JavaMailSenderImpl)mailSender;//�ʼ����Ͷ���			
		sender.send(mimeMessage);
	}
}
