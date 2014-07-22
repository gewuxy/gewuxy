package com.lqg.action.user;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lqg.action.BaseAction;
import com.lqg.model.user.Teacher;
import com.lqg.util.AppException;
import com.opensymphony.xwork2.ModelDriven;
/**
 * �˿�Action
 * @author Li Qiuguo
 */
@Scope("prototype")
@Controller("teacherAction")
public class TeacherAction extends BaseAction implements ModelDriven<Teacher>{
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
		boolean unique = teacherDao.isUnique(teacher.getEmail());//�ж��û����Ƿ����
		if(unique){//����û������
			teacherDao.save(teacher);//����ע����Ϣ
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
		Teacher loginTeacher = teacherDao.login(teacher.getEmail(), teacher.getPassword());
		if(loginTeacher != null){//���ͨ����֤
			session.put("teacher", loginTeacher);//����¼��Ա��Ϣ������Session��
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
	private Teacher teacher = new Teacher();
	// ȷ������
	private String repassword;
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	@Override
	public Teacher getModel() {
		return teacher;
	}
}
