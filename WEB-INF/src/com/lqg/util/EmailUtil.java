package com.lqg.util;


import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;



public class EmailUtil {
	@Autowired
	private JavaMailSender mailSender;//ע��Spring E-mail�����ķ����ʼ�����	
	public  String doSend(MessageInfo msg){				
		MimeMessage mimeMessage = mailSender.createMimeMessage();//������Ϣ����
		MimeMessageHelper messageHelper = null;//�������ڷ���HTML��ʽ�ʼ��Ķ���
		try{
			messageHelper = new MimeMessageHelper(mimeMessage,true,"UTF-8");		
			messageHelper.setTo(msg.getTo());//�����ռ��˵�ַ
			messageHelper.setSubject(msg.getSubject());//��������
			messageHelper.setSentDate(msg.getSendDate());//���÷���ʱ��
			messageHelper.setText(msg.getMsg(),true);//�����ʼ����ģ��������ݰ�H		
			JavaMailSenderImpl sender = (JavaMailSenderImpl)mailSender;//�ʼ����Ͷ���	
			sender.send(mimeMessage);
			return "发送成功";
		}catch(Exception ex){
			ex.printStackTrace();
			return "发送失败";
		}	
	}
}
