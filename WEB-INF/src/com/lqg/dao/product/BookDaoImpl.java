package com.lqg.dao.product;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lqg.dao.DaoSupport;
import com.lqg.model.product.Book;
@Repository("bookDao")
public class BookDaoImpl extends DaoSupport<Book> implements BookDao {
	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public Book findByName(String name) {
		String where = "where name = ?";
		Object[] queryParams = {name};
		List<Book> list = find(-1, -1, where, queryParams).getList();
		return list.get(0);
	}

}
