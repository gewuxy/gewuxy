package com.lqg.dao.product;

import java.util.List;

import com.lqg.dao.BaseDao;
import com.lqg.model.product.Video;

public interface VideoDao extends BaseDao<Video>{
	public List<Video> findCommend();
	public List<Video> findBrowsedCount();
	public List<Video> findThankCount();
}
