package com.lqg.action.user;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lqg.action.BaseAction;
import com.lqg.model.user.Parent;
import com.lqg.model.user.Student;
import com.lqg.model.user.Teacher;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
/**
 * 锟剿匡拷Action
 * @author Li Qiuguo
 */
@Scope("prototype")
@Controller("userAction")
public class UserAction extends BaseAction implements ModelDriven<Student>{
	private static final long serialVersionUID = 1L;
	private static final String STUDENT_HOME = "studentHome";
	private static final String PARENT_HOME = "parentHome";
	private static final String TEACHER_HOME = "teacherHome";
	private static final String STUDENT_ACCOUNT = "studentAccount";
	private static final String PARENT_ACCOUNT = "parentAccount";
	private static final String TEACHER_ACCOUNT = "teacherAccount";
	private static final String TEACHER_CLASS = "teacherClass";
	private static final String PARENT_CLASS = "parentClass";
	private static final String STUDENT_CLASS = "studentClass";
	private static final String PREPAGE = "prePage";
	private static final String REGISTERERROR = "registerError";
	private static final String LOGONERROR = "logonError";
	private String prePage;
	private String erroMessage;
	public String login() throws Exception{
		return USER_LOGIN;
	}
	/**
	 * 锟矫伙拷注锟斤拷
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception{
		if(category.equals("student")){
		boolean unique = studentDao.isUnique(student.getEmail());//锟叫讹拷锟矫伙拷锟斤拷锟角凤拷锟斤拷锟�
		if(unique){//锟斤拷锟斤拷没锟斤拷锟斤拷锟斤拷
			studentDao.save(student);//锟斤拷锟斤拷注锟斤拷锟斤拷息
			return USER_LOGIN;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
		}else{
			setErroMessage("用户邮箱已经被占有，请另选其它邮箱注册");
			return REGISTERERROR;
		}}
		else if(category.equals("teacher")){
			boolean unique = teacherDao.isUnique(student.getEmail());//锟叫讹拷锟矫伙拷锟斤拷锟角凤拷锟斤拷锟�
			if(unique){//锟斤拷锟斤拷没锟斤拷锟斤拷锟斤拷
				Teacher teacher=new Teacher();
				teacher.setUsername(student.getUsername());
				teacher.setEmail(student.getEmail());
				teacher.setPassword(student.getPassword());
				teacherDao.save(teacher);//锟斤拷锟斤拷注锟斤拷锟斤拷息
				return USER_LOGIN;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
			}else{
				setErroMessage("用户邮箱已经被占有，请另选其它邮箱注册");
				return REGISTERERROR;
			}}
		else if (category.equals("parent")){
			boolean unique = parentDao.isUnique(student.getEmail());//锟叫讹拷锟矫伙拷锟斤拷锟角凤拷锟斤拷锟�
			if(unique){//锟斤拷锟斤拷没锟斤拷锟斤拷锟斤拷
				Parent parent=new Parent();
				parent.setUsername(student.getUsername());
				parent.setEmail(student.getEmail());
				parent.setPassword(student.getPassword());
				parentDao.save(parent);//锟斤拷锟斤拷注锟斤拷锟斤拷息
				return USER_LOGIN;//锟斤拷锟截伙拷员锟斤拷录页锟斤拷
			}else{
				setErroMessage("用户邮箱已经被占有，请另选其它邮箱注册");
				return REGISTERERROR;
			}}
		else {
			setErroMessage("用户邮箱已经被占有，请另选其它邮箱注册");
			return REGISTERERROR;
		}

	}
	/**
	 * 锟矫伙拷锟斤拷录 
	 * @return
	 * @throws Exception
	 */
	public String logon() throws Exception{
		//锟斤拷证锟矫伙拷锟斤拷锟斤拷锟斤拷锟斤拷欠锟斤拷锟饺�
		Student logonstudent=studentDao.login(student.getEmail(), student.getPassword());
		Parent logonparent=parentDao.login(student.getEmail(), student.getPassword());
		Teacher logonteacher=teacherDao.login(student.getEmail(), student.getPassword());
		if(logonstudent!=null){
			session.put("user", logonstudent);//将学生放入user 的session
			session.put("type", "student");
			//获取跳转到登陆界面之前的页面地址，由拦截器提供
	        prePage = (String) session.get("prePage");
	        //清除session中的数据
	        //session.remove("prePage");
	        if (prePage == null) {
	            //不是拦截器跳转到登陆页面的，直接访问的登陆页面
	            return STUDENT_HOME;
	        } else {
	        	 return PREPAGE;
	        }
			
			}
		else if(logonparent!=null){
			session.put("user", logonparent);//将学生放入user 的session
			session.put("type", "parent");
			//获取跳转到登陆界面之前的页面地址，由拦截器提供
	        prePage = (String) session.get("prePage");
	        //清除session中的数据
	       // session.remove("prePage");
	        if (prePage == null) {
	            //不是拦截器跳转到登陆页面的，直接访问的登陆页面
	            return PARENT_HOME;
	        } else {
	            return PREPAGE;
	        }
		}
		else if(logonteacher!=null){
			session.put("user", logonteacher);//将学生放入user 的session
			session.put("type", "teacher");
			//获取跳转到登陆界面之前的页面地址，由拦截器提供
	        prePage = (String) session.get("prePage");
	        //清除session中的数据
	        //session.remove("prePage");
	        if (prePage == null) {
	            //不是拦截器跳转到登陆页面的，直接访问的登陆页面
	            return TEACHER_HOME;
	        } else {
	            return PREPAGE;
	        }
		}
		else {
			setErroMessage("密码和邮箱不一致");
			return LOGONERROR;
		}
	}
	/**
	 * 锟矫伙拷锟剿筹拷
	 * @return String
	 * @throws Exception
	 */
	public String logout() throws Exception{
		if(session != null && session.size() > 0){
			session.remove("user");
			session.remove("type");
		}
		return LOGOUT;
	}
	
