package com.lqg.dao.user;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lqg.dao.DaoSupport;
import com.lqg.model.user.Student;

@Repository("studentDao")
@Transactional
public class StudentDaoImpl extends DaoSupport<Student> implements StudentDao {

	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public Student login(String email, String password) {
		if(email != null && password != null){//����û�������벻Ϊ��
			String where = "where email=? and password=?";//���ò�ѯ����
			Object[] queryParams = {email,password};//���ò����������
			List<Student> list = find(-1, -1, where, queryParams).getList();//ִ�в�ѯ����
			if(list != null && list.size() > 0){//���list���ϲ�Ϊ��
				return list.get(0);//����List�еĵ�һ���洢����
			}
		}
		return null;//���ؿ�ֵ
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public boolean isUnique(String email) {
		List list = getTemplate().find("from Student where email= ?", email);
		if(list != null && list.size() > 0){
			return false;
		}
		return true;
	}
	
	
}
