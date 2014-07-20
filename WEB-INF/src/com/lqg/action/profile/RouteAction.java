package com.lqg.action.profile;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lqg.action.BaseAction;
import com.lqg.model.PageModel;
import com.lqg.model.profile.Route;
import com.opensymphony.xwork2.ModelDriven;
/**
 * 锟斤拷品锟斤拷锟紸ction锟斤拷锟斤拷
 * @author Li Qiuguo
 *
 */
@Scope("prototype")
@Controller("routeAction")
public class RouteAction extends BaseAction implements ModelDriven<Route>{
	private static final long serialVersionUID = 1L;
	private static final String ROUTE = "route";
	private Route route = new Route();
	@Override
	public Route getModel() {
		return route;
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
		
		routeDao.saveOrUpdate(route);//锟斤拷锟斤拷锟斤拷锟斤拷息
		return list();//锟斤拷锟斤拷锟斤拷锟斤拷斜锟侥诧拷锟揭凤拷锟斤拷
	}
	/**
	 * 锟斤拷询锟斤拷锟�
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception{
		
		pageModel = routeDao.find(pageNo,pageSize);//执锟叫凤拷装锟侥诧拷询锟斤拷锟斤拷
		return LIST;//锟斤拷锟截猴拷台锟斤拷锟斤拷斜锟揭筹拷锟�
	}
	/**
	 * 锟洁辑锟斤拷锟�
	 * @return String
	 * @throws Exception
	 */
	public String edit() throws Exception{
		if(route.getId() != null && route.getId() > 0){
			this.route = routeDao.get(route.getId());
		}
		return EDIT;
	}
	/**
	 * 删锟斤拷锟斤拷锟�
	 * @return String
	 * @throws Exception
	 */
	public String del() throws Exception{
		if(route.getId() != null && route.getId() > 0){//锟叫讹拷锟角凤拷锟斤拷ID锟斤拷锟斤拷
			routeDao.delete(route.getId());//执锟斤拷删锟斤拷锟斤拷锟�
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
		Object[] queryParams = {route.getParent()};
		pageModel= routeDao.find(-1, -1, where, queryParams);//执行查询方法
		
		return ROUTE;//返回书的页面
	}
	
	
	// 锟斤拷锟斤拷锟斤拷锟�
	private PageModel<Route> pageModel;
	
	
	public PageModel<Route> getPageModel() {
		return pageModel;
	}
	public Route getRoute() {
		return route;
	}
	
	public void setRoute(Route route) {
		this.route = route;
	}
	
}
