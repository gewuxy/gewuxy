package com.lqg.dao.user;

import com.lqg.dao.BaseDao;
import com.lqg.model.user.Admin;

public interface AdminDao extends BaseDao<Admin> {
	public Admin login(String username, String password);
	public boolean isUnique(String username);
}
