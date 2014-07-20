package com.lqg.dao.product;

import org.springframework.stereotype.Repository;

import com.lqg.dao.DaoSupport;
import com.lqg.model.product.BookItem;
@Repository("bookItemDao")
public class BookItemDaoImpl extends DaoSupport<BookItem> implements BookItemDao {

}
