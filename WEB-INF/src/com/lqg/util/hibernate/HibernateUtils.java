package com.lqg.util.hibernate;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
/**
 * Hibernate�����࣬���ڻ�ȡSession
 * @author Li Qiuguo
 */
public class HibernateUtils {
	// ����SessionFactory����
	private static SessionFactory factory = null;
	// ʵ��ThreadLocal����
	private static final ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();
	// ʵ��Configuration����
	private static Configuration cfg = new Configuration();
	// ��̬��
	static {
		try {
			// ����Hibernate�����ļ�
			cfg.configure();
			// ʵ��SessionFactory
			factory = cfg.buildSessionFactory();
		} catch (HibernateException e) {
			e.printStackTrace(); // ��ӡ�쳣��Ϣ
		}
	}
	/**
	 * ��ȡSession����
	 * @return Session����
	 */
	public static Session getSession() {
		// ��threadLocal�л�ȡSession
		Session session = (Session) threadLocal.get();
		// �ж�session�Ƿ�Ϊ�ջ�δ���ڿ���״̬
		if (session == null || !session.isOpen()) {
			if (factory == null) {
				rebuildSessionFactory();
			}
			// ��factory����һ��Session
			session = (factory != null) ? factory.openSession() : null;
			threadLocal.set(session); // ��session����threadLocal��
		}
		return session;
	}
	/**
	 * ��ȡSessionFactory����
	 * @return SessionFactory����
	 */
	public static SessionFactory getSessionFactory() {
		return factory;
	}
	/**
	 * �ر�Session
	 * @param session����
	 */
	public static void closeSession() {
		// ��threadLocal�л�ȡSession
		Session session = (Session) threadLocal.get();
		// �Ƴ�threadLocal�еĶ���
		threadLocal.remove();
		if (session != null) {
			if (session.isOpen()) {
				session.close(); // �ر�Session
			}
		}
	}
	/**
	 * ����SessionFactory����
	 */
	public static void rebuildSessionFactory() {
		try {
			// ����Hibernate�����ļ�
			cfg.configure();
			// ʵ��SessionFactory
			factory = cfg.buildSessionFactory();
		} catch (Exception e) {
			e.printStackTrace(); // ��ӡ�쳣��Ϣ
		}
	}
}
