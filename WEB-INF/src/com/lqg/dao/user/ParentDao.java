package com.lqg.dao.user;

import com.lqg.dao.BaseDao;
import com.lqg.model.user.Parent;

public interface ParentDao extends BaseDao<Parent> {
	public Parent login(String email, String password);
	public boolean isUnique(String email);
}
