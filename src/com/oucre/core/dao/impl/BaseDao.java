package com.oucre.core.dao.impl;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 * ��dao����������base��
 * 
 * @date 2015��5��25�� ����2:03:53
 */
@SuppressWarnings("unchecked")
public class BaseDao<T> {

	/**
	 * ��ʼ��Log4j��һ��ʵ��
	 */
	private static final Logger logger = Logger.getLogger(BaseDao.class);

	protected String hql = "";

	protected String sql = "";

	@Autowired
	@Qualifier("jdbcTemplate")
	protected JdbcTemplate jdbcTemplate;

	@Autowired
	@Qualifier("sessionFactory")
	protected SessionFactory sessionFactory;

	public Session getSession() {
		// ��������ǿ�����(Required)�������ȡ����
		return sessionFactory.getCurrentSession();
	}

	/**
	 * ����ʵ�����
	 * 
	 * @param entity
	 * @return
	 */
	public Serializable saveEntity(T entity) {
		try {
			Serializable id = getSession().save(entity);
			getSession().flush();
			return id;
		} catch (RuntimeException e) {
			logger.error("����ʵ���쳣", e);
			throw e;
		}
	}

	/**
	 * ���� ʵ�����
	 * 
	 * @param entity
	 */
	public void updateEntity(T entity) {
		try {
			getSession().update(entity);
			getSession().flush();
		} catch (RuntimeException e) {
			logger.error("����ʵ���쳣", e);
			throw e;
		}
	}

	/**
	 * 
	 * @param entity
	 */
	public void deleteEntity(T entity) {
		try {
			getSession().delete(entity);
			getSession().flush();
		} catch (RuntimeException e) {
			logger.error("ɾ��ʵ���쳣", e);
			throw e;
		}
	}

	/**
	 * Hql��ѯ
	 * 
	 * @param hql
	 * @return
	 */
	public List<T> findHql(String hql) {
		Query q = getSession().createQuery(hql);
		return q.list();
	}

	public <T> List<T> findHql(String hql, Object... param) {
		Query q = getSession().createQuery(hql);
		if (param != null && param.length > 0) {
			for (int i = 0; i < param.length; i++) {
				q.setParameter(i, param[i]);
			}
		}
		return q.list();
	}

	/**
	 * ʹ��sql ��ѯ
	 * 
	 * @param sql
	 * @return
	 */
	public List<T> findSql(String sql) {
		Query q = getSession().createSQLQuery(sql);
		return q.list();
	}

	/**
	 * ���� ID��ѯ ��Ӧʵ��
	 * 
	 * @param entityClass
	 * @param id
	 * @return
	 */
	public T get(Class<T> entityClass, Integer id) {
		T t = (T) getSession().get(entityClass, id);
		getSession().clear();
		return t;
	}

	/**
	 * ���ݴ����ʵ����ӻ���¶���
	 * 
	 * @param <T>
	 * 
	 * @param entity
	 */

	public void saveOrUpdate(T entity) {
		try {
			getSession().saveOrUpdate(entity);
			getSession().flush();
		} catch (RuntimeException e) {
			logger.error("saveOrUpdate�쳣", e);
			throw e;
		}
	}

	/**
	 * ����������
	 * 
	 * @param entitys
	 */
	public void saveAll(List<T> entitys) {
		for (int i = 0; i < entitys.size(); i++) {
			getSession().save(entitys.get(i));
			if (i % 20 == 0) {
				// 20�������������棬д�����ݿ�
				getSession().flush();
				getSession().clear();
			}
		}
		// �������һ��----��ֹ����20С��40�Ĳ�����
		getSession().flush();
		getSession().clear();
	}

	/**
	 * �������ɾ��
	 * 
	 * @param entitys
	 */
	public void deleteAll(List<T> entitys) {
		for (Object entity : entitys) {
			getSession().delete(entity);
			getSession().flush();
		}
	}

	public Integer findByHqlForPageCount(final String sql,
			final Integer pageSize) {
		Query query = getSession().createSQLQuery(sql);
		System.out.println(query.uniqueResult()
				+ "-------------------------------------");
		BigInteger totalBig = (BigInteger) query.uniqueResult();
		Integer total = totalBig.intValue();
		Integer pageNumber = 0;
		if (total % pageSize == 0) {
			pageNumber = total / pageSize;
		} else {
			pageNumber = total / pageSize + 1;
		}
		return pageNumber;
	}

	public List<?> findSqlByPager(final String sql, final Integer FirstResult,
			final Integer MaxResults) {
		Query query = getSession().createSQLQuery(sql);
		query.setFirstResult(FirstResult);
		query.setMaxResults(MaxResults);
		return query.list();
	}

	public List<T> findHqlByPager(final String hql, final Integer FirstResult,
			final Integer MaxResults) {
		Query query = getSession().createQuery(hql);
		query.setFirstResult(FirstResult);
		query.setMaxResults(MaxResults);
		return query.list();
	}

	public Integer findByHqlForPageCountEasyUi(final String queryString) {
		Query query = getSession().createSQLQuery(queryString);
		Object o = query.uniqueResult();
		return Integer.parseInt(o.toString());
	}
}
