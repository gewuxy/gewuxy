package com.lqg.action.user;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lqg.action.BaseAction;
import com.lqg.model.user.Admin;
import com.opensymphony.xwork2.ModelDriven;
/**
 * 用户Action
 * @author Li Qiuguo
 */
@Scope("prototype")
@Controller("adminAction")
public class AdminAction extends BaseAction implements ModelDriven<Admin>{
	private static final long serialVersionUID = 1L;
	public String login() throws Exception{
		return ADMIN_LOGIN;
	}
	/**
	 * 登录 
	 * @return
	 * @throws Exception
	 */
	public String logon() throws Exception{
		//验证用户名和密码
		Admin loginAdmin = adminDao.login(admin.getUsername(), admin.getPassword());
		if(loginAdmin != null){//通过验证
			session.put("admin", loginAdmin);//将管理员信息保存在Session对象中
		}else{
			addFieldError("", "用户名或密码不正确！");//返回错误提示信息
			return ADMIN_LOGIN;//返回后台登录页面
		}
		return MANAGER;//返回后台管理页面
	}
	/**
	 * 退出
	 * @return String
	 * @throws Exception
	 */
	public String logout() throws Exception{
		if(session != null && session.size() > 0){
			session.clear();
		}
		return INDEX;
	}
	// 用户对象
	private Admin admin = new Admin();
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	@Override
	public Admin getModel() {
		return admin;
	}
}