	public String home() throws Exception{
		
		if(session.get("user")!= null){
			
			 if(session.get("type")=="student"){
				 return STUDENT_HOME;
			 }
			 else if(session.get("type")=="parent"){
				 return PARENT_HOME;
			 }
			 else if (session.get("type")=="teacher"){
				 return TEACHER_HOME;
			 }
			 else {
				 return ERROR;
			 }
			
		}
		
		else{
			return ERROR;
		}
		
	}
	
public String account() throws Exception{
		
	if(session.get("user")!= null){
		
		 if(session.get("type")=="student"){
			 return STUDENT_ACCOUNT;
		 }
		 else if(session.get("type")=="parent"){
			 return PARENT_ACCOUNT;
		 }
		 else if (session.get("type")=="teacher"){
			 return TEACHER_ACCOUNT;
		 }
		 else {
			 return ERROR;
		 }
		
	}
	
		else{
			return ERROR;
		}
	}
public String myClass() throws Exception{
	
	if(session.get("user")!= null){
		
		 if(session.get("type")=="student"){
			 return STUDENT_CLASS;
		 }
		 else if(session.get("type")=="parent"){
			 return PARENT_CLASS;
		 }
		 else if (session.get("type")=="teacher"){
			 return TEACHER_CLASS;
		 }
		 else {
			 return ERROR;		
		 }
	}
	
		else{
			return ERROR;
		}
	}
	// 锟斤拷锟斤拷员
	private Student student = new Student();
	// 确锟斤拷锟斤拷锟斤拷
	private String repassword;
        //登录者类型
	private String category;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPrePage() {
		return prePage;
	}
	public void setPrePage(String prePage) {
		this.prePage = prePage;
	}
	@Override
	public Student getModel() {
		return student;
	}
	public String getErroMessage() {
		return erroMessage;
	}
	public void setErroMessage(String erroMessage) {
		this.erroMessage = erroMessage;
	}
	
}
