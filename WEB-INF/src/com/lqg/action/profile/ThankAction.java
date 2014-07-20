package com.lqg.action.profile;

import java.util.Date;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lqg.action.BaseAction;
import com.lqg.model.PageModel;
import com.lqg.model.profile.Thank;
import com.lqg.util.StringUitl;
import com.opensymphony.xwork2.ModelDriven;
/**
 * 锟斤拷品Action
 * @author Li Qiuguo
 */
@Scope("prototype")
@Controller("thankAction")
public class ThankAction extends BaseAction implements ModelDriven<Thank>{
	private static final long serialVersionUID = 1L;
	private static final String THANK = "thank";
	/**
	 * 锟斤拷锟絠d锟介看锟斤拷品锟斤拷息(锟介看锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟�
	 * @return String
	 * @throws Exception
	 */
	public String select() throws Exception {
		if(thank.getId() != null && thank.getId() > 0){
			thank = thankDao.get(thank.getId());
			thankDao.update(thank);
		}
		return SELECT;
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷id锟斤拷询锟斤拷锟斤拷锟斤拷品锟斤拷息
	 * @return String
	 * @throws Exception
	 */
	public String getByVideoId() throws Exception{
		if(thank.getVideo().getId() != null){
			String where = "where videoId = ?";
			Object[] queryParams = {thank.getVideo().getId()};
			pageModel = thankDao.find(pageNo, pageSize, where, queryParams);
		}
		return LIST;
	}
		
	/**
	 * 锟斤拷锟斤拷锟狡�
	 */
	@Override
	public String add() throws Exception {
		
		return INPUT;
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷品
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception{
		if(thank.getVideo() != null && thank.getVideo().getId() != null){
			thank.setVideo(videoDao.load(thank.getVideo().getId()));
			thank.setCreateTime(new Date());			
		}		
		thankDao.saveOrUpdate(thank);//锟斤拷锟斤拷锟斤拷锟斤拷息
		
		return THANK;
	}
	/**
	 * 锟斤拷询锟斤拷品
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception{
		pageModel = thankDao.find(pageNo, pageSize);//锟斤拷锟矫癸拷锟斤拷锟侥诧拷询锟斤拷锟斤拷
		return LIST;//锟斤拷锟截猴拷台锟斤拷品锟叫憋拷页锟斤拷
	}
	/**
	 * 锟洁辑锟斤拷品
	 * @return String
	 * @throws Exception
	 */
	public String edit() throws Exception{
		this.thank = thankDao.get(thank.getId());//执锟叫凤拷装锟侥诧拷询锟斤拷锟斤拷
		return EDIT;//锟斤拷锟斤拷锟斤拷品锟斤拷息锟洁辑页锟斤拷
	}
	/**
	 * 删锟斤拷锟斤拷品
	 * @return String
	 * @throws Exception
	 */
	public String del() throws Exception{
		thankDao.delete(thank.getId());//执锟斤拷删锟斤拷锟斤拷锟�
		return list();//锟斤拷锟斤拷锟斤拷品锟叫憋拷锟斤拷曳锟斤拷锟�
	}
	
	/**
	 * 锟斤拷证锟斤拷品锟斤拷息锟角凤拷锟斤拷效
	 */
	public void validateSave() {
		if(!StringUitl.validateString(thank.getContent())){
			addFieldError("name", "锟斤拷品锟斤拷撇锟斤拷锟轿拷眨锟�");
		}
		
	}


	// 锟斤拷品锟斤拷锟斤拷
	private Thank thank = new Thank();
	// 锟斤拷页锟斤拷锟�
	private PageModel<Thank> pageModel;
	
	@Override
	public Thank getModel() {
		return thank;
	}
	public Thank getThank() {
		return thank;
	}
	public void setThank(Thank thank) {
		this.thank = thank;
	}
	public PageModel<Thank> getPageModel() {
		return pageModel;
	}
	public void setPageModel(PageModel<Thank> pageModel) {
		this.pageModel = pageModel;
	}
}
