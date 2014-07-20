package com.lqg.dao.user;

import com.lqg.dao.BaseDao;
import com.lqg.model.user.Teacher;

public interface TeacherDao extends BaseDao<Teacher> {
	public Teacher login(String email, String password);
	public boolean isUnique(String email);
}
