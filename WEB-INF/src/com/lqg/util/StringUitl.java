package com.lqg.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
/**
 * �ַ�����
 * @author Li Qiuguo
 */
public class StringUitl {
	public static Random random = new Random();
	/**
	 * ��ȡ��ǰʱ���ַ�
	 * @return ��ǰʱ���ַ�
	 */
	public static String getStringTime(){
		Date date = new Date();//��ȡ��ǰϵͳʱ��
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSSS");//���ø�ʽ����ʽ
		return sdf.format(date);//���ظ�ʽ�����ʱ��
	}
	/**
	 * ��ɶ�����
	 * @return ������
	 */
	public static String createOrderId(){
		StringBuffer sb = new StringBuffer();//�����ַ����
		sb.append(getStringTime());//���ַ��������ӵ�ǰϵͳʱ��
		for (int i = 0; i < 3; i++) {//������3λ��
			sb.append(random.nextInt(9));//�������ɵ�������ӵ��ַ������
		}
		return sb.toString();//�����ַ�
	}
	/**
	 * ��֤�ַ����Ч��
	 * @param s ��֤�ַ�
	 * @return �Ƿ���Ч�Ĳ���ֵ
	 */
	public static boolean validateString(String s){
		if(s != null && s.trim().length() > 0){//����ַ�Ϊ�շ���true
			return true;
		}
		return false;//�ַ�Ϊ�շ���false
	}
	/**
	 * ��֤����������Ч��
	 * @param f �������
	 * @return �Ƿ���Ч�Ĳ���ֵ
	 */
	public static boolean validateFloat(Float f){
		try {
			if(f != null && f > 0){
				return true;
			}
		} catch (Exception e) {}
		return false;
	}
	//检查int型
	public static boolean validateInt(int f){
		try {
			if(f==(int)f){
				return true;
			}
		} catch (Exception e) {}
		return false;
	}
}
