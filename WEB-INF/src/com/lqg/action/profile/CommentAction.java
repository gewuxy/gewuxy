package com.lqg.action.profile;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lqg.action.BaseAction;
import com.lqg.model.PageModel;
import com.lqg.model.profile.Comment;
import com.lqg.model.user.Parent;
import com.lqg.model.user.Student;
import com.lqg.model.user.Teacher;
import com.lqg.util.StringUitl;
import com.opensymphony.xwork2.ModelDriven;
/**
 * 锟斤拷品Action
 * @author Li Qiuguo
 */
@Scope("prototype")
@Controller("commentAction")
public class CommentAction extends BaseAction implements ModelDriven<Comment>{
	private static final long serialVersionUID = 1L;

	private static final String QUESTION = "question";

	private static final String ANSWER = "answer";

	private static final String THANK = "thank";
	/**
	 * 锟斤拷锟絠d锟介看锟斤拷品锟斤拷息(锟介看锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟�
	 * @return String
	 * @throws Exception
	 */
	public String select() throws Exception {
		if(comment.getId() != null && comment.getId() > 0){
			comment = commentDao.get(comment.getId());
			commentDao.update(comment);
		}
		return SELECT;
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷id锟斤拷询锟斤拷锟斤拷锟斤拷品锟斤拷息
	 * @return String
	 * @throws Exception
	 */
	public String getByQuestionId() throws Exception{
		if(comment.getQuestion().getId() != null){
			String where = "where questionId = ?";
			Object[] queryParams = {comment.getQuestion().getId()};
			pageModel = commentDao.find(pageNo, pageSize, where, queryParams);
		}
		return LIST;
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷id锟斤拷询锟斤拷锟斤拷锟斤拷品锟斤拷息
	 * @return String
	 * @throws Exception
	 */
	public String getByAnswerId() throws Exception{
		if(comment.getAnswer().getId() != null){
			String where = "where answerId = ?";
			Object[] queryParams = {comment.getAnswer().getId()};
			pageModel = commentDao.find(pageNo, pageSize, where, queryParams);
		}
		return LIST;
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷id锟斤拷询锟斤拷锟斤拷锟斤拷品锟斤拷息
	 * @return String
	 * @throws Exception
	 */
	public String getByThankId() throws Exception{
		if(comment.getThank().getId() != null){
			String where = "where thankId = ?";
			Object[] queryParams = {comment.getThank().getId()};
			pageModel = commentDao.find(pageNo, pageSize, where, queryParams);
		}
		return LIST;
	}
	/**
	 * 保存question的comment
	 * @return
	 * @throws Exception
	 */
	public String saveByQuestion() throws Exception{
		//如果商品类别和商品类别ID不为空，则保存商品类别信息
				if(comment.getQuestion() != null && comment.getQuestion().getId() != null){
					comment.setQuestion(questionDao.load(comment.getQuestion().getId()));
					comment.setCreateTime(new Date());
					 if(session.get("type")=="student"){
						 Student student=(Student)session.get("user");
						 comment.setStudent(student);
					 }
					 if(session.get("type")=="teacher"){
						Teacher teacher=(Teacher)session.get("user");
						 comment.setTeacher(teacher);
					 }
					 if(session.get("type")=="parent"){
						 Parent parent=(Parent)session.get("user");
						comment.setParent(parent);
					 }
					
				}			
		
		commentDao.saveOrUpdate(comment);//锟斤拷锟斤拷锟斤拷锟斤拷息
		return QUESTION;//锟斤拷锟斤拷锟斤拷锟斤拷斜锟侥诧拷锟揭凤拷锟斤拷
	}
	
	/**
	 * 保存answer的comment
	 * @return
	 * @throws Exception
	 */
	public String saveByAnswer() throws Exception{
		//如果商品类别和商品类别ID不为空，则保存商品类别信息
				if(comment.getAnswer() != null && comment.getAnswer().getId() != null){
					comment.setAnswer(answerDao.load(comment.getAnswer().getId()));
					comment.setCreateTime(new Date());
					if(session.get("type")=="student"){
						 Student student=(Student)session.get("user");
						 comment.setStudent(student);
					 }
					 if(session.get("type")=="teacher"){
						Teacher teacher=(Teacher)session.get("user");
						 comment.setTeacher(teacher);
					 }
					 if(session.get("type")=="parent"){
						 Parent parent=(Parent)session.get("user");
						comment.setParent(parent);
					 }
					
				}			
		
		commentDao.saveOrUpdate(comment);//锟斤拷锟斤拷锟斤拷锟斤拷息
		return ANSWER;//锟斤拷锟斤拷锟斤拷锟斤拷斜锟侥诧拷锟揭凤拷锟斤拷
	}
	/**
	 * 保存question的comment
	 * @return
	 * @throws Exception
	 */
	public String saveByThank() throws Exception{
		//如果商品类别和商品类别ID不为空，则保存商品类别信息
				if(comment.getThank() != null && comment.getThank().getId() != null){
					comment.setThank(thankDao.load(comment.getThank().getId()));
					comment.setCreateTime(new Date());
					if(session.get("type")=="student"){
						 Student student=(Student)session.get("user");
						 comment.setStudent(student);
					 }
					 if(session.get("type")=="teacher"){
						Teacher teacher=(Teacher)session.get("user");
						 comment.setTeacher(teacher);
					 }
					 if(session.get("type")=="parent"){
						 Parent parent=(Parent)session.get("user");
						comment.setParent(parent);
					 }
					
				}			
		
		commentDao.saveOrUpdate(comment);//锟斤拷锟斤拷锟斤拷锟斤拷息
		return THANK;//锟斤拷锟斤拷锟斤拷锟斤拷斜锟侥诧拷锟揭凤拷锟斤拷
	}
	/**
	 * 锟斤拷品锟斤拷锟斤拷
	 * @return
	 * @throws Exception
	 */
	public String findNewComment() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("createTime", "desc");//为Map锟斤拷锟较革拷值
		pageModel = commentDao.find(1, 5, orderby );//执锟叫诧拷锟揭凤拷锟斤拷
		return "list";//锟斤拷锟斤拷锟斤拷品锟叫憋拷页锟斤拷
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷品
	 * @return
	 * @throws Exception
	 */
	public String findThankComment() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("thankCount", "desc");//为Map锟斤拷锟较革拷值
		pageModel = commentDao.find(1, 5, orderby );//执锟叫诧拷锟揭凤拷锟斤拷
		return "list";//锟斤拷锟斤拷锟斤拷品锟叫憋拷页锟斤拷
	}
	/**
	 * 锟狡硷拷锟斤拷品
	 * @return
	 * @throws Exception
	 */
	public String findCommendComment() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("createTime", "desc");//为Map锟斤拷锟较革拷值
		String where = "where recommended = ?";//锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟�
		Object[] queryParams = {true};//锟斤拷锟矫诧拷锟斤拷值
		pageModel = commentDao.find(where, queryParams, orderby, 1, 5);//执锟叫诧拷询锟斤拷锟斤拷
		return "list";//锟斤拷锟斤拷锟斤拷品锟叫憋拷页锟斤拷
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷品
	 * @return
	 * @throws Exception
	 */
	public String findEnjoyComment() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("browserTimes", "desc");//为Map锟斤拷锟较革拷值
		pageModel = commentDao.find(1, 5, orderby );//执锟叫诧拷锟揭凤拷锟斤拷
		return "list";//锟斤拷锟斤拷锟斤拷品锟叫憋拷页锟斤拷
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷模锟斤拷锟窖�
	 * @return String
	 * @throws Exception
	 */
	public String findByContent() throws Exception {
		if(comment.getContent() != null){
			String where = "where name like ?";//锟斤拷询锟斤拷锟斤拷锟斤拷锟斤拷锟�
			Object[] queryParams = {"%" + comment.getContent() + "%"};//为锟斤拷锟斤拷值
			pageModel = commentDao.find(pageNo, pageSize, where, queryParams );//执锟叫诧拷询锟斤拷锟斤拷
		}
		return LIST;//锟斤拷锟斤拷锟叫憋拷锟斤拷页
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷锟窖�
	 * @return String
	 * @throws Exception
	 */
	public String findByBrowseTimes() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("browseTimes", "desc");//为Map锟斤拷锟较革拷值
		pageModel = commentDao.find(1, 8, orderby );//执锟叫诧拷锟揭凤拷锟斤拷
		return "list";//锟斤拷锟斤拷product_click_list.jsp页锟斤拷
	}
	/**
	 * 锟斤拷锟狡硷拷锟斤拷询
	 * @return String
	 * @throws Exception
	 */
	public String findByCommend() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("thankCount", "desc");//为Map锟斤拷锟较革拷值
		String where = "where recommended = ?";//锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟�
		Object[] queryParams = {true};//锟斤拷锟矫诧拷锟斤拷值
		pageModel = commentDao.find(where, queryParams, orderby, pageNo, pageSize);//执锟叫诧拷询锟斤拷锟斤拷
		return "findList";//锟斤拷锟斤拷product_find_list.jsp页锟斤拷
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷锟斤拷询
	 * @return String
	 * @throws Exception
	 */
	public String findByThankCount() throws Exception{
		Map<String, String> orderby = new HashMap<String, String>();//锟斤拷锟斤拷Map锟斤拷锟斤拷
		orderby.put("thankCount", "desc");//为Map锟斤拷锟较革拷值
		pageModel = commentDao.find(1, 6, orderby );//执锟叫诧拷询锟斤拷锟斤拷
		return "findList";//锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷品锟叫憋拷
	}
	
	
	/**
	 * 锟斤拷锟斤拷锟狡�
	 */
	@Override
	public String add() throws Exception {
		return INPUT;
	}
	
	/**
	 * 锟斤拷询锟斤拷品
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception{
		pageModel = commentDao.find(pageNo, pageSize);//锟斤拷锟矫癸拷锟斤拷锟侥诧拷询锟斤拷锟斤拷
		return LIST;//锟斤拷锟截猴拷台锟斤拷品锟叫憋拷页锟斤拷
	}
	/**
	 * 锟洁辑锟斤拷品
	 * @return String
	 * @throws Exception
	 */
	public String edit() throws Exception{
		this.comment = commentDao.get(comment.getId());//执锟叫凤拷装锟侥诧拷询锟斤拷锟斤拷
		return EDIT;//锟斤拷锟斤拷锟斤拷品锟斤拷息锟洁辑页锟斤拷
	}
	/**
	 * 删锟斤拷锟斤拷品
	 * @return String
	 * @throws Exception
	 */
	public String del() throws Exception{
		commentDao.delete(comment.getId());//执锟斤拷删锟斤拷锟斤拷锟�
		return list();//锟斤拷锟斤拷锟斤拷品锟叫憋拷锟斤拷曳锟斤拷锟�
	}
	
	/**
	 * 锟斤拷证锟斤拷品锟斤拷息锟角凤拷锟斤拷效
	 */
	public void validateSave() {
		if(!StringUitl.validateString(comment.getContent())){
			addFieldError("name", "没有写内容");
		}
	}


	// 锟斤拷品锟斤拷锟斤拷
	private Comment comment = new Comment();
	
	// 锟斤拷锟斤拷锟斤拷锟�
	private Map<Integer, String> map;
	// 锟斤拷页锟斤拷锟�
	private PageModel<Comment> pageModel;
	
	@Override
	public Comment getModel() {
		return comment;
	}
	public Map<Integer, String> getMap() {
		return map;
	}
	public void setMap(Map<Integer, String> map) {
		this.map = map;
	}
	public PageModel<Comment> getPageModel() {
		return pageModel;
	}
	public void setPageModel(PageModel<Comment> pageModel) {
		this.pageModel = pageModel;
	}
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
}
