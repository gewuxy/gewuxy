package com.lqg.action.profile;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lqg.action.BaseAction;
import com.lqg.model.PageModel;
import com.lqg.model.profile.Question;
import com.lqg.model.user.Parent;
import com.lqg.model.user.Student;
import com.lqg.model.user.Teacher;
import com.opensymphony.xwork2.ModelDriven;
/**
 * 锟斤拷品锟斤拷锟紸ction锟斤拷锟斤拷
 * @author Li Qiuguo
 *
 */
@Scope("prototype")
@Controller("questionAction")
public class QuestionAction extends BaseAction implements ModelDriven<Question>{
	private static final long serialVersionUID = 1L;
	private static final String QUESTION = "question";
	private static final String QUESTIONS = "questions";
	private static final String MOREQUESTIONS = "moreQuestions";
	private static final String LIMITEDQUESTIONS = "limitedQuestions";
	private Question question = new Question();
	@Override
	public Question getModel() {
		return question;
	}
	
	@Override
	public String add() throws Exception {
		
		return INPUT;
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception{
		//如果商品类别和商品类别ID不为空，则保存商品类别信息
				if(question.getVideo() != null && question.getVideo().getId() != null){
					question.setVideo(videoDao.load(question.getVideo().getId()));
					question.setCreateTime(new Date());

					 if(session.get("type")=="student"){
						 Student student=(Student)session.get("user");
						 question.setStudent(student);
					 }
					 if(session.get("type")=="teacher"){
						Teacher teacher=(Teacher)session.get("user");
						 question.setTeacher(teacher);
					 }
					 if(session.get("type")=="parent"){
						 Parent parent=(Parent)session.get("user");
						 question.setParent(parent);
					 }
				}
				
		
		questionDao.saveOrUpdate(question);//锟斤拷锟斤拷锟斤拷锟斤拷息
		return QUESTION;//锟斤拷锟斤拷锟斤拷锟斤拷斜锟侥诧拷锟揭凤拷锟斤拷
	}
	/**
	 * 锟斤拷询锟斤拷锟�
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception{
		
		pageModel = questionDao.find(pageNo,pageSize);//执锟叫凤拷装锟侥诧拷询锟斤拷锟斤拷
		return LIST;//锟斤拷锟截猴拷台锟斤拷锟斤拷斜锟揭筹拷锟�
	}
	/**
	 * 锟洁辑锟斤拷锟�
	 * @return String
	 * @throws Exception
	 */
	public String edit() throws Exception{
		if(question.getId() != null && question.getId() > 0){
			this.question = questionDao.get(question.getId());
		}
		return EDIT;
	}
	/**
	 * 删锟斤拷锟斤拷锟�
	 * @return String
	 * @throws Exception
	 */
	public String del() throws Exception{
		if(question.getId() != null && question.getId() > 0){//锟叫讹拷锟角凤拷锟斤拷ID锟斤拷锟斤拷
			questionDao.delete(question.getId());//执锟斤拷删锟斤拷锟斤拷锟�
		}
		return list();//锟斤拷锟斤拷锟斤拷品锟斤拷锟斤拷斜锟侥诧拷锟揭凤拷锟斤拷
	}
	/**
	 * 查询消费者订单
	 * @return String
	 * @throws Exception
	 */
	public String findByVideo() throws Exception {
		String where = "where videoId = ?";
		Object[] queryParams = {question.getVideo().getId()};
		Map<String, String> orderby = new  HashMap<String,String>();
		orderby.put("id", "desc");
		pageModel = questionDao.find( where, queryParams,orderby,pageNo, pageSize);//执行查询方法
		return LIMITEDQUESTIONS;//返回书的页面
	}
	

	/**
	 * 查询消费者订单
	 * @return String
	 * @throws Exception
	 */
	public String findByName() throws Exception {
		String where = "where name = ?";
		Object[] queryParams = {question.getContent()};
		pageModel= questionDao.find(-1, -1, where, queryParams);//执行查询方法
		
		return QUESTIONS;//返回书的页面
	}
	
	// 锟斤拷锟斤拷锟斤拷锟�
	private PageModel<Question> pageModel;
	
	
	public PageModel<Question> getPageModel() {
		return pageModel;
	}
	public Question getQuestion() {
		return question;
	}
	
	public void setQuestion(Question question) {
		this.question = question;
	}

	
	
}
