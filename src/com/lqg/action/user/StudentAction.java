package com.lqg.action.user;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lqg.action.BaseAction;
import com.lqg.model.user.Student;
import com.lqg.util.AppException;
import com.opensymphony.xwork2.ModelDriven;
/**
 * 锟剿匡拷Action
 * @author Li Qiuguo
 */
@Scope("prototype")
@Controller("studentAction")
public class StudentAction extends BaseAction implements ModelDriven<Student>{
	private static final long serialVersionUID = 1L;
	private static final String ACCOUNT = "account";
	private static final String CLASS = "class";
	public String login() throws Exception{
		return USER_LOGIN;
	}
	/**
	 * 锟矫伙拷注锟斤拷
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception{
		boolean unique = studentDao.isUnique(student.getEmail());//锟叫讹拷锟矫伙拷锟斤拷锟角凤拷锟斤拷锟�
		if(unique){//锟斤拷锟斤拷没锟斤拷锟斤拷锟斤拷
			studentDao.save(student);//锟斤拷锟斤拷注锟斤拷锟斤拷息
			return USER_LOGIN;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
		}else{
			throw new AppException("锟斤拷锟矫伙拷锟斤拷锟斤拷锟�);//锟斤拷锟津返伙拷页锟斤拷锟斤拷锟斤拷锟较�");
		}
	}
	/**
	 * 锟矫伙拷锟斤拷录 
	 * @return
	 * @throws Exception
	 */
	public String logon() throws Exception{
		//锟斤拷证锟矫伙拷锟斤拷锟斤拷锟斤拷锟斤拷欠锟斤拷锟饺�
		Student loginStudent = studentDao.login(student.getEmail(), student.getPassword());
		if(loginStudent != null){//锟斤拷锟酵拷锟斤拷锟街�
			session.put("student", loginStudent);//锟斤拷锟斤拷录锟斤拷员锟斤拷息锟斤拷锟斤拷锟斤拷Session锟斤拷
		}else{//锟斤拷证失锟斤拷
			addFieldError("", "锟矫伙拷锟斤拷锟斤拷锟斤拷氩伙拷锟饺凤拷锟�");//锟斤拷锟截达拷锟斤拷锟斤拷息
			return USER_LOGIN;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
		}
		return INDEX;//锟斤拷锟斤拷锟斤拷站锟斤拷页
	}
	/**
	 * 锟矫伙拷锟剿筹拷
	 * @return String
	 * @throws Exception
	 */
	public String logout() throws Exception{
		if(session != null && session.size() > 0){
			session.clear();
		}
		return LOGOUT;
	}
	public String reg()throws Exception{
		return "input";
	}
	public String home() throws Exception{
		
		if( session.get("student")!= null){
			return INDEX;//锟斤拷锟斤拷锟斤拷站锟斤拷页
		}else{//锟斤拷证失锟斤拷
			addFieldError("", "锟矫伙拷锟斤拷锟斤拷锟斤拷氩伙拷锟饺凤拷锟�");//锟斤拷锟截达拷锟斤拷锟斤拷息
			return USER_LOGIN;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
		}
		
	}
	
public String account() throws Exception{
		
	if( session.get("student")!= null){
		return ACCOUNT;//锟斤拷锟斤拷锟斤拷站锟斤拷页
	}else{//锟斤拷证失锟斤拷
		addFieldError("", "锟矫伙拷锟斤拷锟斤拷锟斤拷氩伙拷锟饺凤拷锟�");//锟斤拷锟截达拷锟斤拷锟斤拷息
		return USER_LOGIN;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
	}
	}
public String myClass() throws Exception{
	
	if( session.get("student")!= null){
		return CLASS;//锟斤拷锟斤拷锟斤拷站锟斤拷页
	}else{//锟斤拷证失锟斤拷
		addFieldError("", "锟矫伙拷锟斤拷锟斤拷锟斤拷氩伙拷锟饺凤拷锟�");//锟斤拷锟截达拷锟斤拷锟斤拷息
		return USER_LOGIN;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
	}
	}
	// 锟斤拷锟斤拷员
	private Student student = new Student();
	// 确锟斤拷锟斤拷锟斤拷
	private String repassword;
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	@Override
	public Student getModel() {
		return student;
	}
	
}
