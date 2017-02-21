package com.oucre.dao;

import java.util.List;

import com.oucre.core.dao.BaseDao;
import com.oucre.pojo.RoleResource;

public interface RoleResourceDao extends BaseDao<RoleResource> {
	/**
	 * �жϽ�ɫ��û�и���Դ
	 * 
	 * @date 2015��4��8�� ����11:14:24
	 * @author haoli_jun
	 * @param roleid
	 * @param resourceid
	 * @return
	 */
	public boolean findRoleResource(Integer roleid, Integer resourceid);

	/**
	 * ���ݽ�ɫ��ѯȫ����Դ
	 * 
	 * @date 2015��4��8�� ����11:14:14
	 * @author haoli_jun
	 * @param roleid
	 * @return
	 */
	public List<RoleResource> findRoleResourceList(Integer roleid);

	/**
	 * ��IDɾ��
	 * 
	 * @date 2015��4��8�� ����4:51:56
	 * @author haoli_jun
	 * @param entitys
	 * @return
	 */

	public boolean dels(List<RoleResource> entitys);

	/**
	 * ��������
	 * 
	 * @date 2015��4��8�� ����4:59:36
	 * @author haoli_jun
	 * @param entitys
	 * @return
	 */
	public boolean adds(List<RoleResource> entitys);

}
