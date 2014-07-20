package com.lqg.dao.product;

import com.lqg.dao.BaseDao;
import com.lqg.model.product.Book;

public interface BookDao extends BaseDao<Book> {
	
	public Book findByName(String name);

}
