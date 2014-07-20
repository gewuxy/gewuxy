package com.lqg.dao;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.SessionFactoryUtils;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lqg.model.PageModel;
import com.lqg.util.GenericsUtils;
/**
 * Dao支锟斤拷锟斤拷
 * @author Li Qiuguo
 * @param <T>
 */
@Transactional
@SuppressWarnings("unchecked")
public class DaoSupport<T>  implements BaseDao<T>{
	// 锟斤拷锟酵碉拷锟斤拷锟斤拷
	protected Class<T> entityClass = GenericsUtils.getGenericType(this.getClass());
	// Hibernate模锟斤拷
	@Autowired
	protected HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getTemplate() {
		return hibernateTemplate;
	}
	@Override
	public void delete(Serializable ... ids) {
		for (Serializable id : ids) {
			T t = (T) getTemplate().load(this.entityClass, id);
			getTemplate().delete(t);
		}
	}
	/**
	 * 锟斤拷锟斤拷get()锟斤拷锟斤拷锟斤拷锟截讹拷锟襟，伙拷取锟斤拷锟斤拷锟斤拷锟较革拷锟较�
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public T get(Serializable entityId) {
		return (T) getTemplate().get(this.entityClass, entityId);
	}
	/**
	 * 锟斤拷锟斤拷load()锟斤拷锟斤拷锟斤拷锟截讹拷锟襟，伙拷取锟斤拷锟斤拷锟斤拷锟较革拷锟较�
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public T load(Serializable entityId) {
		return (T) getTemplate().load(this.entityClass, entityId);
	}
	/**
	 * 锟斤拷锟斤拷hql锟斤拷锟斤拷锟揭碉拷锟斤拷锟斤拷息
	 */
	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public Object uniqueResult(final String hql,final Object[] queryParams) {
		return getTemplate().execute(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				Query query = session.createQuery(hql);//执锟叫诧拷询
				setQueryParams(query, queryParams);//锟斤拷锟矫诧拷询锟斤拷锟斤拷
				return query.uniqueResult();
			}
		});
	}
	/**
	 * 锟斤拷取指锟斤拷锟斤拷锟斤拷锟斤拷锟较拷锟斤拷锟�
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public long getCount() {
		String hql = "select count(*) from " + GenericsUtils.getGenericName(this.entityClass);
		return (Long)uniqueResult(hql,null);
	}
	/**
	 * 锟斤拷锟斤拷save()锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷细锟斤拷息
	 */
	@Override
	public void save(Object obj) {
		getTemplate().save(obj);
		getTemplate().flush();
	}
	@Override
	public void saveOrUpdate(Object obj) {
		getTemplate().saveOrUpdate(obj);
		getTemplate().flush();
	}
	/**
	 * 锟斤拷锟斤拷update()锟斤拷锟斤拷锟睫改讹拷锟斤拷锟斤拷锟较革拷锟较�
	 */
	@Override
	public void update(Object obj) {
		getTemplate().update(obj);
		getTemplate().flush();
	}
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public PageModel<T> find(final int pageNo, int maxResult) {
		return find(null, null, null, pageNo, maxResult);
	}
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public PageModel<T> find(int pageNo, int maxResult,
			Map<String, String> orderby) {
		return find(null, null, orderby, pageNo, maxResult);
	}
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public PageModel<T> find(int pageNo, int maxResult, String where,
			Object[] queryParams) {
		return find(where, queryParams, null, pageNo, maxResult);
	}
	/**
	 * 锟斤拷页锟斤拷询
	 * @param where 锟斤拷询锟斤拷锟斤拷
	 * @param queryParams hql锟斤拷锟斤拷值
	 * @param orderby 锟斤拷锟斤拷
	 * @param pageNo 锟节硷拷页
	 * @param maxResult 锟斤拷锟截硷拷录锟斤拷锟斤拷
	 * return PageModel
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED,readOnly=true)
	public PageModel<T> find(final String where, final Object[] queryParams,
			final Map<String, String> orderby, final int pageNo,
			final int maxResult) {
		final PageModel<T> pageModel = new PageModel<T>();//实锟斤拷锟揭筹拷锟斤拷锟�
		pageModel.setPageNo(pageNo);//锟斤拷锟矫碉拷前页锟斤拷
		pageModel.setPageSize(maxResult);//锟斤拷锟斤拷每页锟斤拷示锟斤拷录锟斤拷
		getTemplate().execute(new HibernateCallback() {//执锟斤拷锟节诧拷锟斤拷锟斤拷
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = new StringBuffer().append("from ")//锟斤拷锟絝orm锟街讹拷
								.append(GenericsUtils.getGenericName(entityClass))//锟斤拷佣锟斤拷锟斤拷锟斤拷锟�
								.append(" ")//锟斤拷涌崭锟�
								.append(where == null ? "" : where)//锟斤拷锟絯here为null锟斤拷锟斤拷涌崭锟�锟斤拷之锟斤拷锟絯here
								.append(createOrderBy(orderby))//锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟�
								.toString();//转锟斤拷为锟街凤拷
				Query query = session.createQuery(hql);//执锟叫诧拷询
				setQueryParams(query,queryParams);//为锟斤拷锟斤拷值
				List<T> list = null;//锟斤拷锟斤拷List锟斤拷锟斤拷
				// 锟斤拷锟絤axResult<0锟斤拷锟斤拷锟窖拷锟斤拷锟�
				if(maxResult < 0 && pageNo < 0){
					list = query.list();//锟斤拷锟斤拷询锟斤拷锟阶拷锟轿狶ist锟斤拷锟斤拷
				}else{
					list = query.setFirstResult(getFirstResult(pageNo, maxResult))//锟斤拷锟矫凤拷页锟斤拷始位锟斤拷
								.setMaxResults(maxResult)//锟斤拷锟斤拷每页锟斤拷示锟侥硷拷录锟斤拷
								.list();//锟斤拷锟斤拷询锟斤拷锟阶拷锟轿狶ist锟斤拷锟斤拷
					//锟斤拷锟斤拷锟窖拷芗锟铰硷拷锟斤拷hql锟斤拷锟�
					hql = new StringBuffer().append("select count(*) from ")//锟斤拷锟絟ql锟斤拷锟�
									.append(GenericsUtils.getGenericName(entityClass))//锟斤拷佣锟斤拷锟斤拷锟斤拷锟�
									.append(" ")//锟斤拷涌崭锟�
									.append(where == null ? "" : where)//锟斤拷锟絯here为null锟斤拷锟斤拷涌崭锟�锟斤拷之锟斤拷锟絯here
									.toString();//转锟斤拷为锟街凤拷
					query = session.createQuery(hql);//执锟叫诧拷询
					setQueryParams(query,queryParams);//锟斤拷锟斤拷hql锟斤拷锟斤拷
					int totalRecords = ((Long) query.uniqueResult()).intValue();//锟斤拷锟斤拷转锟斤拷
					pageModel.setTotalRecords(totalRecords);//锟斤拷锟斤拷锟杰硷拷录锟斤拷
				}
				pageModel.setList(list);//锟斤拷锟斤拷询锟斤拷list锟斤拷锟斤拷锟斤拷锟绞碉拷锟斤拷锟斤拷锟斤拷
				return null;
			}
		});
		return pageModel;//锟斤拷锟截凤拷页锟斤拷实锟斤拷锟斤拷锟�
	}
	/**
	 * 锟斤拷取锟斤拷页锟斤拷询锟叫斤拷锟斤拷锟斤拷始位锟斤拷
	 * @param pageNo 锟节硷拷页
	 * @param maxResult 页锟斤拷锟斤拷示锟侥硷拷录锟斤拷
	 * @return 锟斤拷始位锟斤拷
	 */
	protected int getFirstResult(int pageNo,int maxResult){
		int firstResult = (pageNo-1) * maxResult;
		return firstResult < 0 ? 0 : firstResult;
	}
	/**
	 * 锟斤拷query锟叫的诧拷锟斤拷值
	 * @param query
	 * @param queryParams
	 */
	protected void setQueryParams(Query query, Object[] queryParams){
		if(queryParams!=null && queryParams.length>0){
			for(int i=0; i<queryParams.length; i++){
				query.setParameter(i, queryParams[i]);
			}
		}
	}
	/**
	 * 锟斤拷锟斤拷锟斤拷锟斤拷hql锟斤拷锟�
	 * @param orderby
	 * @return 锟斤拷锟斤拷锟街凤拷
	 */
	protected String createOrderBy(Map<String, String> orderby){
		StringBuffer sb = new StringBuffer("");
		if(orderby != null && orderby.size() > 0){
			sb.append(" order by ");
			for(String key : orderby.keySet()){
				sb.append(key).append(" ").append(orderby.get(key)).append(",");
			}
			sb.deleteCharAt(sb.length() - 1);
		}
		return sb.toString();
	}
	/**
	 * 锟斤拷取Session锟斤拷锟斤拷
	 * @return
	 */
	protected Session getSession(){
		return (!this.hibernateTemplate.isAllowCreate() ?
		    SessionFactoryUtils.getSession(this.hibernateTemplate.getSessionFactory(), false) :
				SessionFactoryUtils.getSession(
						this.hibernateTemplate.getSessionFactory(),
						this.hibernateTemplate.getEntityInterceptor(),
						this.hibernateTemplate.getJdbcExceptionTranslator()));
	}
}
