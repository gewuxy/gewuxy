package com.lqg.util;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/**
 * ���͹�����
 * @author Li Qiuguo
 */
public class GenericsUtils {
	/**
	 * ��ȡ���͵�����
	 * @param clazz
	 * @return Class
	 */
	@SuppressWarnings("unchecked")
	public static Class getGenericType(Class clazz){
		Type genType = clazz.getGenericSuperclass();//�õ����͸��� 
		if (!(genType instanceof ParameterizedType)) {    
			             return Object.class;    
		}
		Type[] types = ((ParameterizedType) genType).getActualTypeArguments();
		
		if (!(types[0] instanceof Class)) {
            return Object.class;   
        } 
		return (Class) types[0];
	}
	/**
	 * ��ȡ����������
	 * @param clazz
	 * @return �����
	 */
	@SuppressWarnings("unchecked")
	public static String getGenericName(Class clazz){
		return clazz.getSimpleName();
	}
}
