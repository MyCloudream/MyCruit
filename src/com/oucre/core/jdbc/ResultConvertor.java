package com.oucre.core.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * <p>
 * ӳ��jdbc���ص��������͵��Զ������͵�ת����
 * @since 2015��1��9��
 * @author xiaofeng_zhang
 */
public interface ResultConvertor {

	/**
	 * �Զ���ת���߼�
	 * @param resultSet ���е�ǰ�����ݵ�ResultSet����
	 * @param rowIndex ��ǰʹ�õ�������
	 * @return
	 * @since 2015��1��9��
	 */
	public Object convert(ResultSet resultSet,int rowIndex) throws SQLException; 
}
