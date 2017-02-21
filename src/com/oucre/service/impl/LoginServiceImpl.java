package com.oucre.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oucre.dao.RoleDao;
import com.oucre.dao.UserDao;
import com.oucre.pojo.Role;
import com.oucre.pojo.User;
import com.oucre.service.LoginService;

@Service
@Transactional
public class LoginServiceImpl implements LoginService {

	private Logger logger = Logger.getLogger(this.getClass());
	@Autowired
	private UserDao userDao;
	@Autowired
	private RoleDao roleDao;

	@Override
	public Map<String, Object> loginUser(String name, String password) {
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			User u = userDao.loginUser(name, password);
			if (u != null) {
				if (u.getStatus().equals("Y")) {
					map.put("success", "Y");
					map.put("msg", "�ɹ�");
					map.put("user", u);
					Role r = roleDao.findById(u.getRoleid());
					if (r != null) {
						map.put("role", r);
					}
				} else {
					map.put("success", "N");
					map.put("msg", "�û��ѱ�����");
				}
			} else {
				map.put("success", "N");
				map.put("msg", "�ʺŻ����벻����");
			}
			return map;
		} catch (Exception e) {
			logger.error("��¼�쳣", e);
			return null;
		}
	}
}
