package com.oucre.dao;

import java.util.List;
import java.util.Map;

import com.oucre.core.dao.BaseDao;
import com.oucre.core.mode.search.EasyUiPager;
import com.oucre.pojo.Student;
import com.oucre.pojo.User;

public interface StudentDao extends BaseDao<Student>{
	/**
	 * ��������ҳ��ѯѧ������
	 * @param map
	 * @param easyUiPager
	 * @return
	 */
	Map<String,Object> findStudentSearch(Map<String,Object> map,EasyUiPager easyUiPager);
	
	/**
	 * ��ѯȫ��
	 * @return
	 */
	List<Student> findAllStudents();
}
