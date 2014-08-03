package com.lqg.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;



/**
 * Description:
 * <br/>Copyright (C), 2014, Qiuguo Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Qiuguo lee
 * @version  1.0
 */
public class IndexAction extends ActionSupport implements RequestAware,
		SessionAware, ApplicationAware{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String HOME = "home";
	public static final String ABOUT = "about";
	public static final String ADVISE = "advise";
	public static final String FAQ = "faq";
	private static final String JOINUS = "joinUs";
	private static final String REPASSWORD = "repassword";
	private static final String HOUDUAN = "houduan";
	private static final String QIANDUAN = "qianduan";
	private static final String JOB_NEIRONG = "job_neirong";
	private static final String JOB_INTERN = "job_intern";
	public String home() throws Exception {
		return HOME;
	}
	public String about() throws Exception {
		return ABOUT;
	}
	public String advise() throws Exception {
		return ADVISE;
	}
	public String faq() throws Exception {
		return FAQ;
	}
	
	public String joinUs() throws Exception {
		return JOINUS;
	}
	public String rePassword() throws Exception {
		return REPASSWORD;
	}
	public String houduan() throws Exception {
		return HOUDUAN;
	}
	public String qianduan() throws Exception {
		return QIANDUAN;
	}
	public String job_neirong() throws Exception {
		return JOB_NEIRONG;
	}
	public String job_intern() throws Exception {
		return JOB_INTERN;
	}
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	
	
	
	
	
	
	// MapÀàÐÍµÄrequest
		protected Map<String, Object> request;
		// MapÀàÐÍµÄsession
		protected Map<String, Object> session;
		// MapÀàÐÍµÄapplication
		protected Map<String, Object> application;
		@Override
		public void setRequest(Map<String, Object> request) {
			// »ñÈ¡MapÀàÐÍµÄrequestž³Öµ
			this.request = request;
		}
		@Override
		public void setApplication(Map<String, Object> application) {
			// »ñÈ¡MapÀàÐÍµÄapplicationž³Öµ
			this.application = application;
		}
		@Override
		public void setSession(Map<String, Object> session) {
			// »ñÈ¡MapÀàÐÍµÄsessionž³Öµ
			this.session = session;
		}

}
