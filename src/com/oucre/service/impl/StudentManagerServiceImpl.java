package com.oucre.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oucre.core.mode.json.AjaxJson;
import com.oucre.core.mode.search.EasyUiPager;
import com.oucre.core.util.ValidateUtil;
import com.oucre.dao.StudentDao;
import com.oucre.pojo.Student;
import com.oucre.pojo.User;
import com.oucre.service.StudentManagerService;

@Service
public class StudentManagerServiceImpl implements StudentManagerService{

	@Autowired
	private StudentDao studentDao;
	
	@Override
	public Map<String, Object> findStudentSearch(Map<String, Object> map, EasyUiPager easyUiPager,User user) {
		if(user!=null){
			map.put("uid", user.getId());
			return studentDao.findStudentSearch(map, easyUiPager);
		}
		return null;
	}

	@Override
	public AjaxJson updStudent(Student student,User user) {
		AjaxJson a = new AjaxJson();
		if (studentDao.upd(student)) {
			a.setSuccess(true);
			a.setMsg("操作成功");
		}
		return a;
	}

	@Override
	public AjaxJson addStudent(Student student,User user) {
		AjaxJson a = new AjaxJson();
		if(user!=null){
			student.setUid(user.getId());
			if (studentDao.add(student) > 0) {
				a.setSuccess(true);
				a.setMsg("操作成功");
			} else {
				a.setSuccess(false);
			}
		}
		return a;
	}

	@Override
	public AjaxJson delStudent(Integer id,User user) {
		AjaxJson a = new AjaxJson();
		if (ValidateUtil.isInt(id+"")) {
			if (studentDao.del(id)) {
				a.setSuccess(true);
				a.setMsg("操作成功");
			} else {
				a.setSuccess(true);
				a.setMsg("操作成功");
			}
		} else {
			a.setSuccess(true);
			a.setMsg("操作成功");
		}
		return a;
	}

}
