package com.oucre.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oucre.core.mode.json.AjaxJson;
import com.oucre.core.mode.module.ModelInfo;
import com.oucre.core.util.EncryptUtil;
import com.oucre.dao.ResourceDao;
import com.oucre.dao.RoleDao;
import com.oucre.dao.RoleResourceDao;
import com.oucre.dao.StudentDao;
import com.oucre.dao.UserDao;
import com.oucre.pojo.Resource;
import com.oucre.pojo.Role;
import com.oucre.pojo.Student;
import com.oucre.pojo.User;
import com.oucre.service.BusiCommonService;

@Service
public class BusiCommonServiceImpl implements BusiCommonService {
	private Logger logger = Logger.getLogger(this.getClass());

	@Autowired
	private RoleDao roleDao;

	@Autowired
	private RoleResourceDao roleResourceDao;

	@Autowired
	private ResourceDao resourceDao;

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private StudentDao studentDao;

	@Override
	public List<Role> findAllRole() {
		return roleDao.findAllRole();
	}

	@Override
	public List<Role> findAllRoleGroups(String groups) {
		return roleDao.findAllRoleGroups(groups);
	}

	@Override
	public boolean isResources(Integer roleid, String link) {
		try {
			List<Resource> r = resourceDao.isLink(roleid, link);
			if (r != null && r.size() > 0) {
				return true;
			}
			return false;
		} catch (Exception e) {
			logger.error("Service isResources �쳣", e);
			return false;
		}
	}

	@Override
	public List<Resource> getButton(Integer roleid, Integer superid) {
		try {
			return resourceDao.getButton(roleid, superid);
		} catch (Exception e) {
			logger.error("��Դ�쳣", e);
			return null;
		}
	}

	@Override
	public List<ModelInfo> getMenu(Integer roleid) {
		try {
			// ��ȡ��ɫ
			Role r = roleDao.findById(roleid);
			// �洢�����˵�
			List<ModelInfo> listModel = new ArrayList<ModelInfo>();
			// һ���˵�
			List<Resource> list = this.resourceDao.getModel(r.getId());
			for (int i = 0; i < list.size(); i++) {
				Resource resource = list.get(i);
				// �����˵�
				List<Resource> listMenu = this.resourceDao.getMenu(r.getId(),
						resource.getId());
				ModelInfo modelInfo = new ModelInfo();
				modelInfo.setId(resource.getId());
				modelInfo.setName(resource.getName());
				modelInfo.setLink(resource.getLink());
				modelInfo.setSubmenus(listMenu);
				// һ�����˵�
				listModel.add(modelInfo);
			}
			return listModel;
		} catch (Exception e) {
			logger.error("��Դ�쳣", e);
			return null;
		}
	}

	@Override
	public AjaxJson updUserPassword(String passworda, String paswrod, Object obj) {
		AjaxJson a = new AjaxJson();
		if (obj != null) {
			User user = (User) obj;
			User u = userDao.findById(user.getId());
			if (u != null) {
				if (u.getPassword().equals(EncryptUtil.getMD5(passworda))) {
					if (!u.getPassword().equals(EncryptUtil.getMD5(paswrod))) {
						u.setPassword(EncryptUtil.getMD5(paswrod));
						if (userDao.upd(u)) {
							a.setMsg("������³ɹ�,����ע�����µ�¼,����������.");
							a.setSuccess(true);
							a.setObj(u);
						}
					} else {
						a.setMsg("�����벻�ܺ;�������ͬ");
						a.setSuccess(false);
					}
				} else {
					a.setMsg("�������������");
					a.setSuccess(false);
				}
			} else {
				a.setMsg("��������");
				a.setSuccess(false);
			}
		} else {
			a.setMsg("�������������");
			a.setSuccess(false);
		}
		return a;
	}

	@Override
	public AjaxJson updUser(String username, Object obj) {
		AjaxJson a = new AjaxJson();
		if (obj != null) {
			User u = (User) obj;
			User user = userDao.findById(u.getId());
			if (user != null) {
				if (!user.getUsername().equals(username)) {
					user.setUsername(username);
					if (userDao.upd(user)) {
						a.setMsg("��Ϣ�޸ĳɹ�");
						a.setSuccess(true);
						a.setObj(user);
					}
				} else {
					a.setMsg("δ�޸��κ�����");
					a.setSuccess(false);
				}
			} else {
				a.setMsg("��������");
				a.setSuccess(false);
			}
		}
		return a;
	}

	@Override
	public List<User> findAllUsers() {
		return userDao.findAllUsers();
	}
	
	@Override
	public Student findStudentByQQ(String qq){
		return studentDao.findStudentByQQ(qq);
	}
}
