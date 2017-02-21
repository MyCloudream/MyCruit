package com.oucre.service;

import java.util.Map;

import com.oucre.core.mode.json.AjaxJson;
import com.oucre.core.mode.search.EasyUiPager;
import com.oucre.pojo.Student;
import com.oucre.pojo.User;

public interface StudentManagerService {
	Map<String, Object> findStudentSearch(Map<String, Object> map,
			EasyUiPager easyUiPager, User user);

	AjaxJson updStudent(Student student, User user);

	AjaxJson addStudent(Student student, User user);

	AjaxJson delStudent(Integer id, User user);
}
