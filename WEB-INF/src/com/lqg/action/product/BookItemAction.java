package com.lqg.action.product;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lqg.action.BaseAction;
import com.lqg.model.PageModel;
import com.lqg.model.product.BookItem;
import com.opensymphony.xwork2.ModelDriven;
/**
 * ��Ʒ���Action����
 * @author Li Qiuguo
 *
 */
@Scope("prototype")
@Controller("bookItemAction")
public class BookItemAction extends BaseAction implements ModelDriven<BookItem>{
	private static final long serialVersionUID = 1L;
	private static final String SECTIONS = "sections";
	private BookItem bookItem = new BookItem();
	
	
	@Override
	public BookItem getModel() {
		return bookItem;
	}
	
	@Override
	public String add() throws Exception {
		if(pid != null && pid > 0 ){
			BookItem parent = bookItemDao.load(pid);
			// ��μ�1
			bookItem.setLevel(parent.getLevel() + 1);
		}
		return INPUT;
	}
	/**
	 * ������
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception{
		if(pid != null && pid > 0 ){//����и��ڵ�
			bookItem.setParent(bookItemDao.load(pid));//�����丸�ڵ�
		}
		bookItemDao.saveOrUpdate(bookItem);//��������Ϣ
		return list();//��������б�Ĳ��ҷ���
	}
	/**
	 * ��ѯ���
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception{
		Object[] params = null;//��������Ϊ��
		String where;//��ѯ��������
		if(pid != null && pid > 0 ){//����и��ڵ�
			where = "where parent.id =?";//ִ�в�ѯ����
			params = new Integer[]{pid};//���ò���ֵ
		}else{
			where = "where parent is null";//��ѯ��ڵ�
		}
		pageModel = bookItemDao.find(pageNo,pageSize,where,params);//ִ�з�װ�Ĳ�ѯ����
		return LIST;//���غ�̨����б�ҳ��
	}
	/**
	 * �༭���
	 * @return String
	 * @throws Exception
	 */
	public String edit() throws Exception{
		if(bookItem.getId() != null && bookItem.getId() > 0){
			this.bookItem = bookItemDao.get(bookItem.getId());
		}
		return EDIT;
	}
	/**
	 * ɾ�����
	 * @return String
	 * @throws Exception
	 */
	public String del() throws Exception{
		if(bookItem.getId() != null && bookItem.getId() > 0){//�ж��Ƿ���ID����
			bookItemDao.delete(bookItem.getId());//ִ��ɾ�����
		}
		return list();//������Ʒ����б�Ĳ��ҷ���
	}
	public String findByBook() throws Exception{
			
		 String where = "where  book.id =? and level =?";//ִ�в�ѯ����
		 Object[] params = new Integer[]{bookId,1};//���ò���ֵ
		
		pageModel = bookItemDao.find(pageNo,pageSize,where,params);//ִ�з�װ�Ĳ�ѯ����
		return SECTIONS;//���غ�̨����б�ҳ��
	}
	
	public String select() throws Exception {
		if(bookItem.getId() != null && bookItem.getId() > 0){
			bookItem = bookItemDao.get(bookItem.getId());
		}
		return SELECT;
	}
	
	
	// �����id
	private Integer pid;
	// �������
	private Integer bookId;
	private PageModel<BookItem> pageModel;
	
	public Integer getBookId() {
		return bookId;
	}
	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public PageModel<BookItem> getPageModel() {
		return pageModel;
	}
	public BookItem getBookItem() {
		return bookItem;
	}
	public void setBookItem(BookItem bookItem) {
		this.bookItem = bookItem;
	}
}
