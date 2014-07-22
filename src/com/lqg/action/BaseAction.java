package com.lqg.action;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;










import com.lqg.dao.product.BookDao;
import com.lqg.dao.product.BookItemDao;
import com.lqg.dao.product.CourseDao;
import com.lqg.dao.profile.ThankDao;
import com.lqg.dao.product.VideoDao;
import com.lqg.dao.product.UploadFileDao;
import com.lqg.dao.profile.CommentDao;
import com.lqg.dao.profile.AnswerDao;
import com.lqg.dao.profile.CollectionDao;
import com.lqg.dao.profile.FocusDao;
import com.lqg.dao.profile.QuestionDao;
import com.lqg.dao.profile.RouteDao;
import com.lqg.dao.user.AdminDao;
import com.lqg.dao.user.ParentDao;
import com.lqg.dao.user.RoomDao;
import com.lqg.dao.user.StudentDao;
import com.lqg.dao.user.TeacherDao;
import com.lqg.model.user.Parent;
import com.lqg.model.user.Teacher;
import com.lqg.model.user.Student;
import com.lqg.model.user.Admin;
import com.lqg.model.product.Book;
import com.lqg.model.product.BookItem;
import com.lqg.model.profile.Comment;
import com.lqg.model.product.Course;
import com.lqg.model.profile.Thank;
import com.lqg.model.product.UploadFile;
import com.lqg.model.product.Video;
import com.opensymphony.xwork2.ActionSupport;
/**
 * »ù±ŸAction¶ÔÏó£¬ÆäËüActionµÄžžÀà
 * @author Li Qiuguo
 */
public class BaseAction extends ActionSupport implements RequestAware,
		SessionAware, ApplicationAware {
	private static final long serialVersionUID = 1L;
	protected Integer id;
	protected Integer[] ids;
	protected int pageNo = 1;
	protected int pageSize = 8;
	
	public static final String LIST = "list";
	public static final String EDIT = "edit";
	public static final String ADD = "add";
	public static final String SELECT = "select";
	public static final String QUERY = "query";
	public static final String LEFT = "left";
	public static final String RIGHT = "right";
	public static final String INDEX = "index";
	public static final String MAIN = "main";
	public static final String MANAGER = "manager";
	public static final String TOP = "top";
	public static final String REG = "reg";
	public static final String USER_LOGIN = "userLogin";
	public static final String ADMIN_LOGIN = "adminLogin";
	public static final String LOGOUT = "logout";
	// »ñÈ¡ÓÃ»§id
	// »ñÈ¡ÓÃ»§¶ÔÏó
	public Teacher getLoginTeacher(){
		if(session.get("teacher") != null){
			return (Teacher) session.get("teacher");
		}
		return null;
	}
	//学生登录
	public Student getLoginStudent(){
		if(session.get("student") != null){
			return (Student) session.get("student");
		}
		return null;
	}
	//家长登录
	public Parent getLoginParent(){
		if(session.get("parent") != null){
			return (Parent) session.get("parent");
		}
		return null;
	}
	// »ñÈ¡¹ÜÀíÔ±id
	// »ñÈ¡¹ÜÀíÔ±¶ÔÏó
	public Admin getLoginAdmin(){
		if(session.get("admin") != null){
			return (Admin) session.get("admin");
		}
		return null;
	}
	
	
	// ×¢ÈëDao
	@Autowired
	protected BookDao bookDao;
	@Autowired
	protected BookItemDao bookItemDao;
	@Autowired
	protected CommentDao commentDao;
	@Autowired
	protected CourseDao courseDao;
	@Autowired
	protected ThankDao thankDao;
	@Autowired
	protected UploadFileDao uploadFileDao;
	@Autowired
	protected VideoDao videoDao;
	
	@Autowired
	protected AdminDao adminDao;
	@Autowired
	protected ParentDao parentDao;
	@Autowired
	protected TeacherDao teacherDao;
	@Autowired
	protected StudentDao studentDao;
	@Autowired
	protected RoomDao roomDao;
	
	//profile
	@Autowired
	protected AnswerDao answerDao;
	@Autowired
	protected CollectionDao collectionDao;
	@Autowired
	protected FocusDao focusDao;
	@Autowired
	protected QuestionDao questionDao;
	@Autowired
	protected RouteDao routeDao;
	
	
	
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
	
	// ŽŠÀí·œ·š
	public String index() throws Exception {
		return INDEX;
	}
	public String manager() throws Exception {
		return MANAGER;
	}
	public String main() throws Exception {
		return MAIN;
	}
	public String add() throws Exception {
		return ADD;
	}
	public String select() throws Exception {
		return SELECT;
	}
	public String execute() throws Exception {
		return SUCCESS;
	}
	public String top() throws Exception {
		return TOP;
	}
	public String left() throws Exception {
		return LEFT;
	}
	public String right() throws Exception {
		return RIGHT;
	}
	public String reg() throws Exception{
		return REG;
	}
	public String query() throws Exception{
		return QUERY;
	}
	// getterºÍsettter·œ·š
	public Integer[] getIds() {
		return ids;
	}
	public void setIds(Integer[] ids) {
		this.ids = ids;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
}
