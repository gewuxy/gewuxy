package com.lqg.action.user;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lqg.action.BaseAction;
import com.lqg.model.user.Parent;
import com.lqg.util.AppException;
import com.opensymphony.xwork2.ModelDriven;
/**
 * �˿�Action
 * @author Li Qiuguo
 */
@Scope("prototype")
@Controller("parentAction")
public class ParentAction extends BaseAction implements ModelDriven<Parent>{
	private static final long serialVersionUID = 1L;
	public String login() throws Exception{
		return USER_LOGIN;
	}
	/**
	 * �û�ע��
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception{
		boolean unique = parentDao.isUnique(parent.getEmail());//�ж��û����Ƿ����
		if(unique){//����û������
			parentDao.save(parent);//����ע����Ϣ
			return USER_LOGIN;//���ػ�Ա��¼ҳ��
		}else{
			throw new AppException("���û������");//���򷵻�ҳ�������Ϣ
		}
	}
	/**
	 * �û���¼ 
	 * @return
	 * @throws Exception
	 */
	public String logon() throws Exception{
		//��֤�û���������Ƿ���ȷ
		Parent loginParent = parentDao.login(parent.getEmail(), parent.getPassword());
		if(loginParent != null){//���ͨ����֤
			session.put("parent", loginParent);//����¼��Ա��Ϣ������Session��
		}else{//��֤ʧ��
			addFieldError("", "�û�������벻��ȷ��");//���ش�����Ϣ
			return USER_LOGIN;//���ػ�Ա��¼ҳ��
		}
		return INDEX;//������վ��ҳ
	}
	/**
	 * �û��˳�
	 * @return String
	 * @throws Exception
	 */
	public String logout() throws Exception{
		if(session != null && session.size() > 0){
			session.clear();
		}
		return INDEX;
	}
	// ����Ա
	private Parent parent = new Parent();
	// ȷ������
	private String repassword;
	public Parent getParent() {
		return parent;
	}
	public void setParent(Parent parent) {
		this.parent = parent;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	@Override
	public Parent getModel() {
		return parent;
	}
}
