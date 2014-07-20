package com.lqg.dao.user;

import com.lqg.dao.BaseDao;
import com.lqg.model.user.Student;

public interface StudentDao extends BaseDao<Student> {
	public Student login(String email, String password);
	public boolean isUnique(String email);
}
