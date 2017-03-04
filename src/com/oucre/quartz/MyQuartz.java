package com.oucre.quartz;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.oucre.dao.StudentDao;
import com.oucre.pojo.Student;

public class MyQuartz {
	private Logger logger = Logger.getLogger(this.getClass());
	@Autowired
	private StudentDao studentDao;

	public void clearimgtemp() {
		try {
			List<Student> list = studentDao.findAllStudents();
			for (Student s : list) {
				// ���ͨ��״̬ ������ �Լ�ת�� ʱ������ת��ʱ�䵹��ʱ
				if ("2".equals(s.getStatus()) && "1".equals(s.getConver())) {
					int days = s.getDays() - 1;
					if (days == 0) {
						s.setConver("2");
					}
					s.setDays(days);
					studentDao.upd(s);
				}
			}
		} catch (Exception e) {
			logger.error(e);
			e.printStackTrace();
		}
	}
}
