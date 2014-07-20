package com.lqg.dao.user;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lqg.dao.DaoSupport;
import com.lqg.model.user.Room;
@Repository("roomDao")
public class RoomDaoImpl extends DaoSupport<Room> implements RoomDao {
	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public Room findByName(String name) {
		String where = "where name = ?";
		Object[] queryParams = {name};
		List<Room> list = find(-1, -1, where, queryParams).getList();
		return list.get(0);
	}

}
