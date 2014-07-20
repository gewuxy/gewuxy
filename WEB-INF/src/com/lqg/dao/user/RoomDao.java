package com.lqg.dao.user;

import com.lqg.dao.BaseDao;
import com.lqg.model.user.Room;

public interface RoomDao extends BaseDao<Room> {
	
	public Room findByName(String name);

}
