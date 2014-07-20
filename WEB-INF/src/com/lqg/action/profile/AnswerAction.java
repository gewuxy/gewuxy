package com.lqg.action.profile;

import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lqg.action.BaseAction;
import com.lqg.model.PageModel;
import com.lqg.model.profile.Answer;
import com.opensymphony.xwork2.ModelDriven;
/**
 * 锟斤拷品锟斤拷锟紸ction锟斤拷锟斤拷
 * @author Li Qiuguo
 *
 */
@Scope("prototype")
@Controller("answerAction")
public class AnswerAction extends BaseAction implements ModelDriven<Answer>{
	private static final long serialVersionUID = 1L;
	private static final String ANSWER = "answer";
	private static final String SAVEANSWER = "saveAnswer";
	private Answer answer = new Answer();
	@Override
	public Answer getModel() {
		return answer;
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
		if(answer.getQuestion() != null && answer.getQuestion().getId() != null){
			answer.setQuestion(questionDao.load(answer.getQuestion().getId()));
			answer.setCreateTime(new Date());
			
		}
		
		answerDao.saveOrUpdate(answer);//锟斤拷锟斤拷锟斤拷锟斤拷息
		return SAVEANSWER;//锟斤拷锟斤拷锟斤拷锟斤拷斜锟侥诧拷锟揭凤拷锟斤拷
	}
	/**
	 * 锟斤拷询锟斤拷锟�
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception{
		
		pageModel = answerDao.find(pageNo,pageSize);//执锟叫凤拷装锟侥诧拷询锟斤拷锟斤拷
		return LIST;//锟斤拷锟截猴拷台锟斤拷锟斤拷斜锟揭筹拷锟�
	}
	/**
	 * 锟洁辑锟斤拷锟�
	 * @return String
	 * @throws Exception
	 */
	public String edit() throws Exception{
		if(answer.getId() != null && answer.getId() > 0){
			this.answer = answerDao.get(answer.getId());
		}
		return EDIT;
	}
	/**
	 * 删锟斤拷锟斤拷锟�
	 * @return String
	 * @throws Exception
	 */
	public String del() throws Exception{
		if(answer.getId() != null && answer.getId() > 0){//锟叫讹拷锟角凤拷锟斤拷ID锟斤拷锟斤拷
			answerDao.delete(answer.getId());//执锟斤拷删锟斤拷锟斤拷锟�
		}
		return list();//锟斤拷锟斤拷锟斤拷品锟斤拷锟斤拷斜锟侥诧拷锟揭凤拷锟斤拷
	}
	/**
	 * 查询消费者订单
	 * @return String
	 * @throws Exception
	 */
	public String findByName() throws Exception {
		String where = "where name = ?";
		Object[] queryParams = {answer.getContent()};
		pageModel= answerDao.find(-1, -1, where, queryParams);//执行查询方法
		
		return ANSWER;//返回书的页面
	}
	
	
	// 锟斤拷锟斤拷锟斤拷锟�
	private PageModel<Answer> pageModel;
	
	
	public PageModel<Answer> getPageModel() {
		return pageModel;
	}
	public Answer getAnswer() {
		return answer;
	}
	
	public void setAnswer(Answer answer) {
		this.answer = answer;
	}
	
}
