package com.lqg.dao;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.Map;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import com.lqg.model.product.BookItem;
import com.lqg.model.PageModel;
/**
 * 锟斤拷锟斤拷锟斤拷
 * @author CHUNBIN
 *
 */
public class DaoSupportTest {
	 
	private DaoSupport<BookItem> daoSupport;//DAO
	@Before
	public void setUp() throws Exception {//锟斤拷始锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷执锟叫的凤拷锟斤拷
		
		daoSupport=new DaoSupport<BookItem>(); 
	}
	@After
	public void tearDown() throws Exception {//锟斤拷锟�锟斤拷锟斤拷锟斤拷锟街达拷械姆锟斤拷锟�
		
		daoSupport=null;//锟斤拷俣锟斤拷锟�
	}
	@Test
	public void testFindIntInt() {
		Map<String, String> orderby = new HashMap<String, String>(1);//锟斤拷锟斤拷Map锟斤拷锟斤拷
		//orderby.put("createTime", "desc");//锟斤拷锟矫帮拷锟斤拷锟斤拷时锟戒倒锟斤拷锟斤拷锟斤拷
		PageModel<BookItem> pageModel = daoSupport.find(1, 3);//执锟叫诧拷询锟斤拷锟斤拷
		assertNotNull("锟睫凤拷锟斤拷取锟斤拷荩锟�",pageModel);//锟叫讹拷find()锟斤拷锟斤拷锟角凤拷晒锟斤拷锟窖拷锟街�
	}
}
